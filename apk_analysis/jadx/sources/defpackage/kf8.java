package defpackage;

import android.view.View;
import com.warefly.checkscan.support.presentation.questions.presenter.SupportQuestionsPresenter;
import com.warefly.checkscan.support.presentation.questions.view.SupportQuestionsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class kf8 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ SupportQuestionsFragment f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kf8(SupportQuestionsFragment supportQuestionsFragment) {
        super(1);
        this.f = supportQuestionsFragment;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        SupportQuestionsPresenter supportQuestionsPresenter = this.f.presenter;
        if (supportQuestionsPresenter != null) {
            supportQuestionsPresenter.onBackClicked();
            return j59.a;
        }
        aa4.j("presenter");
        throw null;
    }
}
