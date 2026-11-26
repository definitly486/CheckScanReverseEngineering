package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class cn7 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ en7 f;
    public final /* synthetic */ zn7 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cn7(en7 en7Var, zn7 zn7Var) {
        super(1);
        this.f = en7Var;
        this.g = zn7Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        this.f.b.onSelectionClicked(this.g.a);
        return j59.a;
    }
}
