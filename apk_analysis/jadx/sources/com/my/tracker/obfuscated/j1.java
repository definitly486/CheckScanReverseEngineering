package com.my.tracker.obfuscated;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class j1 {
    final h1 a;
    final int b;
    final int c;
    final int d;
    final int e;
    long f;
    long g;

    private j1(h1 h1Var, int i, int i2, int i3, int i4) {
        this.a = h1Var;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = i4;
        Long lB = h1Var.b("timestamp_base");
        if (lB == null) {
            this.f = 0L;
        } else {
            this.f = lB.longValue();
        }
        this.g = h1Var.l();
    }

    private boolean c(int i, byte[] bArr, long j) {
        try {
            return a(i, bArr, false, true, j);
        } catch (Throwable th) {
            b3.b("MyTrackerRepository error: event serialization failed, type: " + i, th);
            return false;
        }
    }

    public boolean a(int i, byte[] bArr, boolean z, boolean z2, long j) {
        boolean z3;
        long j2;
        long jC;
        try {
            long jA = h1.y;
            if (z2) {
                h1.c cVarB = null;
                z3 = false;
                try {
                    try {
                        j2 = 0;
                        cVarB = this.a.b(i, bArr);
                        if (cVarB.b()) {
                            jA = cVarB.a();
                            jC = cVarB.c();
                        } else {
                            jC = 0;
                        }
                        cVarB.close();
                    } catch (Throwable th) {
                        if (cVarB != null) {
                            cVarB.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    b3.b("MyTrackerRepository error: event insertion failed, type: " + i, th);
                    return z3;
                }
            } else {
                z3 = false;
                j2 = 0;
                jC = 0;
            }
            if (jA == h1.y) {
                b3.a("MyTrackerRepository: insert " + i + " event");
                jA = this.a.a(i, bArr, z);
                if (jA != h1.y && z) {
                    this.g++;
                }
            } else {
                b3.a("MyTrackerRepository: aggregate " + i + " event");
            }
            if (jA == h1.y) {
                b3.b("MyTrackerRepository error: event insertion failed, type: " + i);
                return z3;
            }
            if (this.f == j2) {
                c(j);
            }
            this.a.c(jA, j - this.f);
            long jD = this.a.d(jA);
            b3.a("MyTrackerRepository: event timestamps count: " + jD);
            long j3 = (long) this.b;
            if (jD <= j3) {
                return true;
            }
            long jA2 = this.a.a(jA, jD - j3);
            this.a.d(jA, jC + jA2);
            b3.a("MyTrackerRepository: maximum count of event timestamps is exceeded, remove oldest timestamps, count: " + jA2);
            return true;
        } catch (Throwable th3) {
            th = th3;
            z3 = false;
        }
    }

    public boolean b(int i, byte[] bArr, long j) {
        Throwable th;
        int i2;
        boolean z = i == 20 || i == 21;
        if (i == 24) {
            try {
                long j2 = i;
                if (this.a.f(j2) >= this.c && this.a.a(j2, bArr) == 0) {
                    b3.a("MyTrackerRepository: maximum count of mini-app custom events is exceeded, event has been skipped");
                    return false;
                }
            } catch (Throwable th2) {
                th = th2;
                i2 = i;
                b3.b("MyTrackerRepository error: event serialization failed, type: " + i2, th);
                return false;
            }
        }
        i2 = i;
        try {
            return a(i2, bArr, z, true, j);
        } catch (Throwable th3) {
            th = th3;
            b3.b("MyTrackerRepository error: event serialization failed, type: " + i2, th);
            return false;
        }
    }

    public boolean d(byte[] bArr, long j) {
        try {
            if (this.a.f(6L) >= this.c) {
                long jLongValue = 0;
                if (this.a.a(6L, bArr) == 0) {
                    b3.a("MyTrackerRepository: maximum count of custom events is exceeded, event has been skipped");
                    Long lB = this.a.b("custom_events_skipped_count");
                    if (lB != null) {
                        jLongValue = lB.longValue();
                    }
                    long j2 = jLongValue + 1;
                    b3.a("MyTrackerRepository: skipped custom events count: " + j2);
                    this.a.a("custom_events_skipped_count", Long.valueOf(j2));
                    return false;
                }
            }
            return a(6, bArr, false, true, j);
        } catch (Throwable th) {
            b3.b("MyTrackerRepository error: event serialization failed, type: 6", th);
            return false;
        }
    }

    public List e() {
        ArrayList arrayList = new ArrayList();
        h1.b bVarH = null;
        try {
            bVarH = this.a.h();
            while (bVarH.b()) {
                f fVarA = f.a(bVarH.m(), bVarH.n(), bVarH.o(), bVarH.p(), bVarH.e());
                if (fVarA != null) {
                    arrayList.add(fVarA.a(Long.valueOf(bVarH.a())));
                }
            }
            bVarH.close();
            return arrayList;
        } catch (Throwable th) {
            try {
                b3.b("MyTrackerRepository error: error while reading purchases", th);
                return arrayList;
            } finally {
                if (bVarH != null) {
                    bVarH.close();
                }
            }
        }
    }

    public long f() {
        try {
            Long lB = this.a.b("custom_events_skipped_count");
            if (lB == null) {
                return 0L;
            }
            return lB.longValue();
        } catch (Throwable th) {
            b3.b("Error: get custom events skipped count", th);
            return 0L;
        }
    }

    public List g() {
        ArrayList arrayList = new ArrayList();
        h1.e eVarK = null;
        try {
            eVarK = this.a.k();
            while (eVarK.b()) {
                s0 s0VarA = s0.a(eVarK.m(), eVarK.n(), eVarK.e());
                if (s0VarA != null) {
                    arrayList.add(s0VarA.a(Long.valueOf(eVarK.a())));
                }
            }
            eVarK.close();
            return arrayList;
        } catch (Throwable th) {
            try {
                b3.b("MyTrackerRepository error: error while reading purchases", th);
                return arrayList;
            } finally {
                if (eVarK != null) {
                    eVarK.close();
                }
            }
        }
    }

    public boolean h(byte[] bArr, long j) {
        return a(31, bArr, true, false, j);
    }

    public boolean i(byte[] bArr, long j) {
        return a(1, bArr, true, false, j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    public boolean j() {
        ?? B;
        try {
            h1.c cVarI = this.a.i();
            try {
                B = cVarI.b();
                try {
                    cVarI.close();
                    h1.f fVarA = this.a.a("default_session");
                    try {
                        B = B;
                        if (fVarA.b()) {
                            B++;
                        }
                        fVarA.close();
                    } catch (Throwable th) {
                        if (fVarA != null) {
                            try {
                                fVarA.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                } catch (Exception unused) {
                }
                return B != 0;
            } catch (Throwable th3) {
                if (cVarI != null) {
                    try {
                        cVarI.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                }
                throw th3;
            }
        } catch (Exception unused2) {
            B = 0;
        }
    }

    public boolean k(byte[] bArr, long j) {
        return c(13, bArr, j);
    }

    public boolean l(byte[] bArr, long j) {
        return a(25, bArr, false, true, j);
    }

    public boolean m(byte[] bArr, long j) {
        return a(7, bArr, true, true, j);
    }

    public boolean n(byte[] bArr, long j) {
        return a(26, bArr, false, true, j);
    }

    public boolean o(byte[] bArr, long j) {
        return a(28, bArr, false, true, j);
    }

    public boolean p(byte[] bArr, long j) {
        return a(29, bArr, false, true, j);
    }

    public boolean q(byte[] bArr, long j) {
        return a(2, bArr, true, false, j);
    }

    public boolean r(byte[] bArr, long j) {
        return a(8, bArr, true, true, j);
    }

    public boolean s(byte[] bArr, long j) {
        return a(5, bArr, true, false, j);
    }

    public long i() {
        return this.f;
    }

    public long h() {
        return this.g;
    }

    public boolean f(byte[] bArr, long j) {
        return a(10, bArr, true, false, j);
    }

    public boolean c(byte[] bArr, long j) {
        return a(32, bArr, true, false, j);
    }

    public void c(long j) {
        try {
            this.a.a("timestamp_base", Long.valueOf(j));
            this.f = j;
        } catch (Throwable th) {
            b3.b("MyTrackerRepository error: ", th);
        }
    }

    public d2 c() {
        return new e2(this.a, "default_session");
    }

    public boolean j(byte[] bArr, long j) {
        return c(9, bArr, j);
    }

    public boolean g(byte[] bArr, long j) {
        return a(27, bArr, false, true, j);
    }

    public boolean b(long j) {
        return c(3, new byte[0], j);
    }

    public boolean b(byte[] bArr, long j) {
        return a(33, bArr, true, false, j);
    }

    public b2 b() {
        return new c2(this.a);
    }

    public boolean e(byte[] bArr, long j) {
        return a(15, bArr, true, true, j);
    }

    public void b(s0 s0Var) {
        Long lB = s0Var.b();
        if (lB != null) {
            try {
                this.a.b(lB.longValue());
            } catch (Throwable th) {
                b3.b("MyTrackerRepository error: error while removing raw purchase with id " + lB, th);
            }
        }
    }

    public void b(f fVar) {
        Long lB = fVar.b();
        if (lB != null) {
            try {
                this.a.a(lB.longValue());
            } catch (Throwable th) {
                b3.b("MyTrackerRepository error: error while removing raw appgallery purchase with id " + lB, th);
            }
        }
    }

    public b d() {
        try {
            return this.a.f();
        } catch (Throwable th) {
            b3.b("MyTrackerRepository error: ", th);
            return null;
        }
    }

    public static j1 a(h1 h1Var, int i, int i2, int i3, int i4) {
        try {
            return new j1(h1Var, i, i2, i3, i4);
        } catch (Throwable th) {
            b3.b("MyTrackerRepository error: failed to create MyTrackerRepository instance", th);
            return null;
        }
    }

    public boolean a(byte[] bArr, long j) {
        return a(14, bArr, true, false, j);
    }

    public boolean a(int i, byte[] bArr, long j) {
        return a(i, bArr, true, true, j);
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00cd A[DONT_GENERATE] */
    /* JADX WARN: Not initialized variable reg: 20, insn: 0x0033: MOVE (r6 I:??[OBJECT, ARRAY]) = (r20 I:??[OBJECT, ARRAY]), block:B:12:0x0033 */
    public boolean a(long j, long j2) {
        boolean zB;
        h1.f fVar;
        h1.f fVar2;
        h1.f fVarA = null;
        try {
            fVarA = this.a.a("default_session");
            try {
                zB = fVarA.b();
                long jB = 0;
                try {
                    if (zB) {
                        long jA = fVarA.a();
                        long jM = fVarA.m();
                        long jC = fVarA.c();
                        fVar2 = fVarA;
                        if (this.f == 0) {
                            c(jM);
                        }
                        b3.a("MyTrackerRepository: finish previous session");
                        h1 h1Var = this.a;
                        if (j2 == 0) {
                            h1Var.a(jA, jM - this.f, true, 0L);
                        } else {
                            long j3 = this.f;
                            h1Var.a(jA, jM - j3, false, j2 - j3);
                        }
                        long jG = this.a.g(jA);
                        b3.a("MyTrackerRepository: session timestamps count: " + jG);
                        long j4 = (long) this.d;
                        if (jG > j4) {
                            jB = this.a.b(jA, jG - j4);
                            b3.a("MyTrackerRepository: maximum count of session timestamps is exceeded, remove oldest timestamps, count: " + jB);
                        }
                        b3.a("MyTrackerRepository: start new session");
                        this.a.a(jA, j, jC + jB);
                    } else {
                        fVar2 = fVarA;
                        b3.a("MyTrackerRepository: insert session");
                        if (this.a.a("default_session", j) == h1.y) {
                            b3.b("MyTrackerRepository error: session insertion failed ");
                            fVar2.close();
                            return false;
                        }
                        if (this.f == 0) {
                            c(j);
                        }
                    }
                    fVar2.close();
                    return true;
                } catch (Throwable th) {
                    th = th;
                    fVarA = fVar;
                    try {
                        b3.b("MyTrackerRepository error: session insertion failed ", th);
                        return zB;
                    } finally {
                        if (fVarA != null) {
                            fVarA.close();
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                zB = false;
                b3.b("MyTrackerRepository error: session insertion failed ", th);
                return zB;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public void a(s0 s0Var) {
        String string = s0Var.d().toString();
        String strA = s0Var.a();
        try {
            if (this.a.j() >= this.e) {
                b3.a("MyTrackerRepository: max count of raw purchases is reached");
                b3.a("MyTrackerRepository: raw purchase with data: " + string + ", signature " + strA + " isn't inserted");
                return;
            }
            long jA = this.a.a(string, strA, s0Var.f());
            if (jA >= 0) {
                b3.a("MyTrackerRepository: raw purchase was inserted; id: " + jA + ", data: " + string + ", signature: " + strA);
                s0Var.a(Long.valueOf(jA));
            }
        } catch (Throwable th) {
            b3.b("MyTrackerRepository error: can't insert raw purchase with data: " + string + ", signature " + strA, th);
        }
    }

    public void a(f fVar) {
        String string = fVar.e().toString();
        String strA = fVar.a();
        String strF = fVar.f();
        int iG = fVar.g();
        try {
            if (this.a.g() >= this.e) {
                b3.a("MyTrackerRepository: max count of raw purchases is reached");
                b3.a("MyTrackerRepository: appgalleery raw purchase with data: " + string + ", signature " + strA + " isn't inserted");
                return;
            }
            long jA = this.a.a(string, strA, strF, iG, fVar.h());
            if (jA >= 0) {
                b3.a("MyTrackerRepository: appgallery raw purchase was inserted; id: " + jA + ", data: " + string + ", signature: " + strA);
                fVar.a(Long.valueOf(jA));
            }
        } catch (Throwable th) {
            b3.b("MyTrackerRepository error: can't insert appgallery raw purchase with data: " + string + ", signature " + strA, th);
        }
    }

    public static j1 a(h1 h1Var) {
        return a(h1Var, 1000, 500, 500, 100);
    }

    public boolean a() {
        try {
            this.a.c();
            this.a.b();
            this.a.e();
            this.a.d();
            this.a.a();
            this.a.a("custom_events_skipped_count", (Long) null);
            this.g = 0L;
            h1.f fVarA = this.a.a("default_session");
            try {
                if (fVarA.b()) {
                    c(fVarA.m());
                } else {
                    c(0L);
                }
                fVarA.close();
                return true;
            } catch (Throwable th) {
                if (fVarA != null) {
                    try {
                        fVarA.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Throwable unused) {
            return false;
        }
    }

    public void a(byte[] bArr) {
        try {
            this.a.i(14L);
            this.a.a(bArr);
        } catch (Throwable th) {
            b3.b("MyTrackerRepository error: ", th);
        }
    }

    public void a(long j) {
        try {
            this.a.c(j);
        } catch (Throwable th) {
            b3.b("MyTrackerRepository error: ", th);
        }
    }
}
