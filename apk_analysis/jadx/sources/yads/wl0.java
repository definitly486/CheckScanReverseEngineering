package yads;

import android.util.Base64;
import defpackage.mga;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;

/* JADX INFO: loaded from: classes6.dex */
public final class wl0 {
    public static final ut5 h = new mga();
    public static final Random i = new Random();
    public w04 e;
    public String g;
    public final ut5 d = h;
    public final jx5 a = new jx5();
    public final hx5 b = new hx5();
    public final HashMap c = new HashMap();
    public kx5 f = kx5.b;

    /* JADX WARN: Code duplicated, block: B:30:0x006a  */
    /* JADX WARN: Code duplicated, block: B:46:0x007d A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    public final vl0 a(int i2, h14 h14Var) {
        vl0 vl0Var = null;
        long j = Long.MAX_VALUE;
        for (vl0 vl0Var2 : this.c.values()) {
            long j2 = vl0Var2.c;
            if (j2 == -1 && i2 == vl0Var2.b && h14Var != null) {
                j2 = h14Var.d;
                vl0Var2.c = j2;
            }
            if (h14Var != null) {
                h14 h14Var2 = vl0Var2.d;
                if (h14Var2 == null) {
                    if (!h14Var.a()) {
                        long j3 = h14Var.d;
                        long j4 = vl0Var2.c;
                        if (j3 == j4) {
                            j2 = j4;
                            if (j2 != -1) {
                            }
                            vl0Var = vl0Var2;
                            j = j2;
                        }
                    }
                } else if (h14Var.d == h14Var2.d && h14Var.b == h14Var2.b && h14Var.c == h14Var2.c) {
                    if (j2 != -1) {
                    }
                    vl0Var = vl0Var2;
                    j = j2;
                }
            } else if (i2 == vl0Var2.b) {
                if (j2 != -1 || j2 < j) {
                    vl0Var = vl0Var2;
                    j = j2;
                } else if (j2 == j) {
                    int i3 = u56.a;
                    if (vl0Var.d != null && vl0Var2.d != null) {
                        vl0Var = vl0Var2;
                    }
                }
            }
        }
        if (vl0Var != null) {
            return vl0Var;
        }
        String str = (String) this.d.get();
        vl0 vl0Var3 = new vl0(this, str, i2, h14Var);
        this.c.put(str, vl0Var3);
        return vl0Var3;
    }

    public final void b(ne neVar) {
        h14 h14Var;
        if (neVar.b.c()) {
            this.g = null;
            return;
        }
        vl0 vl0Var = (vl0) this.c.get(this.g);
        this.g = a(neVar.c, neVar.d).a;
        c(neVar);
        h14 h14Var2 = neVar.d;
        if (h14Var2 == null || !h14Var2.a()) {
            return;
        }
        if (vl0Var != null) {
            long j = vl0Var.c;
            h14 h14Var3 = neVar.d;
            if (j == h14Var3.d && (h14Var = vl0Var.d) != null && h14Var.b == h14Var3.b && h14Var.c == h14Var3.c) {
                return;
            }
        }
        h14 h14Var4 = neVar.d;
        a(neVar.c, new h14(h14Var4.a, h14Var4.d));
        this.e.getClass();
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0036, code lost:
    
        if (r1.d < r2) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void c(ne neVar) {
        try {
            this.e.getClass();
            if (neVar.b.c()) {
                return;
            }
            vl0 vl0Var = (vl0) this.c.get(this.g);
            h14 h14Var = neVar.d;
            if (h14Var != null && vl0Var != null) {
                long j = vl0Var.c;
                if (j == -1) {
                    if (vl0Var.b != neVar.c) {
                        return;
                    }
                }
            }
            vl0 vl0VarA = a(neVar.c, h14Var);
            if (this.g == null) {
                this.g = vl0VarA.a;
            }
            h14 h14Var2 = neVar.d;
            if (h14Var2 != null && h14Var2.a()) {
                h14 h14Var3 = neVar.d;
                vl0 vl0VarA2 = a(neVar.c, new h14(h14Var3.a, h14Var3.d, h14Var3.b));
                if (!vl0VarA2.e) {
                    vl0VarA2.e = true;
                    neVar.b.a(neVar.d.a, this.b);
                    hx5 hx5Var = this.b;
                    Math.max(0L, u56.b(this.b.f) + u56.b(hx5Var.h.a(neVar.d.b).b));
                    this.e.getClass();
                }
            }
            if (!vl0VarA.e) {
                vl0VarA.e = true;
                this.e.getClass();
            }
            if (vl0VarA.a.equals(this.g) && !vl0VarA.f) {
                vl0VarA.f = true;
                this.e.a(neVar, vl0VarA.a);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void a(ne neVar) {
        w04 w04Var;
        this.g = null;
        Iterator it = this.c.values().iterator();
        while (it.hasNext()) {
            vl0 vl0Var = (vl0) it.next();
            it.remove();
            if (vl0Var.e && (w04Var = this.e) != null) {
                w04Var.b(neVar, vl0Var.a);
            }
        }
    }

    public final synchronized void a(ne neVar, int i2) {
        try {
            this.e.getClass();
            Iterator it = this.c.values().iterator();
            while (it.hasNext()) {
                vl0 vl0Var = (vl0) it.next();
                if (vl0Var.a(neVar)) {
                    it.remove();
                    if (vl0Var.e) {
                        if (vl0Var.a.equals(this.g)) {
                            this.g = null;
                        }
                        this.e.b(neVar, vl0Var.a);
                    }
                }
            }
            b(neVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    public static String a() {
        byte[] bArr = new byte[12];
        i.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }
}
