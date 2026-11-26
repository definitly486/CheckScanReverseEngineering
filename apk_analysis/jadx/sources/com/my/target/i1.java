package com.my.target;

import android.content.Context;
import defpackage.l3a;
import defpackage.n4a;
import defpackage.n7a;
import defpackage.s5a;
import defpackage.y14;

/* JADX INFO: loaded from: classes4.dex */
public final class i1 extends n7a {
    public final m1.b f;
    public n4a g;

    public i1(x0 x0Var, s5a s5aVar, long j, n4a n4aVar, m1.b bVar) {
        super(x0Var, s5aVar, j);
        this.g = n4aVar;
        this.f = bVar;
    }

    @Override // com.my.target.g3
    public final void a(boolean z, float f, Context context) {
        if (e(z)) {
            s5a s5aVar = this.a;
            s5aVar.c.c(6000);
            String strT = l3a.t(context);
            if (strT != null) {
                m1.c(this.g, strT);
            }
            m1.f(s5aVar, this.f);
            n4a.i(s5aVar.b);
            x0.a aVar = this.c ? null : this.b.l;
            if (aVar != null) {
                aVar.a();
            }
            y14.r("ViewabilityTracker: ShowStatTracker", "Show tracked, kill self");
            b();
        }
    }

    @Override // com.my.target.g3
    public final void b() {
        super.b();
        this.g = null;
    }

    @Override // com.my.target.g3
    public final void c() {
    }

    @Override // com.my.target.g3
    public final void d() {
        this.e = 0L;
    }
}
