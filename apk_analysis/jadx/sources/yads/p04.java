package yads;

import android.net.Uri;
import android.os.Bundle;
import androidx.media3.common.C;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class p04 implements kv {
    public static final jv h;
    public final String b;
    public final k04 c;
    public final j04 d;
    public final t04 e;
    public final g04 f;
    public final m04 g;

    static {
        e04 e04Var = new e04();
        le3 le3Var = oe3.c;
        k55 k55Var = k55.f;
        m04 m04Var = m04.d;
        new g04(e04Var);
        new j04(C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, -3.4028235E38f, -3.4028235E38f);
        t04 t04Var = t04.H;
        h = new defpackage.n7(7);
    }

    public p04(String str, g04 g04Var, k04 k04Var, j04 j04Var, t04 t04Var, m04 m04Var) {
        this.b = str;
        this.c = k04Var;
        this.d = j04Var;
        this.e = t04Var;
        this.f = g04Var;
        this.g = m04Var;
    }

    public static p04 a(Bundle bundle) {
        String string = bundle.getString(Integer.toString(0, 36), "");
        string.getClass();
        Bundle bundle2 = bundle.getBundle(Integer.toString(1, 36));
        j04 j04Var = bundle2 == null ? j04.g : (j04) j04.h.a(bundle2);
        Bundle bundle3 = bundle.getBundle(Integer.toString(2, 36));
        t04 t04Var = bundle3 == null ? t04.H : (t04) t04.I.a(bundle3);
        Bundle bundle4 = bundle.getBundle(Integer.toString(3, 36));
        g04 g04Var = bundle4 == null ? g04.h : (g04) f04.g.a(bundle4);
        Bundle bundle5 = bundle.getBundle(Integer.toString(4, 36));
        return new p04(string, g04Var, null, j04Var, t04Var, bundle5 == null ? m04.d : (m04) m04.e.a(bundle5));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p04)) {
            return false;
        }
        p04 p04Var = (p04) obj;
        return u56.a(this.b, p04Var.b) && this.f.equals(p04Var.f) && u56.a(this.c, p04Var.c) && u56.a(this.d, p04Var.d) && u56.a(this.e, p04Var.e) && u56.a(this.g, p04Var.g);
    }

    public final int hashCode() {
        int iHashCode = this.b.hashCode() * 31;
        k04 k04Var = this.c;
        return this.g.hashCode() + ((this.e.hashCode() + ((this.f.hashCode() + ((this.d.hashCode() + ((iHashCode + (k04Var != null ? k04Var.hashCode() : 0)) * 31)) * 31)) * 31)) * 31);
    }

    public static p04 a(String str) {
        e04 e04Var = new e04();
        le3 le3Var = oe3.c;
        k55 k55Var = k55.f;
        List list = Collections.EMPTY_LIST;
        k55 k55Var2 = k55.f;
        m04 m04Var = m04.d;
        Uri uri = str == null ? null : Uri.parse(str);
        return new p04("", new g04(e04Var), uri != null ? new k04(uri, null, list, null, k55Var2) : null, new j04(C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, -3.4028235E38f, -3.4028235E38f), t04.H, m04Var);
    }
}
