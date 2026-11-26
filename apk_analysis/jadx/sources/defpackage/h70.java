package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class h70 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ i70 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h70(i70 i70Var) {
        super(1);
        this.f = i70Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        this.f.b.onTitleWithButtonClick();
        return j59.a;
    }
}
