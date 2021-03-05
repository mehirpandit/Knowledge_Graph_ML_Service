<!DOCTYPE html>
<html lang="en">
<head>
    <title>Knowledge graph app UI</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <style>
        .flex-container{
            display:flex;
            flex-direction: column;
            padding: 30px;
            border: 1px dashed #666;
            width: 300px;
            height:400px;
            align-items: center;
            justify-content: center;
        }
    </style>
</head>
<body>
<div align="center">
    <h1>Knowledge Graph Search UI</h1>

    <!--<form action="./resultpage_sgvizler.html" method="GET">-->
    <form  name="kguiForm" method="post"  action="kgServlet" >

        <div class = "flex-container">
            <label for="task_descr">Task Description</label>

            <select name="task_descr" id="task_descr" required>
                <option value="selectone">Select one</option>
                <option value="image classification task" name="image classification task">Image Classification</option>
                <option value="speech_text">Speech to text</option>
            </select>

            <label for="accuracy_spec">Accuracy Specification </label>

            <select name="accuracy_spec" id="accuracy_spec" required>
                <option value="selectone">Select one</option>
                <option value="84">84</option>
                <option value="95">95</option>
            </select>

            <!--<label for="io_descr">Input Output Description</label>

            <select name="io_descr" id="io_descr" required>
                <option value="selectone">Select one</option>
                <option value="image_input">Image as input</option>
                <option value="speech_input">Speech as input</option>
            </select>


            <label for="model_descr">ML model Description</label>

            <select name="model_descr" id="model_descr" required>
                <option value="selectone">Select one</option>
                <option value="random forest">Random forest</option>
                <option value="lstm">LSTM</option>
            </select>


            <label for="training_spec">Training Specification</label>

            <select name="training_spec" id="training_spec" required>
                <option value="selectone">Select one</option>
                <option value="pre-trained">Pre-trained</option>
                <option value="un-trained">Un-trained</option>
            </select>


            <label for="perf_spec">Performance Specification</label>

            <select name="perf_spec" id="perf_spec" required>
                <option value="selectone">Select one</option>
                <option value="accuracya_spec">Accuracy Specification</option>
                <option value="effi_spec">Efficiency Specification</option>
            </select>-->
        </div>

        <!--<button type ="submit" name="submit" class="btn btn-primary " onclick="getData()">Submit</button>-->

        <input type="submit" value="Submit" />
        <input type="reset">

    </form>

</div>
</body>

</html>
