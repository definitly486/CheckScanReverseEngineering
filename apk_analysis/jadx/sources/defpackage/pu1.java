package defpackage;

import android.graphics.Matrix;
import android.graphics.Path;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class pu1 {
    public final ArrayList a = new ArrayList();

    public final void a(Path path) {
        ArrayList arrayList = this.a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            j39 j39Var = (j39) arrayList.get(size);
            Matrix matrix = ib9.a;
            if (j39Var != null && !j39Var.a) {
                ib9.a(path, j39Var.d.m() / 100.0f, j39Var.e.m() / 100.0f, j39Var.f.m() / 360.0f);
            }
        }
    }
}
