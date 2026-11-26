package defpackage;

import android.view.View;
import com.warefly.checkscan.auth.presentation.userCallVerification.presenter.VerificationUserCallPresenter;
import com.warefly.checkscan.auth.presentation.userCallVerification.view.VerificationUserCallFragment;
import com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView;
import com.warefly.checkscan.presentation.flows.desktop.view.DesktopFlowFragment;
import com.warefly.checkscan.presentation.geolocation.view.ClarificationGeolocationFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class nk1 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ nk1(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                ((View) obj).getClass();
                ((ClarificationGeolocationFragment) obj2).o().pressedCorrect();
                return j59.a;
            case 1:
                ((View) obj).getClass();
                ((DesktopFlowFragment) obj2).q().onMenuItemClicked(DesktopView.a.Profile);
                return j59.a;
            case 2:
                ((View) obj).getClass();
                ((zw3) obj2).d.invoke();
                return j59.a;
            case 3:
                ((View) obj).getClass();
                VerificationUserCallPresenter verificationUserCallPresenter = ((VerificationUserCallFragment) obj2).presenter;
                if (verificationUserCallPresenter != null) {
                    verificationUserCallPresenter.onCallClicked();
                    return j59.a;
                }
                aa4.j("presenter");
                throw null;
            default:
                ((j59) obj).getClass();
                return (k4a) obj2;
        }
    }
}
