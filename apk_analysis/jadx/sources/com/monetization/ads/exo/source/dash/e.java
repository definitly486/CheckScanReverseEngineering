package com.monetization.ads.exo.source.dash;

import android.net.Uri;
import androidx.compose.ui.autofill.AutofillUtils_androidKt;
import androidx.media3.common.C;
import java.io.FileNotFoundException;
import java.io.IOException;
import yads.au4;
import yads.cu3;
import yads.ia3;
import yads.jt4;
import yads.k14;
import yads.kc0;
import yads.ku3;
import yads.lu3;
import yads.nc0;
import yads.nu3;
import yads.qu3;
import yads.r04;
import yads.ru3;
import yads.sv3;
import yads.t56;
import yads.u56;
import yads.xc0;
import yads.xs4;

/* JADX INFO: loaded from: classes6.dex */
public final class e implements ku3 {
    public final /* synthetic */ i b;

    public e(i iVar) {
        this.b = iVar;
    }

    @Override // yads.ku3
    public final void a(nu3 nu3Var, long j, long j2) {
        jt4 jt4Var = (jt4) nu3Var;
        i iVar = this.b;
        iVar.getClass();
        long j3 = jt4Var.a;
        Uri uri = jt4Var.d.c;
        cu3 cu3Var = new cu3();
        iVar.n.getClass();
        k14 k14Var = iVar.q;
        k14Var.b(cu3Var, new r04(jt4Var.c, -1, null, 0, null, k14Var.a(C.TIME_UNSET), k14Var.a(C.TIME_UNSET)));
        kc0 kc0Var = (kc0) jt4Var.f;
        kc0 kc0Var2 = iVar.H;
        int size = kc0Var2 == null ? 0 : kc0Var2.m.size();
        long j4 = ((au4) kc0Var.m.get(0)).b;
        int i = 0;
        while (i < size && ((au4) iVar.H.m.get(i)).b < j4) {
            i++;
        }
        if (kc0Var.d) {
            if (size - i > kc0Var.m.size()) {
                sv3.d("DashMediaSource", "Loaded out of sync manifest");
            } else {
                long j5 = iVar.N;
                if (j5 == C.TIME_UNSET || kc0Var.h * 1000 > j5) {
                    iVar.M = 0;
                } else {
                    sv3.d("DashMediaSource", "Loaded stale dynamic manifest: " + kc0Var.h + ", " + iVar.N);
                }
            }
            int i2 = iVar.M;
            iVar.M = i2 + 1;
            if (i2 < iVar.n.a(jt4Var.c)) {
                iVar.D.postDelayed(iVar.v, Math.min((iVar.M - 1) * 1000, AutofillUtils_androidKt.MAX_AUTOFILL_TEXT_LENGTH));
                return;
            } else {
                iVar.C = new nc0();
                return;
            }
        }
        iVar.H = kc0Var;
        iVar.I = kc0Var.d & iVar.I;
        iVar.J = j - j2;
        iVar.K = j;
        synchronized (iVar.t) {
            try {
                if (jt4Var.b.a == iVar.F) {
                    Uri uri2 = iVar.H.k;
                    if (uri2 == null) {
                        uri2 = jt4Var.d.c;
                    }
                    iVar.F = uri2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (size != 0) {
            iVar.O += i;
            iVar.a(true);
            return;
        }
        kc0 kc0Var3 = iVar.H;
        if (!kc0Var3.d) {
            iVar.a(true);
            return;
        }
        t56 t56Var = kc0Var3.i;
        if (t56Var == null) {
            iVar.g();
            return;
        }
        String str = t56Var.a;
        if (u56.a(str, "urn:mpeg:dash:utc:direct:2014") || u56.a(str, "urn:mpeg:dash:utc:direct:2012")) {
            try {
                iVar.L = u56.f(t56Var.b) - iVar.K;
                iVar.a(true);
                return;
            } catch (xs4 e) {
                iVar.a(e);
                return;
            }
        }
        if (u56.a(str, "urn:mpeg:dash:utc:http-iso:2014") || u56.a(str, "urn:mpeg:dash:utc:http-iso:2012")) {
            jt4 jt4Var2 = new jt4(iVar.z, Uri.parse(t56Var.b), 5, new d());
            iVar.A.a(jt4Var2, new g(iVar), 1);
            k14 k14Var2 = iVar.q;
            k14Var2.c(new cu3(jt4Var2.b), new r04(jt4Var2.c, -1, null, 0, null, k14Var2.a(C.TIME_UNSET), k14Var2.a(C.TIME_UNSET)));
            return;
        }
        if (u56.a(str, "urn:mpeg:dash:utc:http-xsdate:2014") || u56.a(str, "urn:mpeg:dash:utc:http-xsdate:2012")) {
            jt4 jt4Var3 = new jt4(iVar.z, Uri.parse(t56Var.b), 5, new h());
            iVar.A.a(jt4Var3, new g(iVar), 1);
            k14 k14Var3 = iVar.q;
            k14Var3.c(new cu3(jt4Var3.b), new r04(jt4Var3.c, -1, null, 0, null, k14Var3.a(C.TIME_UNSET), k14Var3.a(C.TIME_UNSET)));
            return;
        }
        if (u56.a(str, "urn:mpeg:dash:utc:ntp:2014") || u56.a(str, "urn:mpeg:dash:utc:ntp:2012")) {
            iVar.g();
        } else {
            iVar.a(new IOException("Unsupported UTC timing scheme"));
        }
    }

    @Override // yads.ku3
    public final void a(nu3 nu3Var, long j, long j2, boolean z) {
        jt4 jt4Var = (jt4) nu3Var;
        i iVar = this.b;
        iVar.getClass();
        long j3 = jt4Var.a;
        Uri uri = jt4Var.d.c;
        cu3 cu3Var = new cu3();
        iVar.n.getClass();
        k14 k14Var = iVar.q;
        k14Var.a(cu3Var, new r04(jt4Var.c, -1, null, 0, null, k14Var.a(C.TIME_UNSET), k14Var.a(C.TIME_UNSET)));
    }

    @Override // yads.ku3
    public final lu3 a(nu3 nu3Var, long j, long j2, IOException iOException, int i) {
        long jMin;
        lu3 lu3Var;
        jt4 jt4Var = (jt4) nu3Var;
        i iVar = this.b;
        iVar.getClass();
        long j3 = jt4Var.a;
        Uri uri = jt4Var.d.c;
        cu3 cu3Var = new cu3();
        iVar.n.getClass();
        boolean z = true;
        if (!(iOException instanceof xs4) && !(iOException instanceof FileNotFoundException) && !(iOException instanceof ia3) && !(iOException instanceof qu3)) {
            Throwable cause = iOException;
            while (true) {
                if (cause != null) {
                    if ((cause instanceof xc0) && ((xc0) cause).b == 2008) {
                        jMin = -9223372036854775807L;
                        break;
                    }
                    cause = cause.getCause();
                } else {
                    jMin = Math.min((i - 1) * 1000, AutofillUtils_androidKt.MAX_AUTOFILL_TEXT_LENGTH);
                    break;
                }
            }
        } else {
            jMin = -9223372036854775807L;
            break;
        }
        if (jMin == C.TIME_UNSET) {
            lu3Var = ru3.e;
        } else {
            lu3Var = new lu3(0, jMin);
        }
        int i2 = lu3Var.a;
        if (i2 != 0 && i2 != 1) {
            z = false;
        }
        k14 k14Var = iVar.q;
        k14Var.a(cu3Var, new r04(jt4Var.c, -1, null, 0, null, k14Var.a(C.TIME_UNSET), k14Var.a(C.TIME_UNSET)), iOException, !z);
        if (!z) {
            iVar.n.getClass();
        }
        return lu3Var;
    }
}
