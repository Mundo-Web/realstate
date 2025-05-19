<?php

namespace App\Http\Controllers;

use App\Helpers\EmailConfig;
use App\Models\General;
use App\Models\NewsletterSubscriber;
use Illuminate\Http\Request;

class NewsletterSubscriberController extends Controller
{
  /**
   * Display a listing of the resource.
   */
  public function index()
  {
    //
  }

  /**
   * Show the form for creating a new resource.
   */
  public function create()
  {
    //
  }

  /**
   * Store a newly created resource in storage.
   */
  public function store(Request $request)
  {
    //
  }

  /**
   * Display the specified resource.
   */
  public function show(NewsletterSubscriber $newsletterSubscriber)
  {
    //
  }

  /**
   * Show the form for editing the specified resource.
   */
  public function edit(NewsletterSubscriber $newsletterSubscriber)
  {
    //
  }

  /**
   * Update the specified resource in storage.
   */
  public function update(Request $request, String $id)
  {
    //
  }

  /**
   * Remove the specified resource from storage.
   */
  public function destroy(NewsletterSubscriber $newsletterSubscriber)
  {
    //
  }

  public function showSubscripciones()
  {
    $subscripciones = NewsletterSubscriber::orderBy('created_at', 'desc')->get();

    return view('pages.subscripciones.index', compact('subscripciones'));
  }

  public function guardarUserNewsLetter(Request $request)
  {
    NewsletterSubscriber::create($request->all());
    $data = $request->all();
    $data['nombre'] = '';
    $this->envioCorreo($data);
    // $this->envioCorreoInterno($data);
    return response()->json(['message' => 'Usuario suscrito']);
  }

