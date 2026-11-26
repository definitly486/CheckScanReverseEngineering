package defpackage;

import java.text.MessageFormat;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes5.dex */
public final class o91 extends n91 {
    public final s91 a;
    public final pv8 b;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[n91.a.values().length];
            a = iArr;
            try {
                iArr[n91.a.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[n91.a.WARNING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[n91.a.INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public o91(s91 s91Var, pv8 pv8Var) {
        this.a = s91Var;
        o8.l(pv8Var, "time");
        this.b = pv8Var;
    }

    public static Level d(n91.a aVar) {
        int i = a.a[aVar.ordinal()];
        if (i == 1 || i == 2) {
            return Level.FINE;
        }
        return i != 3 ? Level.FINEST : Level.FINER;
    }

    @Override // defpackage.n91
    public final void a(n91.a aVar, String str) {
        h94.a aVar2;
        s91 s91Var = this.a;
        m94 m94Var = s91Var.b;
        Level levelD = d(aVar);
        if (s91.c.isLoggable(levelD)) {
            s91.a(m94Var, levelD, str);
        }
        if (!c(aVar) || aVar == n91.a.DEBUG) {
            return;
        }
        int i = a.a[aVar.ordinal()];
        if (i != 1) {
            aVar2 = i != 2 ? h94.a.CT_INFO : h94.a.CT_WARNING;
        } else {
            aVar2 = h94.a.CT_ERROR;
        }
        h94.a aVar3 = aVar2;
        long jB = this.b.b();
        o8.l(str, "description");
        o8.l(aVar3, "severity");
        new h94(str, aVar3, jB, null);
        synchronized (s91Var.a) {
        }
    }

    @Override // defpackage.n91
    public final void b(n91.a aVar, String str, Object... objArr) {
        a(aVar, (c(aVar) || s91.c.isLoggable(d(aVar))) ? MessageFormat.format(str, objArr) : null);
    }

    public final boolean c(n91.a aVar) {
        if (aVar == n91.a.DEBUG) {
            return false;
        }
        synchronized (this.a.a) {
        }
        return false;
    }
}
