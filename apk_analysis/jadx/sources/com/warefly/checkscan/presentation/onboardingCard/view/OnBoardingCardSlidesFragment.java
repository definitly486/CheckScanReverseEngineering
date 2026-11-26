package com.warefly.checkscan.presentation.onboardingCard.view;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.widget.ViewPager2;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.FragmentOnboardingCardSlidesBinding;
import com.warefly.checkscan.presentation.onboardingCard.presenter.OnBoardingCardSlidesPresenter;
import com.warefly.checkscan.ui.dotindicator.DotsIndicator;
import defpackage.bs6;
import defpackage.e;
import defpackage.m2;
import defpackage.n2;
import defpackage.ol4;
import defpackage.uf3;
import defpackage.uv5;
import defpackage.uw5;
import defpackage.vv5;
import defpackage.wv5;
import defpackage.x07;
import defpackage.xv5;
import defpackage.ze4;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class OnBoardingCardSlidesFragment extends BaseFragment<FragmentOnboardingCardSlidesBinding> implements OnboardingCardSlidesView {
    public static final /* synthetic */ ze4<Object>[] i;
    public final int f = R.layout.fragment_onboarding_card_slides;
    public final ol4 g = new ol4(FragmentOnboardingCardSlidesBinding.class);
    public uv5 h;
    public OnBoardingCardSlidesPresenter presenter;

    static {
        bs6 bs6Var = new bs6(OnBoardingCardSlidesFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlidesBinding;", 0);
        x07.a.getClass();
        i = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    public final FragmentOnboardingCardSlidesBinding n() {
        return (FragmentOnboardingCardSlidesBinding) this.g.getValue(this, i[0]);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        FragmentOnboardingCardSlidesBinding fragmentOnboardingCardSlidesBindingN = n();
        int i2 = 0;
        fragmentOnboardingCardSlidesBindingN.btnLeft.setOnClickListener(new vv5(this, i2));
        fragmentOnboardingCardSlidesBindingN.btnRight.setOnClickListener(new wv5(this, i2));
        fragmentOnboardingCardSlidesBindingN.btnRight.setVisibility(0);
        FragmentOnboardingCardSlidesBinding fragmentOnboardingCardSlidesBindingN2 = n();
        ViewPager2 viewPager2 = fragmentOnboardingCardSlidesBindingN2.vpCards;
        uv5 uv5Var = new uv5(this);
        this.h = uv5Var;
        viewPager2.setAdapter(uv5Var);
        fragmentOnboardingCardSlidesBindingN2.vpCards.registerOnPageChangeCallback(new xv5(this));
        DotsIndicator dotsIndicator = fragmentOnboardingCardSlidesBindingN2.dotsIndicator;
        ViewPager2 viewPager3 = fragmentOnboardingCardSlidesBindingN2.vpCards;
        viewPager3.getClass();
        dotsIndicator.b(viewPager3);
    }

    public final OnBoardingCardSlidesPresenter providePresenter() {
        return new OnBoardingCardSlidesPresenter((uw5) m2.c(uw5.class, e.e(this), null, null), (uf3) n2.c(uf3.class, e.e(this), j(), null));
    }

    @Override // com.warefly.checkscan.presentation.onboardingCard.view.OnboardingCardSlidesView
    public final void setLeftButtonVisible(boolean z) {
        ImageView imageView = n().btnLeft;
        imageView.getClass();
        imageView.setVisibility(!z ? 4 : 0);
    }

    @Override // com.warefly.checkscan.presentation.onboardingCard.view.OnboardingCardSlidesView
    public final void setSelectedSlide(int i2) {
        n().vpCards.setCurrentItem(i2);
    }

    @Override // com.warefly.checkscan.presentation.onboardingCard.view.OnboardingCardSlidesView
    public final void showFragments(List<? extends Fragment> list) {
        list.getClass();
        uv5 uv5Var = this.h;
        if (uv5Var != null) {
            ArrayList arrayList = uv5Var.i;
            arrayList.clear();
            arrayList.addAll(list);
            uv5Var.notifyDataSetChanged();
        }
    }
}
