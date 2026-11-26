package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class n20 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ o20 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n20(o20 o20Var) {
        super(1);
        this.f = o20Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        this.f.b.onExpandChange();
        return j59.a;
    }
}
