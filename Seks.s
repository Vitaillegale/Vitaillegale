<!DOCTYPE html>
<html lang="tr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Tony Montana'nın Hayatı</title>
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&family=Montserrat:wght@400;600;700&display=swap" rel="stylesheet">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body, html {
      height: 100%;
      font-family: 'Roboto', sans-serif;
      background: linear-gradient(to bottom, rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.5)), url('https://upload.wikimedia.org/wikipedia/tr/1/19/Scarfaceinthefall.jpg') no-repeat center center fixed;
      background-size: cover;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    .video-container {
      width: 100%;
      max-width: 900px;
      margin: 20px 0;
      text-align: center;
    }

    iframe {
      width: 100%;
      height: 315px;
      border: 2px solid #FFD700;
      border-radius: 10px;
      box-shadow: 0 6px 15px rgba(0, 0, 0, 0.3);
    }

    .container {
      width: 90%;
      max-width: 800px;
      background: rgba(0, 0, 0, 0.8);
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.4);
      color: #fff;
      text-align: justify;
      line-height: 1.8;
      margin-bottom: 20px;
    }

    h1 {
      font-size: 2.5rem;
      color: #FFD700;
      margin-bottom: 20px;
      text-transform: uppercase;
      font-family: 'Montserrat', sans-serif;
      font-weight: 700;
      text-align: center;
    }

    p {
      font-size: 1.2rem;
      color: #D3D3D3;
      margin-bottom: 15px;
      line-height: 1.7;
    }

    .quote {
      font-size: 1.3rem;
      color: #FFD700;
      font-style: italic;
      margin-top: 20px;
      padding-top: 15px;
      border-top: 2px solid #FFD700;
    }

    .quote-button {
      display: inline-block;
      padding: 12px 25px;
      background-color: #FFD700;
      color: #2F4F4F;
      text-decoration: none;
      font-weight: 600;
      border-radius: 30px;
      font-size: 1.1rem;
      margin-top: 30px;
      transition: 0.3s;
      box-shadow: 0 6px 15px rgba(0, 0, 0, 0.3);
      cursor: pointer;
    }

    .quote-button:hover {
      background-color: #FF6347;
      transform: translateY(-5px);
    }

    .quote-button:active {
      background-color: #FF4500;
      transform: translateY(1px);
    }

    /* Modal Styles */
    .modal {
      display: none;
      position: fixed;
      z-index: 1;
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      overflow: auto;
      background-color: rgba(0, 0, 0, 0.8);
      padding-top: 60px;
      color: #fff;
    }

    .modal-content {
      background-color: #333;
      margin: 5% auto;
      padding: 20px;
      border: 1px solid #888;
      width: 80%;
      max-width: 600px;
      border-radius: 10px;
    }

    .modal-header {
      font-size: 1.5rem;
      font-weight: 600;
      margin-bottom: 15px;
    }

    .modal-body {
      font-size: 1.2rem;
      line-height: 1.6;
      color: #D3D3D3;
    }

    .close {
      color: #FF6347;
      font-size: 2rem;
      font-weight: bold;
      position: absolute;
      right: 20px;
      top: 20px;
      cursor: pointer;
    }

    @media (max-width: 768px) {
      iframe {
        height: 200px;
      }

      .container {
        padding: 15px;
      }

      h1 {
        font-size: 2rem;
      }

      p {
        font-size: 1rem;
      }

      .quote-button {
        font-size: 1rem;
      }
    }
  </style>
</head>
<body>

  <!-- Video en üstte -->
  <div class="video-container">
    <iframe width="560" height="315" 
            src="https://www.youtube.com/embed/s9M5Y8CaGTU" 
            frameborder="0" 
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
            allowfullscreen>
    </iframe>
  </div>

  <div class="container">
    <h1>Tony Montana'nın Hayatı</h1>
    <p>
      Tony Montana, 1983 yapımı *Scarface* filminde başrolü oynayan ve büyük bir suç patronu olarak tanınan efsane bir karakterdir. 
      Küba'dan Amerika'ya göç eden Tony, mafya dünyasına adım atarak hızla yükselmiştir. 
      Yükselmesi, sadece hırsıyla değil, aynı zamanda karizmatik ve korkusuz tavırlarıyla da şekillenmiştir.
    </p>
    <p>
      Tony'nin hayatı, büyük hırsların, ihanetlerin ve trajik olayların bir sonucudur. 
      Filmin sonunda, her şeyini kaybetmesine rağmen, Tony'nin ölümüne kadar süren direnci ve onurlu mücadelesi izleyiciyi derinden etkilemiştir. 
      "Say hello to my little friend!" repliği, onun karakterini simgeler hale gelmiştir.
    </p>
    <div class="quote">
      "Ben sadece bir kurşunum, ama herkes beni hatırlayacak!" - Tony Montana
    </div>
    <button class="quote-button" id="showMoreBtn">Daha fazla bilgi</button>
  </div>

  <!-- Modal -->
  <div class="modal" id="myModal">
    <div class="modal-content">
      <span class="close" id="closeBtn">&times;</span>
      <div class="modal-header">Tony Montana Hakkında</div>
      <div class="modal-body">
        Tony Montana, büyük bir hırs ve cesaretle Chicago'nun en güçlü suç patronlarından biri olmayı başarmıştır. Ancak, onun hikayesi aynı zamanda nefretten, ihanetlerden ve içsel bir boşluktan ibarettir. 
        Filmdeki en unutulmaz sahnelerden biri, Tony'nin tüm hayatını kaybetmeden önce son bir kez "Say hello to my little friend!" diye bağırarak düşmanlarına saldırdığı sahnedir. 
        Montana'nın hikayesi, başarı, güç ve sonrasında gelen yıkımın acı dolu bir hatırlatıcısıdır.
      </div>
    </div>
  </div>

  <script>
    // Modal gösterme
    var modal = document.getElementById("myModal");
    var btn = document.getElementById("showMoreBtn");
    var span = document.getElementById("closeBtn");

    btn.onclick = function() {
      modal.style.display = "block";
    }

    span.onclick = function() {
      modal.style.display = "none";
    }

    window.onclick = function(event) {
      if (event.target == modal) {
        modal.style.display = "none";
      }
    }
  </script>

</body>
</html>
