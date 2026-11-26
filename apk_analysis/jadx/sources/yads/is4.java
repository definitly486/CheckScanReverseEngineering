package yads;

import defpackage.j59;
import defpackage.ll3;
import java.util.List;
import yads.is4;

/* JADX INFO: loaded from: classes6.dex */
public final class is4 {
    public final vq0 a;
    public final vr1 b;
    public final bt0 c;
    public hs4 d;

    public is4(vq0 vq0Var, vr1 vr1Var, bt0 bt0Var) {
        this.a = vq0Var;
        this.b = vr1Var;
        this.c = bt0Var;
    }

    public final void a(final cn1 cn1Var) {
        final List listD = cn1Var.a.a().d();
        if (listD != null) {
            this.a.a(new ll3() { // from class: iz9
                @Override // defpackage.ll3
                public final Object invoke() {
                    return is4.a(this.b, cn1Var, listD);
                }
            });
        }
    }

    public static final j59 a(is4 is4Var, cn1 cn1Var, List list) {
        bt0.a(is4Var.c, is4Var.a, cn1Var.b, list);
        return j59.a;
    }
}
