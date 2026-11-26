package defpackage;

import android.view.View;
import androidx.fragment.app.Fragment;
import com.warefly.checkscan.presentation.onboardingCard.presenter.OnBoardingCardSlidesPresenter;
import com.warefly.checkscan.presentation.onboardingCard.view.OnBoardingCardSlidesFragment;
import com.wdullaer.materialdatetimepicker.time.TimePickerDialog;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class wv5 implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ Fragment c;

    public /* synthetic */ wv5(Fragment fragment, int i) {
        this.b = i;
        this.c = fragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.b;
        Fragment fragment = this.c;
        switch (i) {
            case 0:
                ze4<Object>[] ze4VarArr = OnBoardingCardSlidesFragment.i;
                OnBoardingCardSlidesPresenter onBoardingCardSlidesPresenter = ((OnBoardingCardSlidesFragment) fragment).presenter;
                if (onBoardingCardSlidesPresenter != null) {
                    onBoardingCardSlidesPresenter.onButtonRightClick();
                    return;
                } else {
                    aa4.j("presenter");
                    throw null;
                }
            default:
                ((TimePickerDialog) fragment).lambda$onCreateView$4(view);
                return;
        }
    }
}
