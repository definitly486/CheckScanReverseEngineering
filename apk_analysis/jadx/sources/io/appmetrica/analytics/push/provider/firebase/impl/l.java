package io.appmetrica.analytics.push.provider.firebase.impl;

import android.content.Context;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;

/* JADX INFO: loaded from: classes5.dex */
public final class l extends f {
    public l(Context context) {
        this(context, new j(context));
    }

    @Override // io.appmetrica.analytics.push.provider.firebase.impl.f
    public final FirebaseApp a(FirebaseOptions firebaseOptions) {
        try {
            return FirebaseApp.initializeApp(this.a, firebaseOptions);
        } catch (Throwable unused) {
            return FirebaseApp.getInstance();
        }
    }

    public l(Context context, j jVar) {
        super(context, jVar);
    }
}
