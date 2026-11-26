package yads;

import android.net.Uri;
import defpackage.j59;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class si1 extends dj2 {
    public final xv1 a;
    public final ArrayList b = new ArrayList();
    public final /* synthetic */ ti1 c;

    public si1(ti1 ti1Var, xv1 xv1Var, fs2 fs2Var) {
        this.c = ti1Var;
        this.a = xv1Var;
    }

    @Override // yads.dj2
    public final Object a(jq0 jq0Var, fs2 fs2Var) {
        List list;
        c(jq0Var, fs2Var);
        if (yv1.a.a(jq0Var, fs2Var) && (list = jq0Var.a.F) != null) {
            ti1 ti1Var = this.c;
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String string = ((Uri) ((x72) it.next()).i.a(fs2Var)).toString();
                xv1 xv1Var = this.a;
                this.b.add(ti1Var.a.b(string, xv1Var));
                if (d46.a()) {
                    xv1Var.b++;
                } else {
                    d46.a.post(new wv1(xv1Var));
                }
            }
        }
        return j59.a;
    }

    public final void c(br0 br0Var, fs2 fs2Var) {
        List<m31> listE = br0Var.a().e();
        if (listE != null) {
            ti1 ti1Var = this.c;
            for (m31 m31Var : listE) {
                if (m31Var instanceof h31) {
                    h31 h31Var = (h31) m31Var;
                    if (((Boolean) h31Var.a.f.a(fs2Var)).booleanValue()) {
                        String string = ((Uri) h31Var.a.e.a(fs2Var)).toString();
                        xv1 xv1Var = this.a;
                        this.b.add(ti1Var.a.b(string, xv1Var));
                        if (d46.a()) {
                            xv1Var.b++;
                        } else {
                            d46.a.post(new wv1(xv1Var));
                        }
                    }
                }
            }
        }
    }

    @Override // yads.dj2
    public final /* bridge */ /* synthetic */ Object a(br0 br0Var, fs2 fs2Var) {
        c(br0Var, fs2Var);
        return j59.a;
    }

    @Override // yads.dj2
    public final Object a(zp0 zp0Var, fs2 fs2Var) {
        c(zp0Var, fs2Var);
        if (yv1.a.a(zp0Var, fs2Var)) {
            ti1 ti1Var = this.c;
            String string = ((Uri) zp0Var.a.B.a(fs2Var)).toString();
            xv1 xv1Var = this.a;
            this.b.add(ti1Var.a.b(string, xv1Var));
            if (d46.a()) {
                xv1Var.b++;
            } else {
                d46.a.post(new wv1(xv1Var));
            }
        }
        return j59.a;
    }

    @Override // yads.dj2
    public final Object a(xp0 xp0Var, fs2 fs2Var) {
        c(xp0Var, fs2Var);
        if (yv1.a.a(xp0Var, fs2Var)) {
            ti1 ti1Var = this.c;
            String string = ((Uri) xp0Var.a.u.a(fs2Var)).toString();
            xv1 xv1Var = this.a;
            this.b.add(ti1Var.a.a(string, xv1Var));
            if (d46.a()) {
                xv1Var.b++;
            } else {
                d46.a.post(new wv1(xv1Var));
            }
        }
        return j59.a;
    }

    @Override // yads.dj2
    public final Object a(up0 up0Var, fs2 fs2Var) {
        c(up0Var, fs2Var);
        return j59.a;
    }

    @Override // yads.dj2
    public final Object a(yp0 yp0Var, fs2 fs2Var) {
        c(yp0Var, fs2Var);
        return j59.a;
    }

    @Override // yads.dj2
    public final Object a(wp0 wp0Var, fs2 fs2Var) {
        c(wp0Var, fs2Var);
        return j59.a;
    }

    @Override // yads.dj2
    public final Object a(cq0 cq0Var, fs2 fs2Var) {
        c(cq0Var, fs2Var);
        return j59.a;
    }

    @Override // yads.dj2
    public final Object a(iq0 iq0Var, fs2 fs2Var) {
        c(iq0Var, fs2Var);
        return j59.a;
    }

    @Override // yads.dj2
    public final Object a(gq0 gq0Var, fs2 fs2Var) {
        c(gq0Var, fs2Var);
        return j59.a;
    }
}
