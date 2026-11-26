package yads;

import android.net.Uri;
import androidx.media3.datasource.cache.ContentMetadata;
import java.io.InterruptedIOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class cw implements wc0 {
    public final yv a;
    public final ex2 b;
    public final iv5 c;
    public final wc0 d;
    public final iw e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public Uri i;
    public bd0 j;
    public bd0 k;
    public wc0 l;
    public long m;
    public long n;
    public long o;
    public qk5 p;
    public boolean q;
    public boolean r;
    public long s;

    public cw(yv yvVar, wc0 wc0Var, ex2 ex2Var, aw awVar, iw iwVar, int i) {
        this.a = yvVar;
        this.b = ex2Var;
        this.e = iwVar == null ? iw.a : iwVar;
        this.f = (i & 1) != 0;
        this.g = false;
        this.h = false;
        if (wc0Var != null) {
            this.d = wc0Var;
            this.c = awVar != null ? new iv5(wc0Var, awVar) : null;
        } else {
            this.d = dv4.a;
            this.c = null;
        }
    }

    public final void a(bd0 bd0Var, boolean z) throws InterruptedIOException {
        qk5 qk5VarC;
        long j;
        long j2;
        bd0 bd0Var2;
        wc0 wc0Var;
        String str = bd0Var.h;
        int i = u56.a;
        if (this.r) {
            qk5VarC = null;
        } else {
            boolean z2 = this.f;
            yv yvVar = this.a;
            if (z2) {
                try {
                    long j3 = this.n;
                    long j4 = this.o;
                    ok5 ok5Var = (ok5) yvVar;
                    synchronized (ok5Var) {
                        ok5Var.a();
                        while (true) {
                            qk5VarC = ok5Var.c(str, j3, j4);
                            if (qk5VarC != null) {
                                break;
                            } else {
                                ok5Var.wait();
                            }
                        }
                    }
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    throw new InterruptedIOException();
                }
            } else {
                qk5VarC = ((ok5) yvVar).c(str, this.n, this.o);
            }
        }
        if (qk5VarC == null) {
            wc0 wc0Var2 = this.d;
            Uri uri = bd0Var.a;
            long j5 = bd0Var.b;
            int i2 = bd0Var.c;
            byte[] bArr = bd0Var.d;
            Map map = bd0Var.e;
            String str2 = bd0Var.h;
            int i3 = bd0Var.i;
            j = -1;
            Object obj = bd0Var.j;
            long j6 = this.n;
            long j7 = this.o;
            zj.a(uri, "The uri must be set.");
            bd0Var2 = new bd0(uri, j5, i2, bArr, map, j6, j7, str2, i3, obj);
            qk5VarC = qk5VarC;
            wc0Var = wc0Var2;
        } else {
            j = -1;
            if (qk5VarC.e) {
                Uri uriFromFile = Uri.fromFile(qk5VarC.f);
                long j8 = qk5VarC.c;
                long j9 = this.n - j8;
                long jMin = qk5VarC.d - j9;
                long j10 = this.o;
                if (j10 != -1) {
                    jMin = Math.min(jMin, j10);
                }
                long j11 = jMin;
                int i4 = bd0Var.c;
                byte[] bArr2 = bd0Var.d;
                Map map2 = bd0Var.e;
                String str3 = bd0Var.h;
                int i5 = bd0Var.i;
                Object obj2 = bd0Var.j;
                zj.a(uriFromFile, "The uri must be set.");
                bd0Var2 = new bd0(uriFromFile, j8, i4, bArr2, map2, j9, j11, str3, i5, obj2);
                wc0Var = this.b;
            } else {
                long jMin2 = qk5VarC.d;
                long j12 = this.o;
                if (jMin2 == -1) {
                    j2 = j12;
                } else {
                    if (j12 != -1) {
                        jMin2 = Math.min(jMin2, j12);
                    }
                    j2 = jMin2;
                }
                Uri uri2 = bd0Var.a;
                long j13 = bd0Var.b;
                int i6 = bd0Var.c;
                byte[] bArr3 = bd0Var.d;
                Map map3 = bd0Var.e;
                String str4 = bd0Var.h;
                int i7 = bd0Var.i;
                Object obj3 = bd0Var.j;
                long j14 = this.n;
                zj.a(uri2, "The uri must be set.");
                bd0Var2 = new bd0(uri2, j13, i6, bArr3, map3, j14, j2, str4, i7, obj3);
                wc0Var = this.c;
                if (wc0Var == null) {
                    wc0Var = this.d;
                    ((ok5) this.a).b(qk5VarC);
                    qk5VarC = null;
                }
            }
        }
        this.s = (this.r || wc0Var != this.d) ? Long.MAX_VALUE : this.n + 102400;
        if (z) {
            wc0 wc0Var3 = this.l;
            wc0 wc0Var4 = this.d;
            if (wc0Var3 != wc0Var4) {
                defpackage.ud.g();
                return;
            } else {
                if (wc0Var == wc0Var4) {
                    return;
                }
                try {
                    g();
                } catch (Throwable th) {
                    if (!qk5VarC.e) {
                        ((ok5) this.a).b(qk5VarC);
                    }
                    throw th;
                }
            }
        }
        if (qk5VarC != null && !qk5VarC.e) {
            this.p = qk5VarC;
        }
        this.l = wc0Var;
        this.k = bd0Var2;
        this.m = 0L;
        long jA = wc0Var.a(bd0Var2);
        j60 j60Var = new j60();
        if (bd0Var2.g == j && jA != j) {
            this.o = jA;
            j60Var.a.put(ContentMetadata.KEY_CONTENT_LENGTH, Long.valueOf(this.n + jA));
            j60Var.b.remove(ContentMetadata.KEY_CONTENT_LENGTH);
        }
        if (!h()) {
            Uri uriD = wc0Var.d();
            this.i = uriD;
            Uri uri3 = !bd0Var.a.equals(uriD) ? this.i : null;
            if (uri3 == null) {
                j60Var.b.add(ContentMetadata.KEY_REDIRECTED_URI);
                j60Var.a.remove(ContentMetadata.KEY_REDIRECTED_URI);
            } else {
                String string = uri3.toString();
                HashMap map4 = j60Var.a;
                string.getClass();
                map4.put(ContentMetadata.KEY_REDIRECTED_URI, string);
                j60Var.b.remove(ContentMetadata.KEY_REDIRECTED_URI);
            }
        }
        if (this.l == this.c) {
            ((ok5) this.a).a(str, j60Var);
        }
    }

    @Override // yads.wc0
    public final Map b() {
        return !h() ? this.d.b() : Collections.EMPTY_MAP;
    }

    @Override // yads.tc0
    public final int c(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        if (this.o == 0) {
            return -1;
        }
        bd0 bd0Var = this.j;
        bd0Var.getClass();
        bd0 bd0Var2 = this.k;
        bd0Var2.getClass();
        try {
            if (this.n >= this.s) {
                a(bd0Var, true);
            }
            wc0 wc0Var = this.l;
            wc0Var.getClass();
            int iC = wc0Var.c(bArr, i, i2);
            if (iC == -1) {
                if (!h()) {
                    long j = bd0Var2.g;
                    if (j == -1 || this.m < j) {
                        String str = bd0Var.h;
                        int i3 = u56.a;
                        this.o = 0L;
                        if (this.l == this.c) {
                            j60 j60Var = new j60();
                            j60Var.a.put(ContentMetadata.KEY_CONTENT_LENGTH, Long.valueOf(this.n));
                            j60Var.b.remove(ContentMetadata.KEY_CONTENT_LENGTH);
                            ((ok5) this.a).a(str, j60Var);
                        }
                        return iC;
                    }
                }
                long j2 = this.o;
                if (j2 <= 0) {
                    if (j2 == -1) {
                    }
                }
                g();
                a(bd0Var, false);
                return c(bArr, i, i2);
            }
            long j3 = iC;
            this.n += j3;
            this.m += j3;
            long j4 = this.o;
            if (j4 != -1) {
                this.o = j4 - j3;
                return iC;
            }
            return iC;
        } catch (Throwable th) {
            if (h() || (th instanceof vv)) {
                this.q = true;
            }
            throw th;
        }
    }

    @Override // yads.wc0
    public final void close() {
        this.j = null;
        this.i = null;
        this.n = 0L;
        try {
            g();
        } catch (Throwable th) {
            if (h() || (th instanceof vv)) {
                this.q = true;
            }
            throw th;
        }
    }

    @Override // yads.wc0
    public final Uri d() {
        return this.i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void g() {
        wc0 wc0Var = this.l;
        if (wc0Var == null) {
            return;
        }
        try {
            wc0Var.close();
        } finally {
            this.k = null;
            this.l = null;
            qk5 qk5Var = this.p;
            if (qk5Var != null) {
                ((ok5) this.a).b(qk5Var);
                this.p = null;
            }
        }
    }

    public final boolean h() {
        return this.l == this.b;
    }

    @Override // yads.wc0
    public final long a(bd0 bd0Var) {
        long jA;
        try {
            ((defpackage.xp) this.e).getClass();
            String strB = iw.b(bd0Var);
            bd0Var.getClass();
            Uri uri = bd0Var.a;
            long j = bd0Var.b;
            int i = bd0Var.c;
            byte[] bArr = bd0Var.d;
            Map map = bd0Var.e;
            long j2 = bd0Var.f;
            long j3 = bd0Var.g;
            int i2 = bd0Var.i;
            Object obj = bd0Var.j;
            zj.a(uri, "The uri must be set.");
            bd0 bd0Var2 = new bd0(uri, j, i, bArr, map, j2, j3, strB, i2, obj);
            this.j = bd0Var2;
            String strA = ((ok5) this.a).b(strB).a();
            Uri uri2 = strA == null ? null : Uri.parse(strA);
            if (uri2 != null) {
                uri = uri2;
            }
            this.i = uri;
            this.n = bd0Var.f;
            boolean z = (this.g && this.q) || (this.h && bd0Var.g == -1);
            this.r = z;
            if (z) {
                this.o = -1L;
                jA = -1;
            } else {
                jA = i60.a(((ok5) this.a).b(strB));
                this.o = jA;
                if (jA != -1) {
                    jA -= bd0Var.f;
                    this.o = jA;
                    if (jA < 0) {
                        throw new xc0(2008);
                    }
                }
            }
            long j4 = bd0Var.g;
            if (j4 != -1) {
                jA = jA == -1 ? j4 : Math.min(jA, j4);
                this.o = jA;
            }
            if (jA > 0 || jA == -1) {
                a(bd0Var2, false);
            }
            long j5 = bd0Var.g;
            return j5 != -1 ? j5 : this.o;
        } catch (Throwable th) {
            if (h() || (th instanceof vv)) {
                this.q = true;
            }
            throw th;
        }
    }

    @Override // yads.wc0
    public final void a(p16 p16Var) {
        p16Var.getClass();
        this.b.a(p16Var);
        this.d.a(p16Var);
    }
}
