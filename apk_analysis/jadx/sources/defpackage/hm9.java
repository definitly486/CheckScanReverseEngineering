package defpackage;

import androidx.tracing.Trace;
import java.io.IOException;
import java.util.GregorianCalendar;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes5.dex */
public final class hm9 extends w93 {
    public static final j46 g;
    public final j46 d;
    public final w93 e;
    public final LinkedHashMap f;

    static {
        String str = j46.c;
        g = j46.a.a("/", false);
    }

    public hm9(j46 j46Var, w93 w93Var, LinkedHashMap linkedHashMap) {
        w93Var.getClass();
        this.d = j46Var;
        this.e = w93Var;
        this.f = linkedHashMap;
    }

    @Override // defpackage.w93
    public final m93 E(j46 j46Var) throws IOException {
        throw new IOException("zip entries are not writable");
    }

    @Override // defpackage.w93
    public final s18 P(j46 j46Var, boolean z) throws IOException {
        j46Var.getClass();
        throw new IOException("zip file systems are read-only");
    }

    @Override // defpackage.w93
    public final v48 Q(j46 j46Var) throws Throwable {
        Throwable th;
        iy6 iy6Var;
        j46Var.getClass();
        j46 j46Var2 = g;
        j46Var2.getClass();
        gm9 gm9Var = (gm9) this.f.get(f.a(j46Var2, j46Var, true));
        if (gm9Var == null) {
            v93.d(j46Var, "no such file: ");
            return null;
        }
        long j = gm9Var.f;
        m93 m93VarY = this.e.y(this.d);
        try {
            iy6Var = new iy6(m93VarY.E(gm9Var.h));
            try {
                m93VarY.close();
                th = null;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            if (m93VarY != null) {
                try {
                    m93VarY.close();
                } catch (Throwable th4) {
                    sj0.c(th3, th4);
                }
            }
            th = th3;
            iy6Var = null;
        }
        if (th != null) {
            throw th;
        }
        iy6Var.getClass();
        mm9.f(iy6Var, null);
        if (gm9Var.g == 0) {
            return new ec3(iy6Var, j, true);
        }
        return new ec3(new a54(new iy6(new ec3(iy6Var, gm9Var.e, true)), new Inflater(true)), j, false);
    }

    @Override // defpackage.w93
    public final s18 a(j46 j46Var) throws IOException {
        throw new IOException("zip file systems are read-only");
    }

    @Override // defpackage.w93
    public final void b(j46 j46Var, j46 j46Var2) throws IOException {
        j46Var2.getClass();
        throw new IOException("zip file systems are read-only");
    }

    @Override // defpackage.w93
    public final void f(j46 j46Var) throws IOException {
        j46Var.getClass();
        throw new IOException("zip file systems are read-only");
    }

    @Override // defpackage.w93
    public final void g(j46 j46Var) throws IOException {
        j46Var.getClass();
        throw new IOException("zip file systems are read-only");
    }

    @Override // defpackage.w93
    public final List<j46> o(j46 j46Var) throws IOException {
        j46Var.getClass();
        j46 j46Var2 = g;
        j46Var2.getClass();
        gm9 gm9Var = (gm9) this.f.get(f.a(j46Var2, j46Var, true));
        if (gm9Var != null) {
            return qn1.t0(gm9Var.q);
        }
        av.c(j46Var, "not a directory: ");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:59:0x00cf  */
    @Override // defpackage.w93
    public final s93 v(j46 j46Var) throws Throwable {
        Long lValueOf;
        Long lValueOf2;
        Long l;
        Long lValueOf3;
        Throwable th;
        Throwable th2;
        j46Var.getClass();
        j46 j46Var2 = g;
        j46Var2.getClass();
        gm9 gm9VarF = (gm9) this.f.get(f.a(j46Var2, j46Var, true));
        if (gm9VarF == null) {
            return null;
        }
        long j = gm9VarF.h;
        if (j != -1) {
            m93 m93VarY = this.e.y(this.d);
            try {
                iy6 iy6Var = new iy6(m93VarY.E(j));
                try {
                    gm9VarF = mm9.f(iy6Var, gm9VarF);
                    gm9VarF.getClass();
                    try {
                        iy6Var.close();
                        th2 = null;
                    } catch (Throwable th3) {
                        th2 = th3;
                    }
                } catch (Throwable th4) {
                    try {
                        iy6Var.close();
                    } catch (Throwable th5) {
                        sj0.c(th4, th5);
                    }
                    th2 = th4;
                    gm9VarF = null;
                }
                if (th2 != null) {
                    throw th2;
                }
                try {
                    m93VarY.close();
                    th = null;
                } catch (Throwable th6) {
                    th = th6;
                }
            } catch (Throwable th7) {
                if (m93VarY != null) {
                    try {
                        m93VarY.close();
                    } catch (Throwable th8) {
                        sj0.c(th7, th8);
                    }
                }
                th = th7;
                gm9VarF = null;
            }
            if (th != null) {
                throw th;
            }
        }
        boolean z = gm9VarF.b;
        boolean z2 = !z;
        Long lValueOf4 = z ? null : Long.valueOf(gm9VarF.f);
        Long l2 = gm9VarF.m;
        if (l2 != null) {
            lValueOf = Long.valueOf((l2.longValue() / 10000) - 11644473600000L);
        } else {
            Integer num = gm9VarF.p;
            lValueOf = num != null ? Long.valueOf(((long) num.intValue()) * 1000) : null;
        }
        Long l3 = gm9VarF.k;
        if (l3 != null) {
            lValueOf2 = Long.valueOf((l3.longValue() / 10000) - 11644473600000L);
        } else {
            Integer num2 = gm9VarF.n;
            if (num2 != null) {
                lValueOf2 = Long.valueOf(((long) num2.intValue()) * 1000);
            } else {
                int i = gm9VarF.j;
                if (i != -1) {
                    int i2 = gm9VarF.i;
                    if (i == -1) {
                        lValueOf2 = null;
                    } else {
                        int i3 = (i >> 11) & 31;
                        int i4 = (i >> 5) & 63;
                        int i5 = (i & 31) << 1;
                        GregorianCalendar gregorianCalendar = new GregorianCalendar();
                        gregorianCalendar.set(14, 0);
                        gregorianCalendar.set(((i2 >> 9) & Trace.MAX_TRACE_LABEL_LENGTH) + 1980, ((i2 >> 5) & 15) - 1, i2 & 31, i3, i4, i5);
                        lValueOf2 = Long.valueOf(gregorianCalendar.getTime().getTime());
                    }
                } else {
                    lValueOf2 = null;
                }
            }
        }
        Long l4 = gm9VarF.l;
        if (l4 == null) {
            Integer num3 = gm9VarF.o;
            if (num3 != null) {
                lValueOf3 = Long.valueOf(((long) num3.intValue()) * 1000);
            } else {
                l = null;
            }
            return new s93(z2, z, null, lValueOf4, lValueOf, lValueOf2, l);
        }
        lValueOf3 = Long.valueOf((l4.longValue() / 10000) - 11644473600000L);
        l = lValueOf3;
        return new s93(z2, z, null, lValueOf4, lValueOf, lValueOf2, l);
    }

    @Override // defpackage.w93
    public final m93 y(j46 j46Var) {
        j46Var.getClass();
        throw new UnsupportedOperationException("not implemented yet!");
    }
}
