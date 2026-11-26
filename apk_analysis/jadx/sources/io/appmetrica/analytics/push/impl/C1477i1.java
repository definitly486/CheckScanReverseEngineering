package io.appmetrica.analytics.push.impl;

import androidx.compose.material3.internal.CalendarModelKt;
import defpackage.aa4;
import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.i1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1477i1 implements u2 {
    public final x2 a;

    public C1477i1(x2 x2Var) {
        this.a = x2Var;
    }

    @Override // io.appmetrica.analytics.push.impl.u2
    public final boolean a(t2 t2Var) {
        s2 s2Var;
        x2 x2Var = this.a;
        if (x2Var == null) {
            return true;
        }
        String str = t2Var.a;
        synchronized (x2Var) {
            s2Var = (s2) ((Map) x2Var.c.getValue()).get(str);
        }
        return s2Var == null || !aa4.e(s2Var.a, t2Var.b) || System.currentTimeMillis() - s2Var.b > CalendarModelKt.MillisecondsIn24Hours;
    }

    @Override // io.appmetrica.analytics.push.impl.u2
    public final String a() {
        return "minInterval";
    }
}
