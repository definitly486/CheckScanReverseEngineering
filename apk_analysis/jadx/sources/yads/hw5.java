package yads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class hw5 extends gs implements Handler.Callback {
    public int A;
    public long B;
    public final Handler n;
    public final bq2 o;
    public final pt5 p;
    public final a03 q;
    public boolean r;
    public boolean s;
    public boolean t;
    public int u;
    public vz2 v;
    public nt5 w;
    public qt5 x;
    public rt5 y;
    public rt5 z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hw5(bq2 bq2Var, Looper looper) {
        super(3);
        pt5 pt5Var = pt5.a;
        this.o = bq2Var;
        this.n = looper == null ? null : u56.a(looper, (Handler.Callback) this);
        this.p = pt5Var;
        this.q = new a03();
        this.B = C.TIME_UNSET;
    }

    @Override // yads.gs
    public final void a(long j, long j2) {
        boolean z;
        boolean z2;
        if (this.l) {
            long j3 = this.B;
            if (j3 != C.TIME_UNSET && j >= j3) {
                n();
                this.s = true;
            }
        }
        if (this.s) {
            return;
        }
        if (this.z == null) {
            nt5 nt5Var = this.w;
            nt5Var.getClass();
            nt5Var.a(j);
            try {
                nt5 nt5Var2 = this.w;
                nt5Var2.getClass();
                this.z = nt5Var2.a();
            } catch (ot5 e) {
                sv3.b("TextRenderer", sv3.a("Subtitle decoding failed. streamFormat=" + this.v, e));
                List list = Collections.EMPTY_LIST;
                Handler handler = this.n;
                if (handler != null) {
                    handler.obtainMessage(0, list).sendToTarget();
                } else {
                    this.o.a(list);
                    this.o.a(new ub0(list));
                }
                o();
                m();
                return;
            }
        }
        if (this.g != 2) {
            return;
        }
        if (this.y != null) {
            long jL = l();
            z = false;
            while (jL <= j) {
                this.A++;
                jL = l();
                z = true;
            }
        } else {
            z = false;
        }
        rt5 rt5Var = this.z;
        if (rt5Var != null) {
            if (rt5Var.b(4)) {
                if (!z && l() == Long.MAX_VALUE) {
                    if (this.u == 2) {
                        o();
                        m();
                    } else {
                        n();
                        this.s = true;
                    }
                }
            } else if (rt5Var.c <= j) {
                rt5 rt5Var2 = this.y;
                if (rt5Var2 != null) {
                    rt5Var2.b();
                }
                this.A = rt5Var.a(j);
                this.y = rt5Var;
                this.z = null;
                z = true;
            }
        }
        if (z) {
            this.y.getClass();
            List listB = this.y.b(j);
            Handler handler2 = this.n;
            if (handler2 != null) {
                handler2.obtainMessage(0, listB).sendToTarget();
            } else {
                this.o.a(listB);
                this.o.a(new ub0(listB));
            }
        }
        if (this.u == 2) {
            return;
        }
        while (!this.r) {
            try {
                qt5 qt5Var = this.x;
                if (qt5Var == null) {
                    nt5 nt5Var3 = this.w;
                    nt5Var3.getClass();
                    qt5Var = (qt5) nt5Var3.b();
                    if (qt5Var == null) {
                        return;
                    } else {
                        this.x = qt5Var;
                    }
                }
                if (this.u == 1) {
                    qt5Var.b = 4;
                    nt5 nt5Var4 = this.w;
                    nt5Var4.getClass();
                    nt5Var4.a(qt5Var);
                    this.x = null;
                    this.u = 2;
                    return;
                }
                int iA = a(this.q, qt5Var, 0);
                if (iA == -4) {
                    if (qt5Var.b(4)) {
                        this.r = true;
                        this.t = false;
                        z2 = false;
                    } else {
                        vz2 vz2Var = this.q.b;
                        if (vz2Var == null) {
                            return;
                        }
                        qt5Var.i = vz2Var.q;
                        qt5Var.c();
                        z2 = this.t & (!qt5Var.b(1));
                        this.t = z2;
                    }
                    if (!z2) {
                        nt5 nt5Var5 = this.w;
                        nt5Var5.getClass();
                        nt5Var5.a(qt5Var);
                        this.x = null;
                    }
                } else if (iA == -3) {
                    return;
                }
            } catch (ot5 e2) {
                sv3.b("TextRenderer", sv3.a("Subtitle decoding failed. streamFormat=" + this.v, e2));
                List list2 = Collections.EMPTY_LIST;
                Handler handler3 = this.n;
                if (handler3 != null) {
                    handler3.obtainMessage(0, list2).sendToTarget();
                } else {
                    this.o.a(list2);
                    this.o.a(new ub0(list2));
                }
                o();
                m();
                return;
            }
        }
    }

    @Override // yads.gs
    public final String c() {
        return "TextRenderer";
    }

    @Override // yads.gs
    public final boolean e() {
        return this.s;
    }

    @Override // yads.gs
    public final boolean f() {
        return true;
    }

    @Override // yads.gs
    public final void g() {
        this.v = null;
        this.B = C.TIME_UNSET;
        List list = Collections.EMPTY_LIST;
        Handler handler = this.n;
        if (handler != null) {
            handler.obtainMessage(0, list).sendToTarget();
        } else {
            this.o.a(list);
            this.o.a(new ub0(list));
        }
        o();
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 0) {
            defpackage.ud.g();
            return false;
        }
        List list = (List) message.obj;
        this.o.a(list);
        this.o.a(new ub0(list));
        return true;
    }

    public final long l() {
        if (this.A == -1) {
            return Long.MAX_VALUE;
        }
        this.y.getClass();
        if (this.A >= this.y.a()) {
            return Long.MAX_VALUE;
        }
        return this.y.a(this.A);
    }

    public final void m() {
        nt5 gm2Var;
        byte b = 1;
        this.t = true;
        pt5 pt5Var = this.p;
        vz2 vz2Var = this.v;
        vz2Var.getClass();
        pt5Var.getClass();
        String str = vz2Var.m;
        if (str != null) {
            switch (str.hashCode()) {
                case -1351681404:
                    b = !str.equals(MimeTypes.APPLICATION_DVBSUBS) ? (byte) -1 : (byte) 0;
                    break;
                case -1248334819:
                    if (!str.equals(MimeTypes.APPLICATION_PGS)) {
                        b = -1;
                    }
                    break;
                case -1026075066:
                    b = !str.equals(MimeTypes.APPLICATION_MP4VTT) ? (byte) -1 : (byte) 2;
                    break;
                case -1004728940:
                    b = !str.equals(MimeTypes.TEXT_VTT) ? (byte) -1 : (byte) 3;
                    break;
                case 691401887:
                    b = !str.equals(MimeTypes.APPLICATION_TX3G) ? (byte) -1 : (byte) 4;
                    break;
                case 822864842:
                    b = !str.equals(MimeTypes.TEXT_SSA) ? (byte) -1 : (byte) 5;
                    break;
                case 930165504:
                    b = !str.equals(MimeTypes.APPLICATION_MP4CEA608) ? (byte) -1 : (byte) 6;
                    break;
                case 1201784583:
                    b = !str.equals("text/x-exoplayer-cues") ? (byte) -1 : (byte) 7;
                    break;
                case 1566015601:
                    b = !str.equals(MimeTypes.APPLICATION_CEA608) ? (byte) -1 : (byte) 8;
                    break;
                case 1566016562:
                    b = !str.equals(MimeTypes.APPLICATION_CEA708) ? (byte) -1 : (byte) 9;
                    break;
                case 1668750253:
                    b = !str.equals(MimeTypes.APPLICATION_SUBRIP) ? (byte) -1 : (byte) 10;
                    break;
                case 1693976202:
                    b = !str.equals(MimeTypes.APPLICATION_TTML) ? (byte) -1 : (byte) 11;
                    break;
                default:
                    b = -1;
                    break;
            }
            switch (b) {
                case 0:
                    gm2Var = new gm2(vz2Var.o);
                    break;
                case 1:
                    gm2Var = new gu4();
                    break;
                case 2:
                    gm2Var = new xa4();
                    break;
                case 3:
                    gm2Var = new tk6();
                    break;
                case 4:
                    gm2Var = new k36(vz2Var.o);
                    break;
                case 5:
                    gm2Var = new vp5(vz2Var.o);
                    break;
                case 6:
                case 8:
                    gm2Var = new iy(str, vz2Var.E);
                    break;
                case 7:
                    gm2Var = new jr2();
                    break;
                case 9:
                    gm2Var = new my(vz2Var.E, vz2Var.o);
                    break;
                case 10:
                    gm2Var = new kt5();
                    break;
                case 11:
                    gm2Var = new z26();
                    break;
            }
            this.w = gm2Var;
            return;
        }
        defpackage.fg.c(defpackage.bj.c("Attempted to create decoder for unsupported MIME type: ", str));
    }

    public final void n() {
        this.x = null;
        this.A = -1;
        rt5 rt5Var = this.y;
        if (rt5Var != null) {
            rt5Var.b();
            this.y = null;
        }
        rt5 rt5Var2 = this.z;
        if (rt5Var2 != null) {
            rt5Var2.b();
            this.z = null;
        }
    }

    public final void o() {
        n();
        nt5 nt5Var = this.w;
        nt5Var.getClass();
        nt5Var.release();
        this.w = null;
        this.u = 0;
    }

    @Override // yads.gs
    public final void a(vz2[] vz2VarArr, long j, long j2) {
        this.v = vz2VarArr[0];
        if (this.w != null) {
            this.u = 1;
        } else {
            m();
        }
    }

    @Override // yads.gs
    public final int a(vz2 vz2Var) {
        this.p.getClass();
        String str = vz2Var.m;
        if (!MimeTypes.TEXT_VTT.equals(str) && !MimeTypes.TEXT_SSA.equals(str) && !MimeTypes.APPLICATION_TTML.equals(str) && !MimeTypes.APPLICATION_MP4VTT.equals(str) && !MimeTypes.APPLICATION_SUBRIP.equals(str) && !MimeTypes.APPLICATION_TX3G.equals(str) && !MimeTypes.APPLICATION_CEA608.equals(str) && !MimeTypes.APPLICATION_MP4CEA608.equals(str) && !MimeTypes.APPLICATION_CEA708.equals(str) && !MimeTypes.APPLICATION_DVBSUBS.equals(str) && !MimeTypes.APPLICATION_PGS.equals(str) && !"text/x-exoplayer-cues".equals(str)) {
            if (z84.e(vz2Var.m)) {
                return gs.a(1, 0, 0);
            }
            return gs.a(0, 0, 0);
        }
        return gs.a(vz2Var.F == 0 ? 4 : 2, 0, 0);
    }

    @Override // yads.gs
    public final void a(long j, boolean z) {
        List list = Collections.EMPTY_LIST;
        Handler handler = this.n;
        if (handler != null) {
            handler.obtainMessage(0, list).sendToTarget();
        } else {
            this.o.a(list);
            this.o.a(new ub0(list));
        }
        this.r = false;
        this.s = false;
        this.B = C.TIME_UNSET;
        if (this.u != 0) {
            o();
            m();
        } else {
            n();
            nt5 nt5Var = this.w;
            nt5Var.getClass();
            nt5Var.flush();
        }
    }
}
