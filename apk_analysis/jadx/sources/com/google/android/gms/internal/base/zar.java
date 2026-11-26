package com.google.android.gms.internal.base;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes4.dex */
public class zar extends Handler {
    public zar() {
        Looper.getMainLooper();
    }

    public zar(Looper looper) {
        super(looper);
        Looper.getMainLooper();
    }

    public zar(Looper looper, Handler.Callback callback) {
        super(looper, callback);
        Looper.getMainLooper();
    }
}
