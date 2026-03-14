`jupyter nbconvert --to html --TemplateExporter.exclude_input=True --no-prompt --no-input ~/ocpm/notebooks/oyh_depo-nan-as-dtc.ipynb --output ~/ocpm/reports/2020-06-17_dtc-investigation.html`

In order to ensure that plotly diagrams show up use this to display the figure

`py.iplot(fig)`

```python
import plotly.offline as py
py.init_notebook_mode(connected=True)
...
py.iplot(fig)
```

```jsx
import nbformat
from nbconvert.preprocessors import ExecutePreprocessor
from nbconvert import HTMLExporter, TemplateExporter

def create_html(notebook_path, html_path):

    with open(notebook_path) as f:
        nb = nbformat.read(f, as_version=4)

    html_exporter = HTMLExporter({
        "TemplateExporter":{
            "exclude_input": True,
            "exclude_input_prompt": True,
            "exclude_output_prompt": True
        }
    })

    html_data, resources = html_exporter.from_notebook_node(nb)

    with open(html_path, "w") as f:
        f.write(html_data)
        f.close()
```

```jsx
results_df = pd.DataFrame(columns=['cell', 'duration'])
results_df['duration'] = [cell['metadata']['papermill']['duration'] for cell in results[f'{market}_{system}']['cells']]
results_df['cell'] = [f"Cell {x+1}" for x in range(len(results_df['duration']))]
results_df['cell'] = results_df['cell'].astype(str)
top_15 = results_df.sort_values(by='duration')[-15:]
fig = go.Figure(go.Bar(
    x=top_15['duration'],
    y=top_15['cell'],
    orientation='h'))

fig.update_layout(
        title=f"Longest running cells for {market}/{system} execution"
)

fig.show()
```
