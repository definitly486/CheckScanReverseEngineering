package yads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public abstract class r75 implements Comparable {
    public final ki6 b;
    public final int c;
    public final String d;
    public final int e;
    public final Object f;
    public x85 g;
    public Integer h;
    public e85 i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n;
    public am0 o;
    public wv p;
    public Object q;
    public ej6 r;

    public r75(int i, String str, x85 x85Var) {
        Uri uri;
        String host;
        this.b = ki6.c ? new ki6() : null;
        this.f = new Object();
        this.j = true;
        int iHashCode = 0;
        this.k = false;
        this.l = false;
        this.m = false;
        this.n = false;
        this.p = null;
        this.c = i;
        this.d = str;
        this.g = x85Var;
        this.o = new am0();
        if (!TextUtils.isEmpty(str) && (uri = Uri.parse(str)) != null && (host = uri.getHost()) != null) {
            iHashCode = host.hashCode();
        }
        this.e = iHashCode;
    }

    public abstract z85 a(en4 en4Var);

    public abstract void a(Object obj);

    public final void a(String str) {
        if (ki6.c) {
            this.b.a(str, Thread.currentThread().getId());
        }
    }

    public final void b(String str) {
        e85 e85Var = this.i;
        if (e85Var != null) {
            synchronized (e85Var.b) {
                e85Var.b.remove(this);
            }
            synchronized (e85Var.j) {
                Iterator it = e85Var.j.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            }
            e85Var.a(this, 5);
        }
        if (ki6.c) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new p75(this, str, id));
                return;
            }
            this.b.a(str, id);
            ki6 ki6Var = this.b;
            toString();
            ki6Var.a();
        }
    }

    public final String c() {
        String strG = g();
        int i = this.c;
        if (i == 0 || i == -1) {
            return strG;
        }
        return Integer.toString(i) + '-' + strG;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        int iA;
        int iA2;
        r75 r75Var = (r75) obj;
        int iF = f();
        int iF2 = r75Var.f();
        if (iF == iF2) {
            iA = this.h.intValue();
            iA2 = r75Var.h.intValue();
        } else {
            iA = xn0.a(iF2);
            iA2 = xn0.a(iF);
        }
        return iA - iA2;
    }

    public Map d() {
        return Collections.EMPTY_MAP;
    }

    public final int e() {
        return this.c;
    }

    public int f() {
        return 2;
    }

    public String g() {
        return this.d;
    }

    public final boolean h() {
        boolean z;
        synchronized (this.f) {
            z = this.l;
        }
        return z;
    }

    public final boolean i() {
        boolean z;
        synchronized (this.f) {
            z = this.k;
        }
        return z;
    }

    public final void j() {
        ej6 ej6Var;
        synchronized (this.f) {
            ej6Var = this.r;
        }
        if (ej6Var != null) {
            ej6Var.b(this);
        }
    }

    public final String toString() {
        String str;
        String strE = defpackage.c9.e(this.e, new StringBuilder("0x"));
        StringBuilder sb = new StringBuilder(i() ? "[X] " : "[ ] ");
        sb.append(g());
        sb.append(" ");
        sb.append(strE);
        sb.append(" ");
        int iF = f();
        if (iF == 1) {
            str = "LOW";
        } else if (iF == 2) {
            str = "NORMAL";
        } else if (iF != 3) {
            str = iF != 4 ? "null" : "IMMEDIATE";
        } else {
            str = "HIGH";
        }
        sb.append(str);
        sb.append(" ");
        sb.append(this.h);
        return sb.toString();
    }

    public hi6 a(hi6 hi6Var) {
        return hi6Var;
    }

    public final void a(int i) {
        e85 e85Var = this.i;
        if (e85Var != null) {
            e85Var.a(this, i);
        }
    }

    public void a() {
        synchronized (this.f) {
            this.k = true;
            this.g = null;
        }
    }

    public final void a(ej6 ej6Var) {
        synchronized (this.f) {
            this.r = ej6Var;
        }
    }

    public final void a(z85 z85Var) {
        ej6 ej6Var;
        synchronized (this.f) {
            ej6Var = this.r;
        }
        if (ej6Var != null) {
            ej6Var.a(this, z85Var);
        }
    }

    public byte[] b() {
        return null;
    }
}
