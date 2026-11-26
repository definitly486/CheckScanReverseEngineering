package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class i06 {
    public final lv5 a;
    public final j13 b;
    public int c = 65535;
    public final b d = new b(0, 65535, null);

    public interface a {
        void d(int i);
    }

    public final class b {
        public final int b;
        public int c;
        public int d;
        public final a e;
        public final bu0 a = new bu0();
        public boolean f = false;

        public b(int i, int i2, a aVar) {
            this.b = i;
            this.c = i2;
            this.e = aVar;
        }

        public final int a(int i) {
            if (i > 0 && Integer.MAX_VALUE - i < this.c) {
                jn.f(this.b, "Window size overflow for stream: ");
                return 0;
            }
            int i2 = this.c + i;
            this.c = i2;
            return i2;
        }

        public final void b(int i, bu0 bu0Var, boolean z) {
            do {
                i06 i06Var = i06.this;
                int iMin = Math.min(i, i06Var.b.b0());
                int i2 = -iMin;
                i06Var.d.a(i2);
                a(i2);
                try {
                    i06Var.b.w(bu0Var.c == ((long) iMin) && z, this.b, bu0Var, iMin);
                    this.e.d(iMin);
                    i -= iMin;
                } catch (IOException e) {
                    ti0.f(e);
                    return;
                }
            } while (i > 0);
        }

        public final void c(int i, c cVar) {
            int i2 = this.c;
            i06 i06Var = i06.this;
            int iMin = Math.min(i, Math.min(i2, i06Var.d.c));
            int i3 = 0;
            while (true) {
                bu0 bu0Var = this.a;
                long j = bu0Var.c;
                if (j <= 0 || iMin <= 0) {
                    return;
                }
                if (iMin >= j) {
                    int i4 = (int) j;
                    i3 += i4;
                    b(i4, bu0Var, this.f);
                } else {
                    i3 += iMin;
                    b(iMin, bu0Var, false);
                }
                cVar.a++;
                iMin = Math.min(i - i3, Math.min(this.c, i06Var.d.c));
            }
        }
    }

    public static final class c {
        public int a;
    }

    public i06(lv5 lv5Var, j13 j13Var) {
        this.a = lv5Var;
        this.b = j13Var;
    }

    public final void a(boolean z, b bVar, bu0 bu0Var, boolean z2) {
        o8.l(bu0Var, "source");
        int iMin = Math.min(bVar.c, i06.this.d.c);
        bu0 bu0Var2 = bVar.a;
        boolean z3 = bu0Var2.c > 0;
        int i = (int) bu0Var.c;
        if (z3 || iMin < i) {
            if (!z3 && iMin > 0) {
                bVar.b(iMin, bu0Var, false);
            }
            bu0Var2.H(bu0Var, (int) bu0Var.c);
            bVar.f = z | bVar.f;
        } else {
            bVar.b(i, bu0Var, z);
        }
        if (z2) {
            try {
                this.b.flush();
            } catch (IOException e) {
                ti0.f(e);
            }
        }
    }

    public final void b(b bVar, int i) {
        if (bVar == null) {
            this.d.a(i);
            c();
            return;
        }
        bVar.a(i);
        c cVar = new c();
        bVar.c(Math.min(bVar.c, i06.this.d.c), cVar);
        if (cVar.a > 0) {
            try {
                this.b.flush();
            } catch (IOException e) {
                ti0.f(e);
            }
        }
    }

    /*  JADX ERROR: JadxOverflowException in pass: LoopRegionVisitor
        jadx.core.utils.exceptions.JadxOverflowException: LoopRegionVisitor.assignOnlyInLoop endless recursion
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final void c() {
        /*
            r13 = this;
            lv5 r0 = r13.a
            i06$b[] r1 = r0.h()
            java.util.List r2 = java.util.Arrays.asList(r1)
            java.util.Collections.shuffle(r2)
            i06$b r2 = r13.d
            int r2 = r2.c
            int r3 = r1.length
        L12:
            r4 = 0
            if (r3 <= 0) goto L66
            if (r2 <= 0) goto L66
            float r5 = (float) r2
            float r6 = (float) r3
            float r5 = r5 / r6
            double r5 = (double) r5
            double r5 = java.lang.Math.ceil(r5)
            int r5 = (int) r5
            r6 = r4
            r7 = r6
        L22:
            if (r7 >= r3) goto L64
            if (r2 <= 0) goto L64
            r8 = r1[r7]
            int r9 = r8.c
            bu0 r10 = r8.a
            long r11 = r10.c
            int r11 = (int) r11
            int r9 = java.lang.Math.min(r9, r11)
            int r9 = java.lang.Math.max(r4, r9)
            int r11 = r8.d
            int r9 = r9 - r11
            int r9 = java.lang.Math.min(r9, r5)
            int r9 = java.lang.Math.min(r2, r9)
            if (r9 <= 0) goto L4a
            int r11 = r8.d
            int r11 = r11 + r9
            r8.d = r11
            int r2 = r2 - r9
        L4a:
            int r9 = r8.c
            long r10 = r10.c
            int r10 = (int) r10
            int r9 = java.lang.Math.min(r9, r10)
            int r9 = java.lang.Math.max(r4, r9)
            int r10 = r8.d
            int r9 = r9 - r10
            if (r9 <= 0) goto L61
            int r9 = r6 + 1
            r1[r6] = r8
            r6 = r9
        L61:
            int r7 = r7 + 1
            goto L22
        L64:
            r3 = r6
            goto L12
        L66:
            i06$c r1 = new i06$c
            r1.<init>()
            i06$b[] r0 = r0.h()
            int r2 = r0.length
            r3 = r4
        L71:
            if (r3 >= r2) goto L7f
            r5 = r0[r3]
            int r6 = r5.d
            r5.c(r6, r1)
            r5.d = r4
            int r3 = r3 + 1
            goto L71
        L7f:
            int r0 = r1.a
            if (r0 <= 0) goto L8d
            j13 r13 = r13.b     // Catch: java.io.IOException -> L89
            r13.flush()     // Catch: java.io.IOException -> L89
            return
        L89:
            r13 = move-exception
            defpackage.ti0.f(r13)
        L8d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.i06.c():void");
    }
}
