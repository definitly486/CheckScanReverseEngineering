package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class gl6 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ fl6 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gl6(fl6 fl6Var) {
        super(1);
        this.f = fl6Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        this.f.b.onEditPersonalDataClicked();
        return j59.a;
    }
}
