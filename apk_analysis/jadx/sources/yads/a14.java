package yads;

import androidx.media3.common.C;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class a14 {
    public final Object a;
    public final Object b;
    public final mc5[] c;
    public boolean d;
    public boolean e;
    public c14 f;
    public boolean g;
    public final boolean[] h;
    public final gs[] i;
    public final p06 j;
    public final q14 k;
    public a14 l;
    public g06 m;
    public q06 n;
    public long o;

    public a14(gs[] gsVarArr, long j, p06 p06Var, aj0 aj0Var, q14 q14Var, c14 c14Var, q06 q06Var) {
        this.i = gsVarArr;
        this.o = j;
        this.j = p06Var;
        this.k = q14Var;
        h14 h14Var = c14Var.a;
        this.b = h14Var.a;
        this.f = c14Var;
        this.m = g06.e;
        this.n = q06Var;
        this.c = new mc5[gsVarArr.length];
        this.h = new boolean[gsVarArr.length];
        long j2 = c14Var.b;
        long j3 = c14Var.d;
        q14Var.getClass();
        Object objC = f.c(h14Var.a);
        h14 h14VarA = h14Var.a(f.b(h14Var.a));
        p14 p14Var = (p14) q14Var.d.get(objC);
        p14Var.getClass();
        q14Var.i.add(p14Var);
        o14 o14Var = (o14) q14Var.h.get(p14Var);
        if (o14Var != null) {
            o14Var.a.b(o14Var.b);
        }
        p14Var.c.add(h14VarA);
        z04 z04VarA = p14Var.a.a(h14VarA, aj0Var, j2);
        q14Var.c.put(z04VarA, p14Var);
        Iterator it = q14Var.i.iterator();
        while (it.hasNext()) {
            p14 p14Var2 = (p14) it.next();
            if (p14Var2.c.isEmpty()) {
                o14 o14Var2 = (o14) q14Var.h.get(p14Var2);
                if (o14Var2 != null) {
                    o14Var2.a.a(o14Var2.b);
                }
                it.remove();
            }
        }
        this.a = j3 != C.TIME_UNSET ? new t00(z04VarA, true, 0L, j3) : z04VarA;
    }

    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.Object, yads.z04] */
    public final long a(q06 q06Var, long j, boolean z, boolean[] zArr) {
        q06 q06Var2;
        int i = 0;
        int i2 = 0;
        while (true) {
            boolean z2 = true;
            if (i2 >= q06Var.a) {
                break;
            }
            boolean[] zArr2 = this.h;
            if (z || (q06Var2 = this.n) == null || !u56.a(q06Var.b[i2], q06Var2.b[i2]) || !u56.a(q06Var.c[i2], q06Var2.c[i2])) {
                z2 = false;
            }
            zArr2[i2] = z2;
            i2++;
        }
        mc5[] mc5VarArr = this.c;
        int i3 = 0;
        while (true) {
            gs[] gsVarArr = this.i;
            if (i3 >= gsVarArr.length) {
                break;
            }
            if (gsVarArr[i3].b == -2) {
                mc5VarArr[i3] = null;
            }
            i3++;
        }
        a();
        this.n = q06Var;
        if (this.l == null) {
            int i4 = 0;
            while (true) {
                q06 q06Var3 = this.n;
                if (i4 >= q06Var3.a) {
                    break;
                }
                boolean zA = q06Var3.a(i4);
                er2 er2Var = this.n.c[i4];
                if (zA && er2Var != null) {
                    er2Var.a();
                }
                i4++;
            }
        }
        long jA = this.a.a(q06Var.c, this.h, this.c, zArr, j);
        mc5[] mc5VarArr2 = this.c;
        int i5 = 0;
        while (true) {
            gs[] gsVarArr2 = this.i;
            if (i5 >= gsVarArr2.length) {
                break;
            }
            if (gsVarArr2[i5].b == -2 && this.n.a(i5)) {
                mc5VarArr2[i5] = new cn2();
            }
            i5++;
        }
        this.e = false;
        while (true) {
            mc5[] mc5VarArr3 = this.c;
            if (i >= mc5VarArr3.length) {
                return jA;
            }
            if (mc5VarArr3[i] != null) {
                if (!q06Var.a(i)) {
                    defpackage.ud.g();
                    return 0L;
                }
                if (this.i[i].b != -2) {
                    this.e = true;
                }
            } else if (q06Var.c[i] != null) {
                defpackage.ud.g();
                return 0L;
            }
            i++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, yads.z04] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void b() {
        a();
        q14 q14Var = this.k;
        ?? r4 = this.a;
        try {
            if (!(r4 instanceof t00)) {
                p14 p14Var = (p14) q14Var.c.remove(r4);
                p14Var.getClass();
                p14Var.a.a((z04) r4);
                p14Var.c.remove(((ex3) r4).b);
                if (!q14Var.c.isEmpty()) {
                    Iterator it = q14Var.i.iterator();
                    while (it.hasNext()) {
                        p14 p14Var2 = (p14) it.next();
                        if (p14Var2.c.isEmpty()) {
                            o14 o14Var = (o14) q14Var.h.get(p14Var2);
                            if (o14Var != null) {
                                o14Var.a.a(o14Var.b);
                            }
                            it.remove();
                        }
                    }
                }
                if (p14Var.e && p14Var.c.isEmpty()) {
                    o14 o14Var2 = (o14) q14Var.h.remove(p14Var);
                    o14Var2.getClass();
                    o14Var2.a.c(o14Var2.b);
                    o14Var2.a.a((l14) o14Var2.c);
                    o14Var2.a.a((ul2) o14Var2.c);
                    q14Var.i.remove(p14Var);
                    return;
                }
                return;
            }
            z04 z04Var = ((t00) r4).b;
            p14 p14Var3 = (p14) q14Var.c.remove(z04Var);
            p14Var3.getClass();
            p14Var3.a.a(z04Var);
            p14Var3.c.remove(((ex3) z04Var).b);
            if (!q14Var.c.isEmpty()) {
                Iterator it2 = q14Var.i.iterator();
                while (it2.hasNext()) {
                    p14 p14Var4 = (p14) it2.next();
                    if (p14Var4.c.isEmpty()) {
                        o14 o14Var3 = (o14) q14Var.h.get(p14Var4);
                        if (o14Var3 != null) {
                            o14Var3.a.a(o14Var3.b);
                        }
                        it2.remove();
                    }
                }
            }
            if (p14Var3.e && p14Var3.c.isEmpty()) {
                o14 o14Var4 = (o14) q14Var.h.remove(p14Var3);
                o14Var4.getClass();
                o14Var4.a.c(o14Var4.b);
                o14Var4.a.a((l14) o14Var4.c);
                o14Var4.a.a((ul2) o14Var4.c);
                q14Var.i.remove(p14Var3);
            }
        } catch (RuntimeException e) {
            sv3.b("MediaPeriodHolder", sv3.a("Period release failed.", e));
        }
    }

    public final void a() {
        if (this.l != null) {
            return;
        }
        int i = 0;
        while (true) {
            q06 q06Var = this.n;
            if (i >= q06Var.a) {
                return;
            }
            boolean zA = q06Var.a(i);
            er2 er2Var = this.n.c[i];
            if (zA && er2Var != null) {
                er2Var.b();
            }
            i++;
        }
    }
}
