package defpackage;

import android.view.View;
import com.warefly.checkscan.auth.presentation.userCallVerification.presenter.VerificationUserCallPresenter;
import com.warefly.checkscan.auth.presentation.userCallVerification.view.VerificationUserCallFragment;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.presentation.geolocation.view.ClarificationGeolocationFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class ok1 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ BaseFragment g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ok1(BaseFragment baseFragment, int i) {
        super(1);
        this.f = i;
        this.g = baseFragment;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        BaseFragment baseFragment = this.g;
        switch (i) {
            case 0:
                ((View) obj).getClass();
                ((ClarificationGeolocationFragment) baseFragment).o().pressedNo();
                return j59.a;
            default:
                ((View) obj).getClass();
                VerificationUserCallPresenter verificationUserCallPresenter = ((VerificationUserCallFragment) baseFragment).presenter;
                if (verificationUserCallPresenter != null) {
                    verificationUserCallPresenter.onTryEmailClicked();
                    return j59.a;
                }
                aa4.j("presenter");
                throw null;
        }
    }
}
