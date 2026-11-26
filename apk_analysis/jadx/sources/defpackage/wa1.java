package defpackage;

import android.view.View;
import com.warefly.checkscan.presentation.tasks.checkbox.presenter.CheckboxTaskDetailsPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class wa1 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ xa1 f;
    public final /* synthetic */ va1 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wa1(xa1 xa1Var, va1 va1Var) {
        super(1);
        this.f = xa1Var;
        this.g = va1Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        CheckboxTaskDetailsPresenter checkboxTaskDetailsPresenter = this.g.b;
        view.getClass();
        xa1 xa1Var = this.f;
        int i = va1.b.a[xa1Var.a.ordinal()];
        if (i == 1) {
            checkboxTaskDetailsPresenter.onActivateClicked(xa1Var.e);
        } else if (i == 2) {
            checkboxTaskDetailsPresenter.onCheckRewardClicked();
        }
        return j59.a;
    }
}
