package defpackage;

import android.view.View;
import com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class ul8 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ tl8 f;
    public final /* synthetic */ zl8 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ul8(tl8 tl8Var, zl8 zl8Var) {
        super(1);
        this.f = tl8Var;
        this.g = zl8Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        TasksPresenter tasksPresenter = this.f.b;
        zl8 zl8Var = this.g;
        tasksPresenter.onBannerClicked(zl8Var.a, zl8Var.c);
        return j59.a;
    }
}
