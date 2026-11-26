package com.warefly.checkscan.presentation.onboardingCard.slides.view;

import android.os.Bundle;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.FragmentOnboardingCardSlideBinding;
import com.warefly.checkscan.presentation.onboardingCard.slides.presenter.OnBoardingCardSlidePresenter;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.e;
import defpackage.gh4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.m2;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.uw5;
import defpackage.x07;
import defpackage.ze4;
import defpackage.zj3;

/* JADX INFO: loaded from: classes5.dex */
public final class OnBoardingCardSlideFragment extends BaseFragment<FragmentOnboardingCardSlideBinding> implements OnboardingCardSlideView {
    public static final a h;
    public static final /* synthetic */ ze4<Object>[] i;
    public final int f = R.layout.fragment_onboarding_card_slide;
    public final ol4 g = new ol4(FragmentOnboardingCardSlideBinding.class);
    public OnBoardingCardSlidePresenter presenter;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ zj3 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(zj3 zj3Var) {
            super(1);
            this.g = zj3Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            OnBoardingCardSlidePresenter onBoardingCardSlidePresenter = OnBoardingCardSlideFragment.this.presenter;
            if (onBoardingCardSlidePresenter != null) {
                onBoardingCardSlidePresenter.onButtonActionClick(this.g.f);
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    static {
        bs6 bs6Var = new bs6(OnBoardingCardSlideFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlideBinding;", 0);
        x07.a.getClass();
        i = new ze4[]{bs6Var};
        h = new a();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    public final OnBoardingCardSlidePresenter providePresenter() {
        Bundle arguments = getArguments();
        return new OnBoardingCardSlidePresenter(arguments != null ? arguments.getLong("SLIDE_KEY") : Long.MIN_VALUE, (uw5) m2.c(uw5.class, e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.onboardingCard.slides.view.OnboardingCardSlideView
    public final void showContent(zj3 zj3Var) {
        zj3Var.getClass();
        FragmentOnboardingCardSlideBinding fragmentOnboardingCardSlideBinding = (FragmentOnboardingCardSlideBinding) this.g.getValue(this, i[0]);
        com.bumptech.glide.a.e(fragmentOnboardingCardSlideBinding.ivPlaceholder).h(zj3Var.b).L(fragmentOnboardingCardSlideBinding.ivPlaceholder);
        fragmentOnboardingCardSlideBinding.tvTitle.setText(zj3Var.c);
        fragmentOnboardingCardSlideBinding.tvDescription.setText(zj3Var.d);
        fragmentOnboardingCardSlideBinding.btnAction.setText(zj3Var.e);
        AppCompatTextView appCompatTextView = fragmentOnboardingCardSlideBinding.btnAction;
        appCompatTextView.getClass();
        appCompatTextView.setOnClickListener(new lb7(new b(zj3Var)));
    }
}
