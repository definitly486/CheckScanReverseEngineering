package yads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class k84 extends gs implements Handler.Callback {
    public final i84 n;
    public final bq2 o;
    public final Handler p;
    public final j84 q;
    public vk5 r;
    public boolean s;
    public boolean t;
    public long u;
    public long v;
    public h84 w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k84(bq2 bq2Var, Looper looper) {
        super(5);
        i84 i84Var = i84.a;
        this.o = bq2Var;
        this.p = looper == null ? null : u56.a(looper, (Handler.Callback) this);
        this.n = i84Var;
        this.q = new j84();
        this.v = C.TIME_UNSET;
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00d5  */
    public final void a(h84 h84Var, ArrayList arrayList) {
        vk5 cgVar;
        int i = 0;
        while (true) {
            g84[] g84VarArr = h84Var.b;
            if (i >= g84VarArr.length) {
                return;
            }
            vz2 vz2VarA = g84VarArr[i].a();
            if (vz2VarA != null) {
                this.n.getClass();
                String str = vz2VarA.m;
                if (MimeTypes.APPLICATION_ID3.equals(str) || MimeTypes.APPLICATION_EMSG.equals(str) || MimeTypes.APPLICATION_SCTE35.equals(str) || MimeTypes.APPLICATION_ICY.equals(str) || MimeTypes.APPLICATION_AIT.equals(str)) {
                    this.n.getClass();
                    String str2 = vz2VarA.m;
                    if (str2 != null) {
                        switch (str2) {
                            case "application/vnd.dvb.ait":
                                cgVar = new cg();
                                break;
                            case "application/x-icy":
                                cgVar = new fb3();
                                break;
                            case "application/id3":
                                cgVar = new mb3();
                                break;
                            case "application/x-emsg":
                                cgVar = new fp2();
                                break;
                            case "application/x-scte35":
                                cgVar = new dp5();
                                break;
                            default:
                                break;
                        }
                        byte[] bArrB = h84Var.b[i].b();
                        bArrB.getClass();
                        this.q.b();
                        this.q.c(bArrB.length);
                        this.q.d.put(bArrB);
                        this.q.c();
                        h84 h84VarA = cgVar.a(this.q);
                        if (h84VarA != null) {
                            a(h84VarA, arrayList);
                        }
                    }
                    defpackage.fg.c(defpackage.bj.c("Attempted to create decoder for unsupported MIME type: ", str2));
                    return;
                }
                arrayList.add(h84Var.b[i]);
            } else {
                arrayList.add(h84Var.b[i]);
            }
            i++;
        }
    }

    @Override // yads.gs
    public final String c() {
        return "MetadataRenderer";
    }

    @Override // yads.gs
    public final boolean e() {
        return this.t;
    }

    @Override // yads.gs
    public final boolean f() {
        return true;
    }

    @Override // yads.gs
    public final void g() {
        this.w = null;
        this.v = C.TIME_UNSET;
        this.r = null;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 0) {
            defpackage.ud.g();
            return false;
        }
        this.o.a((h84) message.obj);
        return true;
    }

    @Override // yads.gs
    public final int a(vz2 vz2Var) {
        this.n.getClass();
        String str = vz2Var.m;
        if (!MimeTypes.APPLICATION_ID3.equals(str) && !MimeTypes.APPLICATION_EMSG.equals(str) && !MimeTypes.APPLICATION_SCTE35.equals(str) && !MimeTypes.APPLICATION_ICY.equals(str) && !MimeTypes.APPLICATION_AIT.equals(str)) {
            return gs.a(0, 0, 0);
        }
        return gs.a(vz2Var.F == 0 ? 4 : 2, 0, 0);
    }

    @Override // yads.gs
    public final void a(vz2[] vz2VarArr, long j, long j2) {
        vk5 cgVar;
        i84 i84Var = this.n;
        byte b = 0;
        vz2 vz2Var = vz2VarArr[0];
        i84Var.getClass();
        String str = vz2Var.m;
        if (str != null) {
            switch (str.hashCode()) {
                case -1354451219:
                    if (!str.equals(MimeTypes.APPLICATION_AIT)) {
                        b = -1;
                    }
                    break;
                case -1348231605:
                    b = !str.equals(MimeTypes.APPLICATION_ICY) ? (byte) -1 : (byte) 1;
                    break;
                case -1248341703:
                    b = !str.equals(MimeTypes.APPLICATION_ID3) ? (byte) -1 : (byte) 2;
                    break;
                case 1154383568:
                    b = !str.equals(MimeTypes.APPLICATION_EMSG) ? (byte) -1 : (byte) 3;
                    break;
                case 1652648887:
                    b = !str.equals(MimeTypes.APPLICATION_SCTE35) ? (byte) -1 : (byte) 4;
                    break;
                default:
                    b = -1;
                    break;
            }
            switch (b) {
                case 0:
                    cgVar = new cg();
                    break;
                case 1:
                    cgVar = new fb3();
                    break;
                case 2:
                    cgVar = new mb3();
                    break;
                case 3:
                    cgVar = new fp2();
                    break;
                case 4:
                    cgVar = new dp5();
                    break;
            }
            this.r = cgVar;
            return;
        }
        defpackage.fg.c(defpackage.bj.c("Attempted to create decoder for unsupported MIME type: ", str));
    }

    @Override // yads.gs
    public final void a(long j, boolean z) {
        this.w = null;
        this.v = C.TIME_UNSET;
        this.s = false;
        this.t = false;
    }

    @Override // yads.gs
    public final void a(long j, long j2) {
        boolean z = true;
        while (z) {
            h84 h84Var = null;
            if (!this.s && this.w == null) {
                this.q.b();
                a03 a03Var = this.c;
                a03Var.a = null;
                a03Var.b = null;
                int iA = a(a03Var, this.q, 0);
                if (iA == -4) {
                    if (this.q.b(4)) {
                        this.s = true;
                    } else {
                        j84 j84Var = this.q;
                        j84Var.i = this.u;
                        j84Var.c();
                        vk5 vk5Var = this.r;
                        int i = u56.a;
                        h84 h84VarA = vk5Var.a(this.q);
                        if (h84VarA != null) {
                            ArrayList arrayList = new ArrayList(h84VarA.b.length);
                            a(h84VarA, arrayList);
                            if (!arrayList.isEmpty()) {
                                this.w = new h84(arrayList);
                                this.v = this.q.f;
                            }
                        }
                    }
                } else if (iA == -5) {
                    vz2 vz2Var = a03Var.b;
                    vz2Var.getClass();
                    this.u = vz2Var.q;
                }
            }
            h84 h84Var2 = this.w;
            if (h84Var2 == null || this.v > j) {
                h84Var = h84Var2;
                z = false;
            } else {
                Handler handler = this.p;
                if (handler != null) {
                    handler.obtainMessage(0, h84Var2).sendToTarget();
                } else {
                    this.o.a(h84Var2);
                }
                this.w = null;
                this.v = C.TIME_UNSET;
                z = true;
            }
            if (this.s && h84Var == null) {
                this.t = true;
            }
        }
    }
}
