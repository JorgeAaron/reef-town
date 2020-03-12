package com.example.practicace;

import androidx.appcompat.app.AppCompatActivity;

import android.media.MediaPlayer;
import android.os.Bundle;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        iniciar();
    }

    public void iniciar() {
        findViewById(R.id.opcion1).setBackgroundResource(R.drawable.icon_sombrero);
        findViewById(R.id.opcion2).setBackgroundResource(R.drawable.icon_sombrero);
        findViewById(R.id.opcion3).setBackgroundResource(R.drawable.icon_sombrero);
        findViewById(R.id.opcion4).setBackgroundResource(R.drawable.icon_sombrero);
        findViewById(R.id.opcion5).setBackgroundResource(R.drawable.icon_sombrero);
        findViewById(R.id.opcion5).setBackgroundResource(R.drawable.icon_sombrero);




        if (findViewById(R.id.opcion1).callOnClick()) {
            findViewById(R.id.opcion1).setBackgroundResource(R.drawable.icon_dulce);
        }
        if (findViewById(R.id.opcion2).callOnClick()) {
            findViewById(R.id.opcion2).setBackgroundResource(R.drawable.icon_dulce);
        }
        if (findViewById(R.id.opcion3).callOnClick()) {
            findViewById(R.id.opcion4).setBackgroundResource(R.drawable.icon_dulce);
        }
        if (findViewById(R.id.opcion5).callOnClick()) {
            findViewById(R.id.opcion5).setBackgroundResource(R.drawable.icon_dulce);
        }
        if (findViewById(R.id.opcion6).callOnClick()) {
            findViewById(R.id.opcion6).setBackgroundResource(R.drawable.icon_dulce);
        }

    }
}
