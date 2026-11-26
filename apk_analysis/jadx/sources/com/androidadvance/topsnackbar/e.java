package com.androidadvance.topsnackbar;

import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;

/* JADX INFO: loaded from: classes3.dex */
public final class e extends ViewPropertyAnimatorListenerAdapter {
    public final /* synthetic */ TSnackbar a;

    public e(TSnackbar tSnackbar, int i) {
        this.a = tSnackbar;
    }

    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
    public final void onAnimationEnd(View view) {
        this.a.d();
    }

    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
    public final void onAnimationStart(View view) {
        TSnackbar.SnackbarLayout snackbarLayout = this.a.b;
        snackbarLayout.b.setAlpha(1.0f);
        ViewCompat.animate(snackbarLayout.b).alpha(0.0f).setDuration(180L).setStartDelay(0L).start();
        if (snackbarLayout.c.getVisibility() == 0) {
            snackbarLayout.c.setAlpha(1.0f);
            ViewCompat.animate(snackbarLayout.c).alpha(0.0f).setDuration(180L).setStartDelay(0L).start();
        }
    }
}
