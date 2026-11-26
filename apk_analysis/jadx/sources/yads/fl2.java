package yads;

import android.graphics.drawable.Drawable;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class fl2 extends gh4 implements nl3 {
    public final /* synthetic */ hl2 b;
    public final /* synthetic */ String c;
    public final /* synthetic */ defpackage.c31 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fl2(hl2 hl2Var, String str, defpackage.c31 c31Var) {
        super(1);
        this.b = hl2Var;
        this.c = str;
        this.d = c31Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        kl2 kl2Var = (kl2) obj;
        this.b.b.a(this.c, kl2Var.a, kl2Var.b);
        hl2 hl2Var = this.b;
        defpackage.c31 c31Var = this.d;
        Drawable drawable = kl2Var.a;
        hl2Var.getClass();
        if (c31Var.t() instanceof defpackage.no5) {
            c31Var.resumeWith(drawable);
        }
        return j59.a;
    }
}
