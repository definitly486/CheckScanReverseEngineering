package io.appmetrica.analytics.impl;

import android.os.Bundle;
import io.appmetrica.analytics.internal.CounterConfiguration;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class Mh extends V3 {
    protected O8 c;
    protected Hf d;
    public boolean e;
    public String f;

    public Mh(Pf pf, CounterConfiguration counterConfiguration, O8 o8, String str) {
        super(pf, counterConfiguration);
        this.e = true;
        this.f = str;
        this.c = o8;
    }

    public final Bundle c() {
        Bundle bundle = new Bundle();
        this.b.toBundle(bundle);
        Pf pf = this.a;
        synchronized (pf) {
            bundle.putParcelable("PROCESS_CFG_OBJ", pf);
        }
        return bundle;
    }

    public final synchronized String d() {
        O8 o8;
        o8 = this.c;
        return o8.a.isEmpty() ? null : new JSONObject(o8.a).toString();
    }

    public final synchronized String e() {
        return this.f;
    }

    public boolean f() {
        return this.e;
    }

    public Mh(Pf pf, CounterConfiguration counterConfiguration, O8 o8) {
        this(pf, counterConfiguration, o8, null);
    }
}