  private function envioCorreo($data)
  {
    $general = General::first();
    $appUrl = env('APP_URL');
    $appName = env('APP_NAME');
    $name = '';
    $mensaje = "Gracias por suscribirte a $appName";
    $mail = EmailConfig::config($name, $mensaje);
    $general = General::all()->first();
    // dd($mail);
    try {
      $mail->addAddress($data['email']);
      $mail->Body = '<html lang="en">
      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>MP Real State</title>
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
          href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap"
          rel="stylesheet"
        />
        <style>
          * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
          }
        </style>
      </head>
      <body>
        <main>
          <table
            style="
              width: 600px;
              margin: 0 auto;
              text-align: center;
              background-image: url(' .
                    $appUrl .
                    '/mail/fondo.png);
              background-repeat: no-repeat;
              background-position: center;
              background-size: cover;
            "
          >
            <thead>
              <tr>
                <th
                  style="
                    display: flex;
                    flex-direction: row;
                    justify-content: center;
                    align-items: center;
                    margin-top: 40px;
                    padding: 0 200px;
                  "
                >
                    <a href="' .
                    $appUrl .
                    '" target="_blank" style="text-align:center" ><img src="' .
                    $appUrl .
                    '/mail/logo.png" alt="hpi" /></a>
                </th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>
                  <p
                    style="
                      color: #ffffff;
                      font-size: 40px;
                      line-height: normal;
                      font-family: Google Sans;
                      font-weight: bold;
                    "
                  >
                    ¡Gracias
                    <span style="color: #354273">por suscribirte!</span>
                  </p>
                </td>
              </tr>

              <tr>
                <td>
                  <p
                    style="
                      color: #354273;
                      font-weight: 500;
                      font-size: 18px;
                      text-align: center;
                      width: 500px;
                      margin: 0 auto;
                      padding: 20px 0 5px 0;
                      font-family: Google Sans;
                    "
                  >
                   
                  </p>
                </td>
              </tr>
              
              <tr>
                <td>
                  <p
                    style="
                      color: #ffffff;
                      font-weight: 500;
                      font-size: 18px;
                      text-align: center;
                      width: 500px;
                      margin: 0 auto;
                      padding: 0px 10px 5px 0px;
                      font-family: Google Sans;
                    "
                  >
                    Estaras recibiendo novedades de nuestros blog.
                  </p>
                </td>
              </tr>
              <tr>
                <td>
                  <a
                      target="_blank"
                    href="' .
                    $appUrl .
                    '"
                    style="
                      text-decoration: none;
                      background: linear-gradient(90deg, #C8A049 0%, #E9D151 55.42%, #BE913E 93.5%);
                      color: #141414;
                      padding: 13px 20px;
                      display: inline-flex;
                      justify-content: center;
                      border-radius: 32px;
                      align-items: center;
                      gap: 10px;
                      font-weight: 600;
                      font-family: Google Sans;
                      font-size: 16px;
                      margin-bottom: 350px;
                    "
                  >
                    <span>Visita nuestra web</span>
                  </a>
                </td>
              </tr>
            </tbody>
          </table>
        </main>
      </body>
    </html>
      ';
      $mail->addBCC($general->email, 'Nuevo suscriptor' );
      $mail->isHTML(true);
      $mail->send();
    } catch (\Throwable $th) {
      //throw $th;
      // dump($th);
    }
  }

  private function envioCorreoInterno($data)
  {
    /* $name = $data['full_name']; */
    $name = 'Tienes un nuevo mensaje,';
    $mensaje = 'MIC&JS';
    $mail = EmailConfig::config($name, $mensaje);
    $emailCliente = General::all()->first();
    $general = General::all()->first();

    try {
      $mail->addAddress($emailCliente->email);
      $mail->Body =
        '<html lang="en">
            <head>
              <meta charset="UTF-8" />
              <meta name="viewport" content="width=device-width, initial-scale=1.0" />
              <title>Mundo web</title>
              <link rel="preconnect" href="https://fonts.googleapis.com" />
              <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
              <link
                href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap"
                rel="stylesheet"
              />
              <style>
                * {
                  margin: 0;
                  padding: 0;
                  box-sizing: border-box;
                }
              </style>
            </head>
            <body>
              <main>
                <table
                  style="
                    width: 600px;
                    margin: 0 auto;
                    text-align: center;
                    background-image: url(https://micjc.mundoweb.pe/mailing/ImagenFondo.png);
                    background-repeat: no-repeat;
                    background-position: center;
                    background-size: cover;
                  "
                >
                  <thead>
                    <tr>
                      <th
                        style="
                          display: flex;
                          flex-direction: row;
                          justify-content: center;
                          align-items: center;
                          margin: 40px;
                          padding:0 80px;
                        "
                      >
                        <img
                          src="https://micjc.mundoweb.pe/mailing/Logo.png"
                          alt="dimension lider"
                        />
                      </th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>
                        <p
                          style="
                            color: #ffffff;
                            font-weight: 500;
                            font-size: 18px;
                            text-align: center;
                            width: 500px;
                            margin: 0 auto;
                            padding: 20px 0;
                            font-family: Montserrat, sans-serif;
                          "
                        >
                          <span style="display: block">Hola MIC&JC</span>
                          <span style="display: block">Tienes un nuevo mensaje</span>
                        </p>
                      </td>
                    </tr>
                    
                    <tr>
                      <td>
                        <a
                          target="_blank"
                          href="https://micjc.mundoweb.pe/"
                          style="
                            text-decoration: none;
                            background-color: #fdfefd;
                            color: #254f9a;
                            padding: 16px 20px;
                            display: inline-flex;
                            justify-content: center;
                            border-radius: 10px;
                            align-items: center;
                            gap: 10px;
                            font-weight: 600;
                            font-family: Montserrat, sans-serif;
                            font-size: 16px;
                            
                          "
                        >
                          <span>Visita nuestra web</span>
                        </a>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: center">
                        <img
                          src="https://micjc.mundoweb.pe/mailing/producto.png"
                          alt="MICJC"
                          style="width: 80%"
                        />
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <a
                          href="https://' .
        htmlspecialchars($general->facebook, ENT_QUOTES, 'UTF-8') .
        '"
                          target="_blank"
                          style="padding: 0 5px 30px 0; display: inline-block"
                        >
                          <img src="https://micjc.mundoweb.pe/mailing/facebook.png" alt=""
                        /></a>
          
                        <a
                          href="https://' .
        htmlspecialchars($general->instagram, ENT_QUOTES, 'UTF-8') .
        '"
                          target="_blank"
                          style="padding: 0 5px 30px 0; display: inline-block"
                        >
                          <img src="https://micjc.mundoweb.pe/mailing/instagram.png" alt=""
                        /></a>
          
                        <a
                          href="https://' .
        htmlspecialchars($general->twitter, ENT_QUOTES, 'UTF-8') .
        '"
                          target="_blank"
                          style="padding: 0 5px 30px 0; display: inline-block"
                        >
                          <img src="https://micjc.mundoweb.pe/mailing/twitter.png" alt=""
                        /></a>
          
                        <a
                          href="https://' .
        htmlspecialchars($general->linkedin, ENT_QUOTES, 'UTF-8') .
        '"
                          target="_blank"
                          style="padding: 0 5px 30px 0; display: inline-block"
                        >
                          <img src="https://micjc.mundoweb.pe/mailing/linkedin.png" alt=""
                        /></a>
          
                        <a
                          href="https://' .
        htmlspecialchars($general->youtube, ENT_QUOTES, 'UTF-8') .
        '"
                          target="_blank"
                          style="padding: 0 5px 30px 0; display: inline-block"
                        >
                          <img src="https://micjc.mundoweb.pe/mailing/youtube.png" alt=""
                        /></a>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </main>
            </body>
          </html>';
      $mail->isHTML(true);
      $mail->send();
    } catch (\Throwable $th) {
      //throw $th;
    }
  }

  public function envioMasivo($plantilla){
    try {
      //code...
      $subscripciones = NewsletterSubscriber::all();
      $general = General::all()->first();
      $appUrl = env('APP_URL');
      $name = '';
      $mensaje = env('APP_NAME'). 'Acaba de publicar un nuevo post ';
      $mail = EmailConfig::config($name, $mensaje);
      $mail->Subject = 'Nuevo Post Publicado';
      $mail->Body = $plantilla;
      $mail->isHTML(true);
      foreach ($subscripciones as $subscripcion) {
        $mail->addBCC($subscripcion->email);
        
      }
      $mail->send();
      return response()->json(['message' => 'Correo enviado']);
    } catch (\Throwable $th) {
      //throw $th;
      // dump($th);
    }
   
  }
}
