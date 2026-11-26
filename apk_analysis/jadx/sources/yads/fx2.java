package yads;

import android.net.Uri;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class fx2 implements it4 {
    public final mc0 a;
    public final List b;

    public fx2(mc0 mc0Var, List list) {
        this.a = mc0Var;
        this.b = list;
    }

    @Override // yads.it4
    public final Object a(Uri uri, yc0 yc0Var) {
        kc0 kc0Var = (kc0) this.a.a(uri, yc0Var);
        List list = this.b;
        return (list == null || list.isEmpty()) ? kc0Var : kc0Var.a(this.b);
    }
}
