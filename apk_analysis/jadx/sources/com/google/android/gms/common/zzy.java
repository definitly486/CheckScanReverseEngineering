package com.google.android.gms.common;

import android.util.Log;

/* JADX INFO: loaded from: classes4.dex */
public class zzy {
    public static final zzy e = new zzy(null, null, true, 3);
    public final boolean a;
    public final String b;
    public final Throwable c;
    public final int d;

    public zzy(String str, Exception exc, boolean z, int i) {
        this.a = z;
        this.d = i;
        this.b = str;
        this.c = exc;
    }

    public static zzy b(String str) {
        return new zzy(str, null, false, 1);
    }

    public static zzy c(String str, Exception exc) {
        return new zzy(str, exc, false, 1);
    }

    public static zzy zzf(int i, long j) {
        return new zzy(null, null, true, i);
    }

    public String a() {
        return this.b;
    }

    public final void d() {
        if (this.a || !Log.isLoggable("GoogleCertificatesRslt", 3)) {
            return;
        }
        Throwable th = this.c;
        if (th != null) {
            Log.d("GoogleCertificatesRslt", a(), th);
        } else {
            Log.d("GoogleCertificatesRslt", a());
        }
    }
}
