package io.appmetrica.analytics.push.provider.firebase.impl;

import android.content.Context;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;

/* JADX INFO: loaded from: classes5.dex */
public final class i extends f {
    public i(Context context) {
        this(context, new h(context));
    }

    @Override // io.appmetrica.analytics.push.provider.firebase.impl.f
    public final FirebaseApp a(FirebaseOptions firebaseOptions) {
        try {
            return FirebaseApp.initializeApp(this.a, firebaseOptions, "METRICA_PUSH");
        } catch (Throwable unused) {
            return FirebaseApp.getInstance("METRICA_PUSH");
        }
    }

    public i(Context context, h hVar) {
        super(context, hVar);
    }
}
