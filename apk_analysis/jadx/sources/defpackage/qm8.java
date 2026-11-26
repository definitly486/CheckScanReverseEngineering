package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class qm8 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ pm8 f;
    public final /* synthetic */ rm8 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qm8(pm8 pm8Var, rm8 rm8Var) {
        super(1);
        this.f = pm8Var;
        this.g = rm8Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        this.f.b.onDailyTaskCardClicked(this.g.a);
        return j59.a;
    }
}
