package com.example.namz.ageuk;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

public class Home extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home);
    }

    public void LogCall(View v){
        Intent intent = new Intent(this, LogCall.class);
        startActivity(intent);
    }

    public void PickMatch(View v){
        Intent intent = new Intent(this, PickMatch.class);
        startActivity(intent);
    }
}
