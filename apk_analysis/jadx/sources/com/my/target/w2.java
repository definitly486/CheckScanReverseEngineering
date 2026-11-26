package com.my.target;

import android.content.Context;
import android.view.View;
import defpackage.d9a;
import defpackage.ex0;
import defpackage.kha;
import defpackage.n5;
import defpackage.pfa;
import defpackage.rn9;
import defpackage.rt;
import defpackage.v51;
import defpackage.w4a;
import defpackage.xda;
import defpackage.y14;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class w2 implements t1 {
    public final d9a b;
    public final rt c;
    public final xda d;
    public final l e;
    public final m2.a f;
    public final v g;
    public final c h;
    public final g2 i;
    public final i j;
    public r0 k;
    public long l;
    public long m;

    public static class a implements View.OnClickListener {
        public final w2 b;

        public a(w2 w2Var) {
            this.b = w2Var;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            w2 w2Var = this.b;
            r0 r0Var = w2Var.k;
            if (r0Var != null) {
                c cVar = r0Var.d;
                cVar.a(true);
                r0Var.b(cVar.getView().getContext());
                if (r0Var.l) {
                    r0Var.f.h();
                }
            }
            w2Var.f.e(w2Var.d);
        }
    }

    public w2(x2 x2Var, xda xdaVar, m2.a aVar, m2.b bVar, n5 n5Var, Context context) {
        b bVar2;
        ArrayList arrayList;
        String str;
        g2 g2Var;
        Context context2 = x2Var.b;
        m2 m2Var = aVar.a;
        d9a d9aVar = new d9a(200, w4a.g);
        this.b = d9aVar;
        rt rtVar = new rt(this, 5);
        this.c = rtVar;
        this.d = xdaVar;
        this.f = aVar;
        b bVar3 = new b(this);
        kha khaVar = xdaVar.Z;
        ArrayList arrayList2 = xdaVar.Y;
        if (!arrayList2.isEmpty()) {
            g2 g2Var2 = new g2(context2);
            this.i = g2Var2;
            this.e = g2Var2;
        } else if (khaVar == null || xdaVar.f0 != 1) {
            wf wfVar = new wf(context2, x2Var);
            this.h = wfVar;
            this.e = wfVar;
        } else {
            eg egVar = new eg(context2);
            this.h = egVar;
            this.e = egVar;
        }
        this.e.setInterstitialPromoViewListener(bVar3);
        this.e.getCloseButton().setOnClickListener(new a(this));
        c cVar = this.h;
        if (cVar == null || khaVar == null) {
            bVar2 = bVar3;
            arrayList = arrayList2;
            str = null;
        } else {
            bVar2 = bVar3;
            arrayList = arrayList2;
            str = null;
            r0 r0Var = new r0(x2Var, khaVar, cVar, aVar, bVar, new v51(this, 7), n5Var);
            this.k = r0Var;
            rn9 rn9Var = (rn9) khaVar.h0;
            if (rn9Var != null && rn9Var.d == null) {
                r0Var.n = false;
            }
            boolean z = khaVar.c0;
            r0Var.k = z;
            if (z && khaVar.f0 == 0.0f && khaVar.Y) {
                y14.r(null, "InterstitialMediaPresenter: Banner is allowed to close");
                r0Var.c();
            }
            if (!r0Var.k || (khaVar.f0 > 0.0f && khaVar.Y)) {
                m2Var.i = false;
            }
            r0Var.i = khaVar.z;
            boolean z2 = khaVar.X;
            r0Var.j = z2;
            if (z2) {
                cVar.a(0);
            } else {
                if (khaVar.Y) {
                    r0Var.e(context);
                }
                cVar.a(2);
            }
            if (khaVar.Y) {
                this.m = 0L;
            }
        }
        this.e.setBanner(xdaVar);
        this.e.setClickArea(xdaVar.r);
        if (khaVar == null || !khaVar.Y) {
            long j = (long) (xdaVar.S * 1000.0f);
            this.l = j;
            if (j > 0) {
                y14.r(str, "InterstitialPromoPresenter: Banner will be allowed to close in " + this.l + " millis");
                d9aVar.b(rtVar);
                this.m = System.currentTimeMillis();
                m2Var.i = false;
            } else {
                y14.r(str, "InterstitialPromoPresenter: Banner is allowed to close");
                this.e.c();
            }
        }
        if (!arrayList.isEmpty() && (g2Var = this.i) != null) {
            this.j = new i(arrayList, g2Var);
        }
        i iVar = this.j;
        if (iVar != null) {
            iVar.c = aVar;
        }
        q qVar = xdaVar.H;
        if (qVar != null && qVar.c != null) {
            v vVar = new v(qVar, new ex0());
            this.g = vVar;
            vVar.c = bVar2;
        }
        aVar.o(xdaVar, this.e.getView());
        aVar.n(xdaVar.S);
    }

    @Override // com.my.target.t1
    public final void destroy() {
        this.b.e(this.c);
        r0 r0Var = this.k;
        if (r0Var != null) {
            r0Var.d();
        }
    }

    @Override // com.my.target.t1
    public final View getCloseButton() {
        return this.e.getCloseButton();
    }

    @Override // com.my.target.t1
    public final View i() {
        return this.e.getView();
    }

    @Override // com.my.target.t1
    public final void pause() {
        r0 r0Var = this.k;
        if (r0Var != null) {
            r0Var.f();
        }
        this.b.e(this.c);
        if (this.m > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.m;
            if (jCurrentTimeMillis > 0) {
                long j = this.l;
                if (jCurrentTimeMillis < j) {
                    this.l = j - jCurrentTimeMillis;
                    return;
                }
            }
            this.l = 0L;
        }
    }

    @Override // com.my.target.t1
    public final void resume() {
        if (this.k != null || this.l <= 0) {
            return;
        }
        this.b.b(this.c);
        this.m = System.currentTimeMillis();
        this.f.a.i = false;
    }

    @Override // com.my.target.t1
    public final void stop() {
        r0 r0Var = this.k;
        if (r0Var != null) {
            r0Var.b(r0Var.d.getView().getContext());
        }
    }

    public static class b implements l.a {
        public final w2 b;

        public b(w2 w2Var) {
            this.b = w2Var;
        }

        public final void a() {
            w2 w2Var = this.b;
            Context context = w2Var.e.getView().getContext();
            q qVar = w2Var.d.H;
            if (qVar == null) {
                return;
            }
            v vVar = w2Var.g;
            if (vVar == null || !vVar.d()) {
                if (vVar == null) {
                    y14.n(context, qVar.b, null, null, null);
                } else {
                    vVar.c(context);
                }
            }
        }

        public final void b(int i, pfa pfaVar) {
            w2 w2Var = this.b;
            w2Var.f.g(w2Var.d, null, i, y14.j(pfaVar), w2Var.e.getView().getContext());
        }

        @Override // defpackage.gv9
        public final void b() {
            w2 w2Var = this.b;
            r0 r0Var = w2Var.k;
            if (r0Var != null) {
                r0Var.d();
            }
            w2Var.f.b(w2Var.d);
        }
    }
}
