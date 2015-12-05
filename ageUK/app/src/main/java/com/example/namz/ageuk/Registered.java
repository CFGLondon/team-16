package com.example.namz.ageuk;

import android.content.Intent;
import android.os.Debug;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;

public class Registered extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_registered);
    }
    public void moreQuestions(View v) {
        Intent intent = new Intent(this, moreQuestions1.class);
        startActivity(intent);
    }
}
