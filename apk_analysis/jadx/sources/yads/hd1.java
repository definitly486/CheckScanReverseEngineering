package yads;

import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class hd1 {
    public final ArrayList a;

    public hd1(ArrayList arrayList) {
        this.a = arrayList;
    }

    public final void a(vq0 vq0Var, fs2 fs2Var, View view, p41 p41Var) {
        if (a(p41Var)) {
            for (id1 id1Var : this.a) {
                if (id1Var.a(p41Var)) {
                    id1Var.a(vq0Var, view);
                }
            }
        }
    }

    public final boolean a(p41 p41Var) {
        List extensions = p41Var.getExtensions();
        return (extensions == null || extensions.isEmpty() || this.a.isEmpty()) ? false : true;
    }
}
