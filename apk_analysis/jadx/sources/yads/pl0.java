package yads;

import android.net.Uri;
import androidx.media3.common.C;
import defpackage.i29;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class pl0 implements g14 {
    public final ol0 a;
    public final vc0 b;
    public final long c;
    public final long d;
    public final long e;
    public final float f;
    public final float g;

    public pl0(vc0 vc0Var, zk0 zk0Var) {
        this.b = vc0Var;
        ol0 ol0Var = new ol0(zk0Var);
        this.a = ol0Var;
        if (vc0Var != ol0Var.e) {
            ol0Var.e = vc0Var;
            ol0Var.b.clear();
            ol0Var.d.clear();
        }
        this.c = C.TIME_UNSET;
        this.d = C.TIME_UNSET;
        this.e = C.TIME_UNSET;
        this.f = -3.4028235E38f;
        this.g = -3.4028235E38f;
    }

    @Override // yads.g14
    public final cs a(p04 p04Var) {
        Throwable th;
        Uri uri;
        String str;
        List list;
        oe3 oe3Var;
        p04 p04Var2 = p04Var;
        p04Var2.c.getClass();
        String scheme = p04Var2.c.a.getScheme();
        if (scheme != null && scheme.equals(C.SSAI_SCHEME)) {
            throw null;
        }
        int iA = u56.a(p04Var2.c.a, (String) null);
        ol0 ol0Var = this.a;
        g14 g14Var = (g14) ol0Var.d.get(Integer.valueOf(iA));
        if (g14Var == null) {
            ut5 ut5VarA = ol0Var.a(iA);
            if (ut5VarA == null) {
                g14Var = null;
            } else {
                g14Var = (g14) ut5VarA.get();
                sk0 sk0Var = ol0Var.f;
                if (sk0Var != null) {
                    g14Var.a(sk0Var);
                }
                ol0Var.d.put(Integer.valueOf(iA), g14Var);
            }
        }
        zj.a(g14Var, "No suitable media source factory found for content type: " + iA);
        j04 j04Var = p04Var2.d;
        j04Var.getClass();
        long j = j04Var.b;
        long j2 = j04Var.c;
        long j3 = j04Var.d;
        float f = j04Var.e;
        float f2 = j04Var.f;
        j04 j04Var2 = p04Var2.d;
        if (j04Var2.b == C.TIME_UNSET) {
            j = this.c;
        }
        long j4 = j;
        if (j04Var2.e == -3.4028235E38f) {
            f = this.f;
        }
        float f3 = f;
        if (j04Var2.f == -3.4028235E38f) {
            f2 = this.g;
        }
        float f4 = f2;
        if (j04Var2.c == C.TIME_UNSET) {
            j2 = this.d;
        }
        long j5 = j2;
        if (j04Var2.d == C.TIME_UNSET) {
            j3 = this.e;
        }
        j04 j04Var3 = new j04(j4, j5, j3, f3, f4);
        if (j04Var3.equals(p04Var2.d)) {
            th = null;
        } else {
            new h04();
            List list2 = Collections.EMPTY_LIST;
            k55 k55Var = k55.f;
            m04 m04Var = m04.d;
            g04 g04Var = p04Var2.f;
            g04Var.getClass();
            e04 e04Var = new e04(g04Var);
            String str2 = p04Var2.b;
            t04 t04Var = p04Var2.e;
            p04Var2.d.getClass();
            m04 m04Var2 = p04Var2.g;
            k04 k04Var = p04Var2.c;
            if (k04Var != null) {
                String str3 = k04Var.c;
                Uri uri2 = k04Var.a;
                List list3 = k04Var.b;
                oe3 oe3Var2 = k04Var.d;
                le3 le3Var = oe3.c;
                oe3Var = oe3Var2;
                str = str3;
                uri = uri2;
                list = list3;
            } else {
                uri = null;
                str = null;
                list = list2;
                oe3Var = k55Var;
            }
            long j6 = j04Var3.b;
            long j7 = j04Var3.c;
            th = null;
            long j8 = j04Var3.d;
            float f5 = j04Var3.e;
            float f6 = j04Var3.f;
            k04 k04Var2 = uri != null ? new k04(uri, null, list, str, oe3Var) : null;
            String str4 = str2 != null ? str2 : "";
            g04 g04Var2 = new g04(e04Var);
            j04 j04Var4 = new j04(j6, j7, j8, f5, f6);
            if (t04Var == null) {
                t04Var = t04.H;
            }
            p04Var2 = new p04(str4, g04Var2, k04Var2, j04Var4, t04Var, m04Var2);
        }
        cs csVarA = g14Var.a(p04Var2);
        oe3 oe3Var3 = p04Var2.c.d;
        if (!oe3Var3.isEmpty()) {
            cs[] csVarArr = new cs[oe3Var3.size() + 1];
            csVarArr[0] = csVarA;
            if (oe3Var3.size() > 0) {
                this.b.getClass();
                new ArrayList(1);
                new HashSet(1);
                new k14();
                new tl2();
                le3 le3Var2 = oe3.c;
                k55 k55Var2 = k55.f;
                m04 m04Var3 = m04.d;
                Uri uri3 = Uri.EMPTY;
                throw th;
            }
            csVarA = new e84(csVarArr);
        }
        cs w00Var = csVarA;
        g04 g04Var3 = p04Var2.f;
        long j9 = g04Var3.b;
        if (j9 != 0 || g04Var3.c != Long.MIN_VALUE || g04Var3.e) {
            long jA = u56.a(j9);
            long jA2 = u56.a(p04Var2.f.c);
            g04 g04Var4 = p04Var2.f;
            w00Var = new w00(w00Var, jA, jA2, !g04Var4.f, g04Var4.d, g04Var4.e);
        }
        p04Var2.c.getClass();
        p04Var2.c.getClass();
        return w00Var;
    }

    @Override // yads.g14
    public final g14 a(sk0 sk0Var) {
        ol0 ol0Var = this.a;
        if (sk0Var != null) {
            ol0Var.f = sk0Var;
            Iterator it = ol0Var.d.values().iterator();
            while (it.hasNext()) {
                ((g14) it.next()).a(sk0Var);
            }
            return this;
        }
        defpackage.o2.d("MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
        return null;
    }

    public static g14 a(Class cls, vc0 vc0Var) {
        try {
            return (g14) cls.getConstructor(vc0.class).newInstance(vc0Var);
        } catch (Exception e) {
            i29.a(e);
            return null;
        }
    }
}
