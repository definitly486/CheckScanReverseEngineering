package yads;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;

/* JADX INFO: loaded from: classes6.dex */
public final class hc4 {
    public final Context a;
    public final e4 b;
    public final d9 c;
    public final io4 d;
    public final gj4 e;
    public final String f;
    public final ba g;
    public final ea h;
    public final zg5 i;
    public final i06 j;
    public final b16 k;
    public final e40 l;
    public we3 m;
    public boolean n;
    public boolean o;
    public final ArrayList p;

    public hc4(Context context, e4 e4Var, bf5 bf5Var, d9 d9Var, io4 io4Var, gj4 gj4Var, String str, ba baVar) {
        zg5 zg5Var;
        ea eaVar = new ea(context, e4Var, bf5Var);
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        i06 i06Var = new i06(io4Var);
        b16 b16Var = new b16();
        e40 e40Var = new e40();
        this.a = context;
        this.b = e4Var;
        this.c = d9Var;
        this.d = io4Var;
        this.e = gj4Var;
        this.f = str;
        this.g = baVar;
        this.h = eaVar;
        this.i = zg5Var2;
        this.j = i06Var;
        this.k = b16Var;
        this.l = e40Var;
        this.p = new ArrayList();
    }

    public final synchronized void a(ArrayList arrayList) {
        dk5 dk5Var;
        try {
            this.p.clear();
            b16 b16Var = this.k;
            ba baVar = this.g;
            b16Var.getClass();
            ArrayList arrayList2 = new ArrayList(defpackage.kn1.q(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(((ck5) it.next()).d);
            }
            Set setY0 = defpackage.qn1.y0(arrayList2);
            int iOrdinal = baVar.ordinal();
            if (iOrdinal == 0) {
                if (!(setY0 instanceof Collection) || !setY0.isEmpty()) {
                    Iterator it2 = setY0.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (((dk5) it2.next()) == dk5.DSP) {
                                dk5Var = null;
                                break;
                            }
                        }
                    }
                }
                dk5Var = dk5.AD;
                break;
            }
            if (iOrdinal == 1) {
                dk5Var = dk5.DSP;
            } else {
                if (iOrdinal != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                dk5Var = dk5.AD;
            }
            ArrayList arrayList3 = new ArrayList();
            ArrayList<ck5> arrayList4 = new ArrayList();
            for (Object obj : arrayList) {
                String str = ((ck5) obj).b;
                arrayList4.add(obj);
            }
            for (ck5 ck5Var : arrayList4) {
                String str2 = ck5Var.b;
                long j = ck5Var.a;
                int i = ck5Var.c;
                dk5 dk5Var2 = ck5Var.d;
                arrayList3.add(new a16(i, j, str2, (dk5Var2 != dk5.UNDEFINED || dk5Var == null) ? dk5Var2 : dk5Var));
            }
            this.p.addAll(arrayList3);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b() {
        this.j.b();
        Iterator it = this.p.iterator();
        while (it.hasNext()) {
            ((a16) it.next()).e = null;
        }
    }

    public final i66 b(a16 a16Var) {
        i66 i66VarB = this.e.b(a16Var.a());
        Objects.toString(i66VarB);
        return i66VarB;
    }

    public final synchronized void a(d9 d9Var, ArrayList arrayList) {
        this.d.a(d9Var);
        this.p.clear();
        this.d.invalidate();
        this.o = false;
        b();
        a(arrayList);
    }

    public final synchronized void a(a16 a16Var, g66 g66Var) {
        i16 i16Var;
        try {
            int iOrdinal = a16Var.d.ordinal();
            if (iOrdinal == 0) {
                i16Var = i16.IMPRESSION;
            } else if (iOrdinal == 1) {
                i16Var = i16.DSP_IMPRESSION;
            } else {
                if (iOrdinal != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                i16Var = i16.UNKNOWN;
            }
            ea.a(this.h, a16Var.a, i16Var, this.l.a(this.b, this.c), 4);
            if (!this.n) {
                this.n = true;
                we3 we3Var = this.m;
                if (we3Var != null) {
                    we3Var.c();
                }
            }
            if (!this.o && this.p.isEmpty()) {
                this.o = true;
                we3 we3Var2 = this.m;
                if (we3Var2 != null) {
                    we3Var2.g();
                }
            }
            this.d.a(a16Var.d, g66Var);
            io4 io4Var = this.d;
            dk5 dk5Var = a16Var.d;
            ArrayList arrayList = this.p;
            ArrayList arrayList2 = new ArrayList(defpackage.kn1.q(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(((a16) it.next()).d);
            }
            io4Var.a(dk5Var, arrayList2, g66Var);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void a() {
        if (uu4.h.a(this.a).a() && !this.p.isEmpty() && !this.j.a()) {
            this.j.a(this);
        }
    }

    public final i66 a(a16 a16Var) {
        i66 i66VarA;
        fe5 fe5VarA = this.i.a(this.a);
        boolean zB0 = fe5VarA != null ? fe5VarA.B0() : false;
        gj4 gj4Var = this.e;
        if (zB0) {
            i66VarA = gj4Var.b(a16Var.a());
        } else {
            i66VarA = gj4Var.a(a16Var.a());
        }
        Objects.toString(i66VarA);
        return i66VarA;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0017 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:14:0x0019 A[Catch: all -> 0x0015, TRY_LEAVE, TryCatch #0 {all -> 0x0015, blocks: (B:3:0x0001, B:10:0x0011, B:14:0x0019), top: B:19:0x0001 }] */
    public final synchronized void a(ou4 ou4Var, boolean z) {
        try {
            Objects.toString(ou4Var);
            int iOrdinal = ou4Var.ordinal();
            if (iOrdinal == 0) {
                if (z) {
                    a();
                }
            } else if (iOrdinal == 1) {
                b();
            } else if (iOrdinal == 2) {
                if (z) {
                    a();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
