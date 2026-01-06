<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map" %>
<%@ page import="model.Automovil" %>
<!DOCTYPE html>
<html>
<head>
    <title>Comparativa de Maps - Automóviles</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #f4f7f6; color: #333; padding: 20px; }
        h1 { text-align: center; color: #2c3e50; }
        .container { display: flex; flex-wrap: wrap; justify-content: space-around; gap: 20px; }
        .card { background: white; border-radius: 8px; box-shadow: 0 4px 6px rgba(0,0,0,0.1); padding: 15px; width: 30%; min-width: 300px; }
        h3 { border-bottom: 2px solid #3498db; padding-bottom: 10px; color: #3498db; }
        table { width: 100%; border-collapse: collapse; margin-top: 10px; }
        th, td { text-align: left; padding: 12px; border-bottom: 1px solid #ddd; }
        th { background-color: #f8f9fa; font-size: 0.9em; text-transform: uppercase; }
        tr:hover { background-color: #f1f1f1; }
        .badge { font-size: 0.8em; padding: 4px 8px; border-radius: 12px; background: #e8f4fd; color: #2980b9; font-weight: bold; }
    </style>
</head>
<body>

    <h1>Visualización de Estructuras de Datos (Maps)</h1>

    <div class="container">
        <div class="card">
            <h3>HashMap <span class="badge">Sin Orden</span></h3>
            <p><small>Basado en hashing, ideal para búsquedas rápidas.</small></p>
            <table>
                <tr><th>Modelo</th><th>Fabricante</th><th>Color</th></tr>
                <%
                    Map<String, Automovil> hash = (Map<String, Automovil>) request.getAttribute("hashMap");
                    if(hash != null) {
                        for (Automovil a : hash.values()) {
                %>
                <tr>
                    <td><strong><%= a.getModelo() %></strong></td>
                    <td><%= a.getFabricante() %></td>
                    <td><%= a.getColor() %></td>
                </tr>
                <% } } %>
            </table>
        </div>

        <div class="card">
            <h3>LinkedHashMap <span class="badge">Orden de Inserción</span></h3>
            <p><small>Mantiene el orden exacto en que agregaste los datos.</small></p>
            <table>
                <tr><th>Modelo</th><th>Fabricante</th><th>Color</th></tr>
                <%
                    Map<String, Automovil> linked = (Map<String, Automovil>) request.getAttribute("linkedHashMap");
                    if(linked != null) {
                        for (Automovil a : linked.values()) {
                %>
                <tr>
                    <td><strong><%= a.getModelo() %></strong></td>
                    <td><%= a.getFabricante() %></td>
                    <td><%= a.getColor() %></td>
                </tr>
                <% } } %>
            </table>
        </div>

        <div class="card">
            <h3>TreeMap <span class="badge">Orden Alfabético</span></h3>
            <p><small>Ordenado automáticamente por la clave (Modelo).</small></p>
            <table>
                <tr><th>Modelo</th><th>Fabricante</th><th>Color</th></tr>
                <%
                    Map<String, Automovil> tree = (Map<String, Automovil>) request.getAttribute("treeMap");
                    if(tree != null) {
                        for (Automovil a : tree.values()) {
                %>
                <tr>
                    <td><strong><%= a.getModelo() %></strong></td>
                    <td><%= a.getFabricante() %></td>
                    <td><%= a.getColor() %></td>
                </tr>
                <% } } %>
            </table>
        </div>
    </div>

</body>
</html>