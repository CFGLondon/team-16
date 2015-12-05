package com.example.namz.ageuk;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

public class r_personal_info extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_r_personal_info);
    }

    public void Registered(View v) {
        Intent intent = new Intent(this, Registered.class);
        startActivity(intent);
    }
}
