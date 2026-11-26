package yads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Random;
import yads.cs;
import yads.kx5;

/* JADX INFO: loaded from: classes6.dex */
public final class q14 {
    public final rw4 a;
    public final mq2 e;
    public final k14 f;
    public final tl2 g;
    public final HashMap h;
    public final HashSet i;
    public boolean k;
    public p16 l;
    public ik5 j = new ik5(new Random());
    public final IdentityHashMap c = new IdentityHashMap();
    public final HashMap d = new HashMap();
    public final ArrayList b = new ArrayList();

    public q14(mq2 mq2Var, ge geVar, Handler handler, rw4 rw4Var) {
        this.a = rw4Var;
        this.e = mq2Var;
        k14 k14Var = new k14();
        this.f = k14Var;
        tl2 tl2Var = new tl2();
        this.g = tl2Var;
        this.h = new HashMap();
        this.i = new HashSet();
        geVar.getClass();
        k14Var.c.add(new j14(handler, geVar));
        tl2Var.c.add(new sl2(handler, geVar));
    }

    public final kx5 a(int i, ArrayList arrayList, ik5 ik5Var) {
        ArrayList arrayList2;
        if (!arrayList.isEmpty()) {
            this.j = ik5Var;
            for (int i2 = i; i2 < arrayList.size() + i; i2++) {
                p14 p14Var = (p14) arrayList.get(i2 - i);
                if (i2 > 0) {
                    p14 p14Var2 = (p14) this.b.get(i2 - 1);
                    p14Var.d = p14Var2.a.o.c.b() + p14Var2.d;
                    p14Var.e = false;
                    p14Var.c.clear();
                } else {
                    p14Var.d = 0;
                    p14Var.e = false;
                    p14Var.c.clear();
                }
                int iB = p14Var.a.o.c.b();
                int i3 = i2;
                while (true) {
                    int size = this.b.size();
                    arrayList2 = this.b;
                    if (i3 >= size) {
                        break;
                    }
                    ((p14) arrayList2.get(i3)).d += iB;
                    i3++;
                }
                arrayList2.add(i2, p14Var);
                this.d.put(p14Var.b, p14Var);
                if (this.k) {
                    a(p14Var);
                    if (this.c.isEmpty()) {
                        this.i.add(p14Var);
                    } else {
                        o14 o14Var = (o14) this.h.get(p14Var);
                        if (o14Var != null) {
                            o14Var.a.a(o14Var.b);
                        }
                    }
                }
            }
        }
        return a();
    }

    public final kx5 a() {
        if (this.b.isEmpty()) {
            return kx5.b;
        }
        int iB = 0;
        for (int i = 0; i < this.b.size(); i++) {
            p14 p14Var = (p14) this.b.get(i);
            p14Var.d = iB;
            iB += p14Var.a.o.c.b();
        }
        return new hx4(this.b, this.j);
    }

    public final void a(int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            p14 p14Var = (p14) this.b.remove(i3);
            this.d.remove(p14Var.b);
            int i4 = -p14Var.a.o.c.b();
            for (int i5 = i3; i5 < this.b.size(); i5++) {
                ((p14) this.b.get(i5)).d += i4;
            }
            p14Var.e = true;
            if (this.k && p14Var.c.isEmpty()) {
                o14 o14Var = (o14) this.h.remove(p14Var);
                o14Var.getClass();
                o14Var.a.c(o14Var.b);
                o14Var.a.a((l14) o14Var.c);
                o14Var.a.a((ul2) o14Var.c);
                this.i.remove(p14Var);
            }
        }
    }

    public final void a(p14 p14Var) {
        cs csVar = p14Var.a;
        i14 i14Var = new i14() { // from class: b6a
            @Override // yads.i14
            public final void a(cs csVar2, kx5 kx5Var) {
                this.a.a(csVar2, kx5Var);
            }
        };
        n14 n14Var = new n14(this, p14Var);
        this.h.put(p14Var, new o14(csVar, i14Var, n14Var));
        Handler handlerB = u56.b((Handler.Callback) null);
        csVar.getClass();
        k14 k14Var = csVar.c;
        k14Var.getClass();
        k14Var.c.add(new j14(handlerB, n14Var));
        Handler handlerB2 = u56.b((Handler.Callback) null);
        tl2 tl2Var = csVar.d;
        tl2Var.getClass();
        tl2Var.c.add(new sl2(handlerB2, n14Var));
        p16 p16Var = this.l;
        rw4 rw4Var = this.a;
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
    }

    public final void a(cs csVar, kx5 kx5Var) {
        this.e.i.a.sendEmptyMessage(22);
    }
}
