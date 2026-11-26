package yads;

import android.net.Uri;
import java.io.InterruptedIOException;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class r15 implements nu3 {
    public final Uri a;
    public final rq5 b;
    public final ov c;
    public final v15 d;
    public final m50 e;
    public volatile boolean g;
    public long i;
    public bd0 j;
    public lc5 k;
    public boolean l;
    public final /* synthetic */ v15 m;
    public final qx4 f = new qx4();
    public boolean h = true;

    public r15(v15 v15Var, Uri uri, wc0 wc0Var, ov ovVar, v15 v15Var2, m50 m50Var) {
        this.m = v15Var;
        this.a = uri;
        this.b = new rq5(wc0Var);
        this.c = ovVar;
        this.d = v15Var2;
        this.e = m50Var;
        cu3.a.getAndIncrement();
        String str = v15Var.j;
        Map map = v15.N;
        zj.a(uri, "The uri must be set.");
        this.j = new bd0(uri, 0L, 1, null, map, 0L, -1L, str, 6, null);
    }

    @Override // yads.nu3
    public final void a() {
        int i;
        int iA = 0;
        while (iA == 0 && !this.g) {
            try {
                long j = this.f.a;
                Uri uri = this.a;
                String str = this.m.j;
                Map map = v15.N;
                zj.a(uri, "The uri must be set.");
                bd0 bd0Var = new bd0(uri, 0L, 1, null, map, j, -1L, str, 6, null);
                this.j = bd0Var;
                long jA = this.b.a(bd0Var);
                if (jA != -1) {
                    jA += j;
                    this.m.h();
                }
                this.m.s = hb3.a(this.b.a.b());
                wc0 wc0Var = this.b;
                hb3 hb3Var = this.m.s;
                if (hb3Var != null && (i = hb3Var.g) != -1) {
                    eb3 eb3Var = new eb3(wc0Var, i, this);
                    v15 v15Var = this.m;
                    v15Var.getClass();
                    lc5 lc5VarA = v15Var.a(new t15(0, true));
                    this.k = lc5VarA;
                    lc5VarA.a(v15.O);
                    wc0Var = eb3Var;
                }
                this.c.a(wc0Var, this.a, this.b.a.b(), j, jA, this.d);
                if (this.m.s != null) {
                    ws2 ws2Var = this.c.b;
                    if (ws2Var instanceof ua4) {
                        ((ua4) ws2Var).p = true;
                    }
                }
                if (this.h) {
                    ov ovVar = this.c;
                    long j2 = this.i;
                    ws2 ws2Var2 = ovVar.b;
                    ws2Var2.getClass();
                    ws2Var2.a(j, j2);
                    this.h = false;
                }
                long j3 = j;
                while (iA == 0 && !this.g) {
                    try {
                        this.e.a();
                        ov ovVar2 = this.c;
                        qx4 qx4Var = this.f;
                        ws2 ws2Var3 = ovVar2.b;
                        ws2Var3.getClass();
                        wk0 wk0Var = ovVar2.c;
                        wk0Var.getClass();
                        iA = ws2Var3.a(wk0Var, qx4Var);
                        wk0 wk0Var2 = this.c.c;
                        long j4 = wk0Var2 != null ? wk0Var2.d : -1L;
                        if (j4 > this.m.k + j3) {
                            m50 m50Var = this.e;
                            synchronized (m50Var) {
                                m50Var.a = false;
                            }
                            v15 v15Var2 = this.m;
                            v15Var2.q.post(v15Var2.p);
                            j3 = j4;
                        }
                    } catch (InterruptedException unused) {
                        throw new InterruptedIOException();
                    }
                }
                if (iA == 1) {
                    iA = 0;
                } else {
                    wk0 wk0Var3 = this.c.c;
                    if ((wk0Var3 != null ? wk0Var3.d : -1L) != -1) {
                        this.f.a = wk0Var3 != null ? wk0Var3.d : -1L;
                    }
                }
                zc0.a(this.b);
            } catch (Throwable th) {
                if (iA != 1) {
                    wk0 wk0Var4 = this.c.c;
                    if ((wk0Var4 != null ? wk0Var4.d : -1L) != -1) {
                        this.f.a = wk0Var4 != null ? wk0Var4.d : -1L;
                    }
                }
                zc0.a(this.b);
                throw th;
            }
        }
    }

    @Override // yads.nu3
    public final void b() {
        this.g = true;
    }
}
