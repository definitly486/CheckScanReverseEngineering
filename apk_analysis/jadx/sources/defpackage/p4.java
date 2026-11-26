package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class p4 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p4(zv7 zv7Var, xu7 xu7Var) {
        super(1);
        this.f = 2;
        this.g = zv7Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                fm2 fm2Var = (fm2) obj;
                fm2Var.getClass();
                return ((c4) obj2).b.d(fm2Var);
            case 1:
                ((Throwable) obj).getClass();
                ((up) obj2).invoke();
                return j59.a;
            default:
                ((View) obj).getClass();
                ((zv7) obj2).b.invoke(0);
                return j59.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ p4(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }
}
