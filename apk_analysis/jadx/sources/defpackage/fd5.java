package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class fd5 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ ed5 f;
    public final /* synthetic */ int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fd5(ed5 ed5Var, int i) {
        super(1);
        this.f = ed5Var;
        this.g = i;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        this.f.i.invoke(Integer.valueOf(this.g));
        return j59.a;
    }
}
