package com.tapjoy;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.window.OnBackInvokedCallback;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import defpackage.p2;

/* JADX INFO: loaded from: classes4.dex */
public class TJActivity extends Activity implements View.OnClickListener {
    public RelativeLayout a = null;
    public RelativeLayout.LayoutParams b;
    public TJCloseButton c;
    public ProgressBar d;

    public static /* synthetic */ WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat) {
        return windowInsetsCompat;
    }

    public void a() {
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (Build.VERSION.SDK_INT < 33) {
            a();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        a();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        int i = Build.VERSION.SDK_INT;
        if (i >= 33) {
            getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, new OnBackInvokedCallback() { // from class: ph8
                public final void onBackInvoked() {
                    this.a.a();
                }
            });
        }
        if (i >= 29) {
            ViewCompat.setOnApplyWindowInsetsListener(getWindow().getDecorView(), new p2(4));
        }
        getWindow().setFlags(1024, 1024);
        getWindow().setFlags(16777216, 16777216);
        if (i >= 30) {
            getWindow().setDecorFitsSystemWindows(false);
            WindowInsetsController insetsController = getWindow().getInsetsController();
            if (insetsController != null) {
                insetsController.hide(WindowInsets.Type.statusBars() | WindowInsets.Type.navigationBars());
                insetsController.setSystemBarsBehavior(2);
            }
        } else {
            getWindow().getDecorView().setSystemUiVisibility(4102);
        }
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        this.b = new RelativeLayout.LayoutParams(-1, -1);
        RelativeLayout relativeLayout = new RelativeLayout(this);
        this.a = relativeLayout;
        relativeLayout.setLayoutParams(this.b);
        this.a.setBackgroundColor(0);
        this.d = new ProgressBar(this, null, R.attr.progressBarStyleLarge);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        this.d.setLayoutParams(layoutParams);
        TJCloseButton tJCloseButton = new TJCloseButton(this);
        this.c = tJCloseButton;
        tJCloseButton.setOnClickListener(this);
    }

    public void setCloseButtonClickable(boolean z) {
        this.c.setClickableRequested(z);
    }

    public void setCloseButtonVisibility(boolean z) {
        TJCloseButton tJCloseButton = this.c;
        if (z) {
            tJCloseButton.setVisibility(0);
        } else {
            tJCloseButton.setVisibility(4);
        }
    }

    public void setProgressSpinnerVisibility(boolean z) {
        TapjoyUtil.runOnMainThread(new a(this, z));
    }

    public void showErrorDialog() {
        if (isFinishing()) {
            return;
        }
        new AlertDialog.Builder(this, R.style.Theme.Material.Light.Dialog.Alert).setMessage("An error occurred. Please try again later.").setPositiveButton("OK", new b(this)).create().show();
    }
}
