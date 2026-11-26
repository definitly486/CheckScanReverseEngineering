package defpackage;

import android.view.View;
import com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class s88 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ vd9 g;
    public final /* synthetic */ pz3 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ s88(vd9 vd9Var, pz3 pz3Var, int i) {
        super(1);
        this.f = i;
        this.g = vd9Var;
        this.h = pz3Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        pz3 pz3Var = this.h;
        vd9 vd9Var = this.g;
        switch (i) {
            case 0:
                ((View) obj).getClass();
                BonusesMainNewPresenter bonusesMainNewPresenter = ((r88) vd9Var).b;
                t88 t88Var = (t88) pz3Var;
                t88.a aVar = t88Var.d;
                bonusesMainNewPresenter.onStepActionClicked(aVar.a, aVar.c, t88Var.c);
                break;
            default:
                ((View) obj).getClass();
                ((hf8) vd9Var).b.onQuestionActionClicked(((jf8) pz3Var).a.e.b);
                break;
        }
        return j59.a;
    }
}
