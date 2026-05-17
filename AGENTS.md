# n8n Workflow Development

Use the installed n8n skills when building, editing, or debugging n8n workflows:

- `n8n-mcp-tools-expert` for MCP tool selection and workflow validation flow.
- `n8n-expression-syntax` for `{{ }}` expressions and `$json`, `$node`, `$input` access.
- `n8n-node-configuration` before configuring unfamiliar nodes.
- `n8n-workflow-patterns` when designing complete workflows.
- `n8n-validation-expert` when validation or deployment errors appear.
- `n8n-code-javascript` and `n8n-code-python` for Code node logic.

When using the n8n MCP server:

1. Start with `tools_documentation` or `search_nodes`.
2. Use `get_node_essentials` before requesting full node schemas.
3. Validate workflows before deployment.
4. Prefer partial workflow updates for edits to existing workflows.
5. Keep credentials in n8n itself; do not hard-code secrets into workflow JSON.
