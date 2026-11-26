package io.appmetrica.analytics.impl;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import io.appmetrica.analytics.IReporter;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class Wg extends Ug {
    public final IReporter b;

    public Wg(C0989i5 c0989i5, IReporter iReporter) {
        super(c0989i5);
        this.b = iReporter;
    }

    @Override // io.appmetrica.analytics.impl.Ug
    public final boolean a(C0783a6 c0783a6) {
        Tc tc = (Tc) Tc.c.get(c0783a6.d);
        HashMap map = new HashMap();
        map.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, tc.a);
        map.put("delivery_method", tc.b);
        this.b.reportEvent("crash_saved", map);
        return false;
    }
}
