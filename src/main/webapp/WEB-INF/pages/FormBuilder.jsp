<!doctype html>
<html>
<head>
  <title>Form Builder</title>
  <meta name="description" content="">
  <link rel="stylesheet" href="./builder/vendor/css/vendor.css" />
  <link rel="stylesheet" href="./builder/dist/formbuilder.css" />
  <style>
  * {
    box-sizing: border-box;
  }

  body {
    background-color: #444;
    font-family: sans-serif;
  }

  .fb-main {
    background-color: #fff;
    border-radius: 5px;
    min-height: 600px;
  }

  input[type=text] {
    height: 26px;
    margin-bottom: 3px;
  }

  select {
    margin-bottom: 5px;
    font-size: 40px;
  }
  </style>
</head>
<body>
  <div class='fb-main'></div>

  <script src="./builder/vendor/js/vendor.js"></script>
  <script src="./builder/dist/formbuilder.js"></script>

  <script>
    $(function(){
      fb = new Formbuilder({
        selector: '.fb-main',
        bootstrapData: [
          
          {
            "label": "Введіть ваше імя:",
            "field_type": "text",
            "required": true,
            "field_options": {},
            "cid": "c6"
          },
          {
            "label": "Введіть ваш вік:",
            "field_type": "text",
            "required": true,
            "field_options": {},
            "cid": "c6"
          }
        ]
      });

      fb.on('save', function(payload){
        console.log(payload);
      })
    });
  </script>

</body>
</html>