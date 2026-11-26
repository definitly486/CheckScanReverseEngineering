package com.my.target;

import android.content.Context;
import defpackage.n4a;
import defpackage.n7a;
import defpackage.s5a;
import defpackage.y14;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class s0 extends n7a {
    public final m1.b f;
    public boolean g;
    public float h;

    public s0(x0 x0Var, s5a s5aVar, long j, m1.b bVar) {
        super(x0Var, s5aVar, j);
        this.g = false;
        this.h = 0.0f;
        this.f = bVar;
    }

    @Override // com.my.target.g3
    public final void a(boolean z, float f, Context context) {
        if (!this.g) {
            if (e(z)) {
                this.g = true;
                this.h = f;
                y14.r("ViewabilityTracker: ViewabilityDurationStatTracker", "Start tracking viewability");
                return;
            }
            return;
        }
        this.h = Math.max(this.h, f);
        long jCurrentTimeMillis = System.currentTimeMillis() - this.e;
        if (!z || jCurrentTimeMillis >= 60000) {
            f(this.h, jCurrentTimeMillis);
            return;
        }
        y14.r("ViewabilityTracker: ViewabilityDurationStatTracker", "No need to send ViewabilityDurationStat (isVisible = true, currentDurationMillis = " + jCurrentTimeMillis + ")");
    }

    @Override // com.my.target.g3
    public final void c() {
    }

    @Override // com.my.target.g3
    public final void d() {
        if (!this.g) {
            this.e = 0L;
            return;
        }
        f(this.h, System.currentTimeMillis() - this.e);
    }

    public final void f(float f, long j) {
        float fMin = Math.min(j, 60000L) / 1000.0f;
        String strValueOf = String.valueOf((int) f);
        String str = String.format(Locale.getDefault(), "%.1f", Float.valueOf(fMin));
        HashMap map = new HashMap();
        map.put("viewability_percent", strValueOf);
        map.put("viewability_duration", str);
        y14.r("ViewabilityTracker: ViewabilityDurationStatTracker", defpackage.n2.d("Sending ViewabilityDuration stat (max visible percent = ", strValueOf, ", duration = ", str, " sec)"));
        m1.a aVar = m1.a;
        s5a s5aVar = this.a;
        if (aVar != null) {
            aVar.a(s5aVar, map, 1, this.f);
        }
        n4a.i(s5aVar.b);
        y14.r("ViewabilityTracker: ViewabilityDurationStatTracker", "ViewabilityDuration tracked, kill self");
        b();
    }
}
