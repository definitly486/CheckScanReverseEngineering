package com.my.target;

import android.content.Context;
import defpackage.n4a;
import defpackage.s5a;
import defpackage.y14;

/* JADX INFO: loaded from: classes4.dex */
public final class u1 extends g3 {
    public final m1.b d;
    public final s5a e;

    public u1(x0 x0Var, s5a s5aVar, s5a s5aVar2, m1.b bVar) {
        super(x0Var, s5aVar);
        this.e = s5aVar2;
        this.d = bVar;
    }

    @Override // com.my.target.g3
    public final void a(boolean z, float f, Context context) {
    }

    @Override // com.my.target.g3
    public final void c() {
        s5a s5aVar = this.a;
        m1.b bVar = this.d;
        m1.f(s5aVar, bVar);
        s5a s5aVar2 = this.e;
        m1.f(s5aVar2, bVar);
        y14.r("ViewabilityTracker: RenderStatTracker", "Render tracked, kill self");
        if (!n4a.i(s5aVar.b)) {
            n4a.i(s5aVar2.b);
        }
        b();
    }

    @Override // com.my.target.g3
    public final void d() {
    }
}
