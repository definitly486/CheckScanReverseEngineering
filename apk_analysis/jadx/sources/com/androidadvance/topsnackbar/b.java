package com.androidadvance.topsnackbar;

import android.view.View;
import com.google.android.material.behavior.SwipeDismissBehavior;

/* JADX INFO: loaded from: classes3.dex */
public final class b implements SwipeDismissBehavior.OnDismissListener {
    public final /* synthetic */ TSnackbar a;

    public b(TSnackbar tSnackbar) {
        this.a = tSnackbar;
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior.OnDismissListener
    public final void onDismiss(View view) {
        this.a.b(0);
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior.OnDismissListener
    public final void onDragStateChanged(int i) {
        TSnackbar tSnackbar = this.a;
        if (i != 0) {
            if (i == 1 || i == 2) {
                a.c().b(tSnackbar.d);
                return;
            }
            return;
        }
        a aVarC = a.c();
        TSnackbar.b bVar = tSnackbar.d;
        synchronized (aVarC.a) {
            try {
                if (aVarC.d(bVar)) {
                    aVarC.e(aVarC.c);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
