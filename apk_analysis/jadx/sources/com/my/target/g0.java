package com.my.target;

import android.content.Context;
import defpackage.n4a;
import defpackage.s5a;
import defpackage.y14;

/* JADX INFO: loaded from: classes4.dex */
public final class g0 extends g3 {
    @Override // com.my.target.g3
    public final void a(boolean z, float f, Context context) {
        if (y14.a(f, 0.0f) == 1) {
            s5a s5aVar = this.a;
            m1.f(s5aVar, null);
            y14.r("ViewabilityTracker: ShowStatTracker", "ViewIn tracked, kill self");
            n4a.i(s5aVar.b);
            b();
        }
    }

    @Override // com.my.target.g3
    public final void c() {
    }

    @Override // com.my.target.g3
    public final void d() {
    }
}
