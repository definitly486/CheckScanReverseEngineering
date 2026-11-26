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
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void c(yads.ne r8) {
        /*
            r7 = this;
            monitor-enter(r7)
            yads.w04 r0 = r7.e     // Catch: java.lang.Throwable -> L2f
            r0.getClass()     // Catch: java.lang.Throwable -> L2f
            yads.kx5 r0 = r8.b     // Catch: java.lang.Throwable -> L2f
            boolean r0 = r0.c()     // Catch: java.lang.Throwable -> L2f
            if (r0 == 0) goto L10
            monitor-exit(r7)
            return
        L10:
            java.util.HashMap r0 = r7.c     // Catch: java.lang.Throwable -> L2f
            java.lang.String r1 = r7.g     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Throwable -> L2f
            yads.vl0 r0 = (yads.vl0) r0     // Catch: java.lang.Throwable -> L2f
            yads.h14 r1 = r8.d     // Catch: java.lang.Throwable -> L2f
            if (r1 == 0) goto L3a
            if (r0 == 0) goto L3a
            long r2 = r0.c     // Catch: java.lang.Throwable -> L2f
            r4 = -1
            int r4 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r4 != 0) goto L32
            int r0 = r0.b     // Catch: java.lang.Throwable -> L2f
            int r2 = r8.c     // Catch: java.lang.Throwable -> L2f
            if (r0 == r2) goto L3a
            goto L38
        L2f:
            r8 = move-exception
            goto Lc0
        L32:
            long r4 = r1.d     // Catch: java.lang.Throwable -> L2f
            int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r0 >= 0) goto L3a
        L38:
            monitor-exit(r7)
            return
        L3a:
            int r0 = r8.c     // Catch: java.lang.Throwable -> L2f
            yads.vl0 r0 = r7.a(r0, r1)     // Catch: java.lang.Throwable -> L2f
            java.lang.String r1 = r7.g     // Catch: java.lang.Throwable -> L2f
            if (r1 != 0) goto L48
            java.lang.String r1 = r0.a     // Catch: java.lang.Throwable -> L2f
            r7.g = r1     // Catch: java.lang.Throwable -> L2f
        L48:
            yads.h14 r1 = r8.d     // Catch: java.lang.Throwable -> L2f
            r2 = 1
            if (r1 == 0) goto L9c
            boolean r1 = r1.a()     // Catch: java.lang.Throwable -> L2f
            if (r1 == 0) goto L9c
            yads.h14 r1 = new yads.h14     // Catch: java.lang.Throwable -> L2f
            yads.h14 r3 = r8.d     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r4 = r3.a     // Catch: java.lang.Throwable -> L2f
            long r5 = r3.d     // Catch: java.lang.Throwable -> L2f
            int r3 = r3.b     // Catch: java.lang.Throwable -> L2f
            r1.<init>(r4, r5, r3)     // Catch: java.lang.Throwable -> L2f
            int r3 = r8.c     // Catch: java.lang.Throwable -> L2f
            yads.vl0 r1 = r7.a(r3, r1)     // Catch: java.lang.Throwable -> L2f
            boolean r3 = r1.e     // Catch: java.lang.Throwable -> L2f
            if (r3 != 0) goto L9c
            r1.e = r2     // Catch: java.lang.Throwable -> L2f
            yads.kx5 r1 = r8.b     // Catch: java.lang.Throwable -> L2f
            yads.h14 r3 = r8.d     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r3 = r3.a     // Catch: java.lang.Throwable -> L2f
            yads.hx5 r4 = r7.b     // Catch: java.lang.Throwable -> L2f
            r1.a(r3, r4)     // Catch: java.lang.Throwable -> L2f
            yads.hx5 r1 = r7.b     // Catch: java.lang.Throwable -> L2f
            yads.h14 r3 = r8.d     // Catch: java.lang.Throwable -> L2f
            int r3 = r3.b     // Catch: java.lang.Throwable -> L2f
            yads.a6 r1 = r1.h     // Catch: java.lang.Throwable -> L2f
            yads.z5 r1 = r1.a(r3)     // Catch: java.lang.Throwable -> L2f
            long r3 = r1.b     // Catch: java.lang.Throwable -> L2f
            long r3 = yads.u56.b(r3)     // Catch: java.lang.Throwable -> L2f
            yads.hx5 r1 = r7.b     // Catch: java.lang.Throwable -> L2f
            long r5 = r1.f     // Catch: java.lang.Throwable -> L2f
            long r5 = yads.u56.b(r5)     // Catch: java.lang.Throwable -> L2f
            long r5 = r5 + r3
            r3 = 0
            java.lang.Math.max(r3, r5)     // Catch: java.lang.Throwable -> L2f
            yads.w04 r1 = r7.e     // Catch: java.lang.Throwable -> L2f
            r1.getClass()     // Catch: java.lang.Throwable -> L2f
        L9c:
            boolean r1 = r0.e     // Catch: java.lang.Throwable -> L2f
            if (r1 != 0) goto La7
            r0.e = r2     // Catch: java.lang.Throwable -> L2f
            yads.w04 r1 = r7.e     // Catch: java.lang.Throwable -> L2f
            r1.getClass()     // Catch: java.lang.Throwable -> L2f
        La7:
            java.lang.String r1 = r0.a     // Catch: java.lang.Throwable -> L2f
            java.lang.String r3 = r7.g     // Catch: java.lang.Throwable -> L2f
            boolean r1 = r1.equals(r3)     // Catch: java.lang.Throwable -> L2f
            if (r1 == 0) goto Lbe
            boolean r1 = r0.f     // Catch: java.lang.Throwable -> L2f
            if (r1 != 0) goto Lbe
            r0.f = r2     // Catch: java.lang.Throwable -> L2f
            yads.w04 r1 = r7.e     // Catch: java.lang.Throwable -> L2f
            java.lang.String r0 = r0.a     // Catch: java.lang.Throwable -> L2f
            r1.a(r8, r0)     // Catch: java.lang.Throwable -> L2f
        Lbe:
            monitor-exit(r7)
            return
        Lc0:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L2f
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.wl0.c(yads.ne):void");
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
