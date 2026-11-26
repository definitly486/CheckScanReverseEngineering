package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class xv extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ xv(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                w99 w99Var = (w99) obj;
                w99Var.getClass();
                return new p08(((kv) obj2).c(w99Var.b(), w99Var.a()), new vv(wv.f, 0));
            default:
                ((View) obj).getClass();
                ((fl6) obj2).b.onPhotoClicked();
                return j59.a;
        }
    }
}
