package com.tapjoy;

import android.app.ProgressDialog;
import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
public final class q implements Runnable {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ Context b;
    public final /* synthetic */ String c;
    public final /* synthetic */ String d;
    public final /* synthetic */ String e;
    public final /* synthetic */ TJAdUnitJSBridge f;

    public q(TJAdUnitJSBridge tJAdUnitJSBridge, boolean z, Context context, String str, String str2, String str3) {
        this.f = tJAdUnitJSBridge;
        this.a = z;
        this.b = context;
        this.c = str;
        this.d = str2;
        this.e = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z = this.a;
        TJAdUnitJSBridge tJAdUnitJSBridge = this.f;
        if (z) {
            tJAdUnitJSBridge.d = ProgressDialog.show(this.b, this.c, this.d);
            return;
        }
        ProgressDialog progressDialog = tJAdUnitJSBridge.d;
        if (progressDialog != null) {
            progressDialog.dismiss();
        }
        this.f.invokeJSCallback(this.e, Boolean.TRUE);
    }
}
