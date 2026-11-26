package com.google.firebase.crashlytics;

import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentRegistrar;
import defpackage.jh2;
import defpackage.kx2;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class FirebaseCrashlyticsKtxRegistrar implements ComponentRegistrar {
    public static final Companion Companion = new Companion(null);

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<Component<?>> getComponents() {
        return kx2.b;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
