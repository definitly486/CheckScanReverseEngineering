package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;

/* JADX INFO: loaded from: classes4.dex */
public final class zbn {
    public static zbn d;
    public final Storage a;
    public GoogleSignInAccount b;
    public GoogleSignInOptions c;

    public zbn(Context context) {
        Storage storage = Storage.getInstance(context);
        this.a = storage;
        this.b = storage.getSavedDefaultGoogleSignInAccount();
        this.c = storage.getSavedDefaultGoogleSignInOptions();
    }

    public static synchronized zbn zba(Context context) {
        zbn zbnVar;
        Context applicationContext = context.getApplicationContext();
        synchronized (zbn.class) {
            zbnVar = d;
            if (zbnVar == null) {
                zbnVar = new zbn(applicationContext);
                d = zbnVar;
            }
        }
        return zbnVar;
        return zbnVar;
    }

    public final synchronized void zbb() {
        this.a.clear();
        this.b = null;
        this.c = null;
    }

    public final synchronized void zbc(GoogleSignInOptions googleSignInOptions, GoogleSignInAccount googleSignInAccount) {
        this.a.saveDefaultGoogleSignInAccount(googleSignInAccount, googleSignInOptions);
        this.b = googleSignInAccount;
        this.c = googleSignInOptions;
    }

    public final synchronized GoogleSignInAccount zbd() {
        return this.b;
    }

    public final synchronized GoogleSignInOptions zbe() {
        return this.c;
    }
}
