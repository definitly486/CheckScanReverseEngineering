package defpackage;

import android.view.View;
import com.warefly.checkscan.support.presentation.questions.presenter.SupportQuestionsPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class if8 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ hf8 f;
    public final /* synthetic */ jf8 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public if8(hf8 hf8Var, jf8 jf8Var) {
        super(1);
        this.f = hf8Var;
        this.g = jf8Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        SupportQuestionsPresenter supportQuestionsPresenter = this.f.b;
        jf8 jf8Var = this.g;
        supportQuestionsPresenter.onQuestionCollapseClicked(jf8Var.a.a, !jf8Var.b);
        return j59.a;
    }
}
