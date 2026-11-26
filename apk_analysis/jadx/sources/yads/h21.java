package yads;

import android.view.View;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class h21 implements yy0 {
    @Override // yads.yy0
    public final boolean a(String str, ry0 ry0Var, vq0 vq0Var, fs2 fs2Var) {
        if (!(ry0Var instanceof wx0)) {
            if (!(ry0Var instanceof xx0)) {
                return false;
            }
            if (str == null) {
                return true;
            }
            ((a21) vq0Var.o.k.getValue()).a(str, ((xx0) ry0Var).a.a);
            return true;
        }
        if (str == null) {
            return true;
        }
        vq0Var.getClass();
        ArrayList arrayList = new ArrayList();
        jg6.a(vq0Var, str, arrayList);
        if (arrayList.size() != 1) {
            return true;
        }
        ((a21) vq0Var.o.k.getValue()).a(str, (View) defpackage.qn1.T(arrayList), ((wx0) ry0Var).a, fs2Var);
        return true;
    }
}
