package yads;

import android.graphics.Rect;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class v81 extends gh4 implements nl3 {
    public final /* synthetic */ yc1 b;
    public final /* synthetic */ a91 c;
    public final /* synthetic */ jj2 d;
    public final /* synthetic */ fs2 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v81(yc1 yc1Var, fs2 fs2Var, a91 a91Var, jj2 jj2Var, fs2 fs2Var2) {
        super(1);
        this.b = yc1Var;
        this.c = a91Var;
        this.d = jj2Var;
        this.e = fs2Var2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        Rect rectA = a91.a(this.c, this.b, this.d.getResources(), this.e);
        this.d.setSeparatorMargins(rectA.left, rectA.top, rectA.right, rectA.bottom);
        return j59.a;
    }
}
