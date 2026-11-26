package yads;

import android.os.Handler;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class nw4 implements k06 {
    public final lc5 a;
    public final a03 b = new a03();
    public final j84 c = new j84();
    public long d = C.TIME_UNSET;
    public final /* synthetic */ ow4 e;

    public nw4(ow4 ow4Var, aj0 aj0Var) {
        this.e = ow4Var;
        this.a = new lc5(aj0Var, null, null);
    }

    @Override // yads.k06
    public final void a(long j, int i, int i2, int i3, j06 j06Var) {
        long jA;
        j84 j84Var;
        long jF;
        this.a.a(j, i, i2, i3, j06Var);
        while (this.a.a(false)) {
            this.c.b();
            if (this.a.a(this.b, (mi0) this.c, 0, false) == -4) {
                this.c.c();
                j84Var = this.c;
            } else {
                j84Var = null;
            }
            if (j84Var != null) {
                long j2 = j84Var.f;
                h84 h84VarA = this.e.d.a(j84Var);
                if (h84VarA != null) {
                    ep2 ep2Var = (ep2) h84VarA.b[0];
                    String str = ep2Var.b;
                    String str2 = ep2Var.c;
                    if ("urn:mpeg:dash:event:2012".equals(str) && ("1".equals(str2) || ExifInterface.GPS_MEASUREMENT_2D.equals(str2) || ExifInterface.GPS_MEASUREMENT_3D.equals(str2))) {
                        try {
                            jF = u56.f(u56.a(ep2Var.f));
                        } catch (xs4 unused) {
                            jF = -9223372036854775807L;
                        }
                        if (jF != C.TIME_UNSET) {
                            mw4 mw4Var = new mw4(j2, jF);
                            Handler handler = this.e.e;
                            handler.sendMessage(handler.obtainMessage(1, mw4Var));
                        }
                    }
                }
            }
        }
        lc5 lc5Var = this.a;
        ic5 ic5Var = lc5Var.a;
        synchronized (lc5Var) {
            int i4 = lc5Var.s;
            jA = i4 == 0 ? -1L : lc5Var.a(i4);
        }
        ic5Var.a(jA);
    }

    @Override // yads.k06
    public final int a(tc0 tc0Var, int i, boolean z) {
        return this.a.b(tc0Var, i, z);
    }

    @Override // yads.k06
    public final void a(int i, os4 os4Var) {
        this.a.a(i, os4Var);
    }

    @Override // yads.k06
    public final void a(vz2 vz2Var) {
        this.a.a(vz2Var);
    }
}
