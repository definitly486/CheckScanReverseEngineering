package yads;

import android.content.Context;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ff6 {
    public final hd6 a;

    public ff6(Context context) {
        this.a = new hd6(context);
    }

    public final void a(ef6 ef6Var, String str) {
        List list = (List) ef6Var.a().get(str);
        if (list != null) {
            this.a.a(list, defpackage.mx2.b);
        }
    }
}
