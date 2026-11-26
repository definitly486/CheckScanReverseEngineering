package defpackage;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.phoneChange.presenter.PhoneChangePresenter;
import com.warefly.checkscan.presentation.verificationCardPhone.presenter.VerificationCardPhonePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class m76 implements h6 {
    public final /* synthetic */ int a;
    public final /* synthetic */ BasePresenter b;

    public /* synthetic */ m76(BasePresenter basePresenter, int i) {
        this.a = i;
        this.b = basePresenter;
    }

    @Override // defpackage.h6
    public final void run() {
        int i = this.a;
        BasePresenter basePresenter = this.b;
        switch (i) {
            case 0:
                PhoneChangePresenter.requestCode$lambda$1((PhoneChangePresenter) basePresenter);
                break;
            default:
                VerificationCardPhonePresenter.requestCodeOld$lambda$4((VerificationCardPhonePresenter) basePresenter);
                break;
        }
    }
}
