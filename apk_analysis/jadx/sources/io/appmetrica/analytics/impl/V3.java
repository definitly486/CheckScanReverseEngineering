package io.appmetrica.analytics.impl;

import android.content.Context;
import android.os.Bundle;
import io.appmetrica.analytics.AppMetrica;
import io.appmetrica.analytics.internal.CounterConfiguration;

/* JADX INFO: loaded from: classes5.dex */
public class V3 {
    public final Pf a;
    public final CounterConfiguration b;

    public V3(Pf pf, CounterConfiguration counterConfiguration) {
        this.a = pf;
        this.b = counterConfiguration;
    }

    public static V3 a(Context context, Bundle bundle) {
        Pf pf;
        String str = Pf.c;
        if (bundle != null) {
            try {
                pf = (Pf) bundle.getParcelable("PROCESS_CFG_OBJ");
            } catch (Throwable unused) {
                pf = null;
            }
        } else {
            pf = null;
        }
        CounterConfiguration counterConfigurationFromBundle = CounterConfiguration.fromBundle(bundle);
        if (counterConfigurationFromBundle == null || pf == null || !context.getPackageName().equals(pf.a.getAsString("PROCESS_CFG_PACKAGE_NAME")) || pf.a.getAsInteger("PROCESS_CFG_SDK_API_LEVEL").intValue() != AppMetrica.getLibraryApiLevel()) {
            return null;
        }
        return new V3(pf, counterConfigurationFromBundle);
    }

    public final CounterConfiguration b() {
        return this.b;
    }

    public final String toString() {
        return "ClientConfiguration{mProcessConfiguration=" + this.a + ", mCounterConfiguration=" + this.b + '}';
    }

    public final Pf a() {
        return this.a;
    }
}
