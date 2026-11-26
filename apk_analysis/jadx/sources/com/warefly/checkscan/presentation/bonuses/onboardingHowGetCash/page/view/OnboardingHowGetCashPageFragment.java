package com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.page.view;

import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import com.warefly.checkscan.R;
import com.warefly.checkscan.bonusesHowGetCash.databinding.FragmentPageBinding;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.page.presenter.OnboardingHowGetCashPagePresenter;
import com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.page.view.OnboardingHowGetCashPageFragment;
import defpackage.bs6;
import defpackage.e;
import defpackage.m2;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.q16;
import defpackage.vw5;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class OnboardingHowGetCashPageFragment extends BaseFragment<FragmentPageBinding> implements OnboardingHowGetCashPageView {
    public static final a h;
    public static final /* synthetic */ ze4<Object>[] i;
    public final int f = R.layout.fragment_page;
    public final ol4 g = new ol4(FragmentPageBinding.class);
    public OnboardingHowGetCashPagePresenter presenter;

    public static final class a {
    }

    static {
        bs6 bs6Var = new bs6(OnboardingHowGetCashPageFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentPageBinding;", 0);
        x07.a.getClass();
        i = new ze4[]{bs6Var};
        h = new a();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        ((FragmentPageBinding) this.g.getValue(this, i[0])).getRoot().setOnTouchListener(new View.OnTouchListener() { // from class: ww5
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                OnboardingHowGetCashPageFragment onboardingHowGetCashPageFragment = this.b;
                OnboardingHowGetCashPagePresenter onboardingHowGetCashPagePresenter = onboardingHowGetCashPageFragment.presenter;
                if (onboardingHowGetCashPagePresenter == null) {
                    aa4.j("presenter");
                    throw null;
                }
                motionEvent.getClass();
                onboardingHowGetCashPagePresenter.onScreenClick(motionEvent, ((FragmentPageBinding) onboardingHowGetCashPageFragment.g.getValue(onboardingHowGetCashPageFragment, OnboardingHowGetCashPageFragment.i[0])).getRoot().getWidth());
                return true;
            }
        });
    }

    public final OnboardingHowGetCashPagePresenter providePresenter() {
        Bundle arguments = getArguments();
        return new OnboardingHowGetCashPagePresenter(arguments != null ? arguments.getInt("page") : -1, (vw5) m2.c(vw5.class, e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.page.view.OnboardingHowGetCashPageView
    public final void showContent(q16 q16Var) {
        q16Var.getClass();
        FragmentPageBinding fragmentPageBinding = (FragmentPageBinding) this.g.getValue(this, i[0]);
        fragmentPageBinding.ivPlaceholder.setImageDrawable(oz1.b(fragmentPageBinding, q16Var.b));
        fragmentPageBinding.tvPlaceholder.setText(getText(q16Var.a));
    }
}
