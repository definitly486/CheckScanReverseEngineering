package com.warefly.checkscan.presentation.onboardingOneSlide.holder.view;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.databinding.FragmentOnboardingOneSliderHolderBinding;
import com.warefly.checkscan.presentation.onboardingOneSlide.holder.presenter.OnboardingOneSlideHolderPresenter;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.bx5;
import defpackage.e;
import defpackage.gh4;
import defpackage.j59;
import defpackage.jf6;
import defpackage.lb7;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.uf3;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class OnboardingOneSlideHolderFragment extends FlowFragment<FragmentOnboardingOneSliderHolderBinding> implements OnboardingOneSlideHolderView {
    public static final /* synthetic */ ze4<Object>[] k;
    public final ol4 j = new ol4(FragmentOnboardingOneSliderHolderBinding.class);
    public OnboardingOneSlideHolderPresenter presenter;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            OnboardingOneSlideHolderFragment onboardingOneSlideHolderFragment = OnboardingOneSlideHolderFragment.this;
            OnboardingOneSlideHolderPresenter onboardingOneSlideHolderPresenter = onboardingOneSlideHolderFragment.presenter;
            if (onboardingOneSlideHolderPresenter == null) {
                aa4.j("presenter");
                throw null;
            }
            onboardingOneSlideHolderPresenter.setUpScreen();
            onboardingOneSlideHolderFragment.showErrorLoading(false);
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(OnboardingOneSlideHolderFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentOnboardingOneSliderHolderBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.FlowFragment, com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return R.layout.fragment_onboarding_one_slider_holder;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        TextView textView = ((FragmentOnboardingOneSliderHolderBinding) this.j.getValue(this, k[0])).incldTryAgain.btnTryAgain;
        textView.getClass();
        textView.setOnClickListener(new lb7(new a()));
    }

    public final OnboardingOneSlideHolderPresenter providePresenter() {
        return new OnboardingOneSlideHolderPresenter((bx5) m2.c(bx5.class, e.e(this), null, null), (jf6) m2.c(jf6.class, e.e(this), null, null), (uf3) n2.c(uf3.class, e.e(this), n(), null));
    }

    @Override // com.warefly.checkscan.presentation.onboardingOneSlide.holder.view.OnboardingOneSlideHolderView
    public final void showErrorLoading(boolean z) {
        ConstraintLayout root = ((FragmentOnboardingOneSliderHolderBinding) this.j.getValue(this, k[0])).incldTryAgain.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }
}
