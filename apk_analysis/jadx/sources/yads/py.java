package yads;

import java.util.ArrayDeque;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes6.dex */
public abstract class py implements nt5 {
    public final ArrayDeque a = new ArrayDeque();
    public final ArrayDeque b;
    public final PriorityQueue c;
    public ny d;
    public long e;
    public long f;

    public py() {
        for (int i = 0; i < 10; i++) {
            this.a.add(new ny());
        }
        this.b = new ArrayDeque();
        for (int i2 = 0; i2 < 2; i2++) {
            this.b.add(new oy(new defpackage.ea(this)));
        }
        this.c = new PriorityQueue();
    }

    public abstract void a(ny nyVar);

    @Override // yads.ii0
    public final void a(qt5 qt5Var) {
        if (qt5Var != this.d) {
            defpackage.mi2.b();
            return;
        }
        ny nyVar = (ny) qt5Var;
        if (nyVar.b(Integer.MIN_VALUE)) {
            nyVar.b();
            this.a.add(nyVar);
        } else {
            long j = this.f;
            this.f = 1 + j;
            nyVar.j = j;
            this.c.add(nyVar);
        }
        this.d = null;
    }

    @Override // yads.ii0
    public final Object b() {
        if (this.d != null) {
            defpackage.ud.g();
            return null;
        }
        if (this.a.isEmpty()) {
            return null;
        }
        ny nyVar = (ny) this.a.pollFirst();
        this.d = nyVar;
        return nyVar;
    }

    public abstract qy c();

    @Override // yads.ii0
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public rt5 a() {
        if (this.b.isEmpty()) {
            return null;
        }
        while (!this.c.isEmpty()) {
            ny nyVar = (ny) this.c.peek();
            int i = u56.a;
            if (nyVar.f > this.e) {
                break;
            }
            ny nyVar2 = (ny) this.c.poll();
            if (nyVar2.b(4)) {
                rt5 rt5Var = (rt5) this.b.pollFirst();
                rt5Var.b = 4 | rt5Var.b;
                nyVar2.b();
                this.a.add(nyVar2);
                return rt5Var;
            }
            a(nyVar2);
            if (f()) {
                qy qyVarC = c();
                rt5 rt5Var2 = (rt5) this.b.pollFirst();
                long j = nyVar2.f;
                rt5Var2.c = j;
                rt5Var2.d = qyVarC;
                rt5Var2.e = j;
                nyVar2.b();
                this.a.add(nyVar2);
                return rt5Var2;
            }
            nyVar2.b();
            this.a.add(nyVar2);
        }
        return null;
    }

    public final rt5 e() {
        return (rt5) this.b.pollFirst();
    }

    public abstract boolean f();

    @Override // yads.ii0
    public void flush() {
        this.f = 0L;
        this.e = 0L;
        while (!this.c.isEmpty()) {
            ny nyVar = (ny) this.c.poll();
            int i = u56.a;
            nyVar.b();
            this.a.add(nyVar);
        }
        ny nyVar2 = this.d;
        if (nyVar2 != null) {
            nyVar2.b();
            this.a.add(nyVar2);
            this.d = null;
        }
    }

    @Override // yads.ii0
    public void release() {
    }

    public final void a(rt5 rt5Var) {
        rt5Var.b = 0;
        rt5Var.d = null;
        this.b.add(rt5Var);
    }

    @Override // yads.nt5
    public final void a(long j) {
        this.e = j;
    }
}
