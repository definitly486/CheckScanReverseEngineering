package defpackage;

import android.view.View;
import yads.as2;
import yads.bn1;
import yads.c62;
import yads.fs2;
import yads.jk1;
import yads.m62;
import yads.y52;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class wp9 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ fs2 c;
    public final /* synthetic */ View d;
    public final /* synthetic */ Object e;

    public /* synthetic */ wp9(View view, Object obj, fs2 fs2Var, int i) {
        this.b = i;
        this.d = view;
        this.e = obj;
        this.c = fs2Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        fs2 fs2Var = this.c;
        Object obj2 = this.e;
        View view = this.d;
        switch (i) {
            case 0:
                return c62.a((m62) view, (y52) obj2, fs2Var, obj);
            default:
                return jk1.b((bn1) view, (as2) obj2, fs2Var, obj);
        }
    }
}
