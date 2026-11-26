package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class il8 extends gh4 implements nl3 {
    public final /* synthetic */ int f = 0;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public il8(kl8 kl8Var, Throwable th) {
        super(1);
        this.g = th;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                tr4 tr4Var = (tr4) obj;
                tr4Var.getClass();
                x3 x3Var = tr4Var.b;
                if (x3Var != null) {
                    kl8.b(new hl8(x3Var, (Throwable) obj2));
                }
                break;
            default:
                ((View) obj).getClass();
                ((s09) obj2).b.onButtonClicked();
                break;
        }
        return j59.a;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public il8(s09 s09Var) {
        super(1);
        this.g = s09Var;
    }
}
