package yads;

import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import java.util.Iterator;
import yads.cs;
import yads.kx5;

/* JADX INFO: loaded from: classes6.dex */
public abstract class h50 extends cs {
    public final HashMap h = new HashMap();
    public Handler i;
    public p16 j;

    public final void a(final Object obj, cs csVar) {
        if (this.h.containsKey(obj)) {
            defpackage.mi2.b();
            return;
        }
        i14 i14Var = new i14() { // from class: sw9
            @Override // yads.i14
            public final void a(cs csVar2, kx5 kx5Var) {
                this.a.a(obj, csVar2, kx5Var);
            }
        };
        f50 f50Var = new f50(this, obj);
        this.h.put(obj, new g50(csVar, i14Var, f50Var));
        Handler handler = this.i;
        handler.getClass();
        csVar.getClass();
        k14 k14Var = csVar.c;
        k14Var.getClass();
        k14Var.c.add(new j14(handler, f50Var));
        Handler handler2 = this.i;
        handler2.getClass();
        tl2 tl2Var = csVar.d;
        tl2Var.getClass();
        tl2Var.c.add(new sl2(handler2, f50Var));
        p16 p16Var = this.j;
        rw4 rw4Var = this.g;
        if (rw4Var == null) {
            defpackage.ud.g();
            return;
        }
        Looper looperMyLooper = Looper.myLooper();
        Looper looper = csVar.e;
        if (looper != null && looper != looperMyLooper) {
            defpackage.mi2.b();
            return;
        }
        csVar.g = rw4Var;
        kx5 kx5Var = csVar.f;
        csVar.a.add(i14Var);
        if (csVar.e == null) {
            csVar.e = looperMyLooper;
            csVar.b.add(i14Var);
            csVar.a(p16Var);
        } else if (kx5Var != null) {
            csVar.b(i14Var);
            i14Var.a(csVar, kx5Var);
        }
        if (this.b.isEmpty()) {
            csVar.a(i14Var);
        }
    }

    @Override // yads.cs
    public final void b() {
        for (g50 g50Var : this.h.values()) {
            g50Var.a.b(g50Var.b);
        }
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public abstract void a(Object obj, cs csVar, kx5 kx5Var);

    @Override // yads.cs
    public void d() {
        Iterator it = this.h.values().iterator();
        while (it.hasNext()) {
            ((g50) it.next()).a.d();
        }
    }

    @Override // yads.cs
    public void e() {
        for (g50 g50Var : this.h.values()) {
            g50Var.a.c(g50Var.b);
            g50Var.a.a((l14) g50Var.c);
            g50Var.a.a((ul2) g50Var.c);
        }
        this.h.clear();
    }

    @Override // yads.cs
    public final void a() {
        for (g50 g50Var : this.h.values()) {
            g50Var.a.a(g50Var.b);
        }
    }

    public h14 a(Object obj, h14 h14Var) {
        return h14Var;
    }
}
