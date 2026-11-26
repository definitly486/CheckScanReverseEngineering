package yads;

import android.net.Uri;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public abstract class az0 {
    public static boolean a(String str, ry0 ry0Var, vh2 vh2Var, fs2 fs2Var, nc1 nc1Var) {
        Object next;
        if (ry0Var == null || !(vh2Var instanceof vq0)) {
            return false;
        }
        if (ry0Var instanceof ey0) {
            vq0 vq0Var = (vq0) vh2Var;
            String string = ((Uri) ((ey0) ry0Var).a.c.a(fs2Var)).toString();
            mc1 mc1Var = new mc1();
            ((defpackage.f2) vq0Var.n.c.i).getClass();
            vq0Var.a(sc1.b(vq0Var, string, mc1Var));
            return true;
        }
        vq0 vq0Var2 = (vq0) vh2Var;
        Iterator it = ((zy0) vq0Var2.n.a.i.getValue()).a.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((yy0) next).a(str, ry0Var, vq0Var2, fs2Var));
        boolean z = next != null;
        if (!z) {
            int i = cr3.a;
            vj5[] vj5VarArr = vj5.b;
            cr3.a();
        }
        return z;
    }
}
