package com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.os.BundleKt;
import androidx.viewpager2.widget.ViewPager2;
import com.warefly.checkscan.R;
import com.warefly.checkscan.bonusesHowGetCash.databinding.FragmentBonusesHowGetCashBinding;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.slides.SlidesProgressBar;
import com.warefly.checkscan.core.ui.slides.SlidesProgressView;
import com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.page.view.OnboardingHowGetCashPageFragment;
import com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.presenter.OnboardingHowGetCashPresenter;
import defpackage.aa4;
import defpackage.b28;
import defpackage.b36;
import defpackage.bs6;
import defpackage.e;
import defpackage.er0;
import defpackage.gh4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.u96;
import defpackage.uf3;
import defpackage.vw5;
import defpackage.x07;
import defpackage.ze4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class OnboardingHowGetCashFragment extends BaseFragment<FragmentBonusesHowGetCashBinding> implements OnboardingHowGetCashView {
    public static final /* synthetic */ ze4<Object>[] h;
    public final int f = R.layout.fragment_bonuses_how_get_cash;
    public final ol4 g = new ol4(FragmentBonusesHowGetCashBinding.class);
    public OnboardingHowGetCashPresenter presenter;

    public final class a extends ViewPager2.OnPageChangeCallback {
        public a() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public final void onPageSelected(int i) {
            OnboardingHowGetCashPresenter onboardingHowGetCashPresenter = OnboardingHowGetCashFragment.this.presenter;
            if (onboardingHowGetCashPresenter != null) {
                onboardingHowGetCashPresenter.onPageSelected(i);
            } else {
                aa4.j("presenter");
                throw null;
            }
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            OnboardingHowGetCashPresenter onboardingHowGetCashPresenter = OnboardingHowGetCashFragment.this.presenter;
            if (onboardingHowGetCashPresenter != null) {
                onboardingHowGetCashPresenter.onCloseClick();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    static {
        bs6 bs6Var = new bs6(OnboardingHowGetCashFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;", 0);
        x07.a.getClass();
        h = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.view.OnboardingHowGetCashView
    public final void initProgressBarSlider(List<b28> list) {
        LinearLayout.LayoutParams layoutParams;
        int i;
        list.getClass();
        SlidesProgressView slidesProgressView = n().pbSlides;
        OnboardingHowGetCashPresenter onboardingHowGetCashPresenter = this.presenter;
        if (onboardingHowGetCashPresenter == null) {
            aa4.j("presenter");
            throw null;
        }
        slidesProgressView.getClass();
        slidesProgressView.i = onboardingHowGetCashPresenter;
        ArrayList arrayList = slidesProgressView.c;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((SlidesProgressBar) it.next()).a();
        }
        arrayList.clear();
        slidesProgressView.removeAllViews();
        if (list.isEmpty()) {
            layoutParams = slidesProgressView.f;
        } else {
            int size = list.size();
            int i2 = slidesProgressView.d;
            int i3 = slidesProgressView.e;
            int i4 = (i2 - (size * i3)) / size;
            if (i4 < i3 || i4 / 2 < i3) {
                i3 = i4 / 2;
            }
            layoutParams = new LinearLayout.LayoutParams(i3, -2);
        }
        for (b28 b28Var : list) {
            int i5 = b28Var.a;
            long j = b28Var.b;
            Context context = slidesProgressView.getContext();
            context.getClass();
            SlidesProgressBar slidesProgressBar = new SlidesProgressBar(context, i5, j);
            slidesProgressBar.setLayoutParams(slidesProgressView.b);
            slidesProgressBar.setEndAnimationListener(slidesProgressView.i);
            arrayList.add(slidesProgressBar);
            slidesProgressView.addView(slidesProgressBar);
            if (b28Var.a + 1 < list.size()) {
                View view = new View(slidesProgressView.getContext());
                view.setLayoutParams(layoutParams);
                slidesProgressView.addView(view);
            }
        }
        if (!slidesProgressView.h || (i = slidesProgressView.g) == -1) {
            return;
        }
        int i6 = 0;
        for (Object obj : arrayList) {
            int i7 = i6 + 1;
            if (i6 < 0) {
                u96.o();
                throw null;
            }
            SlidesProgressBar slidesProgressBar2 = (SlidesProgressBar) obj;
            if (i6 < i) {
                slidesProgressBar2.setMax();
            }
            i6 = i7;
        }
        slidesProgressView.h = false;
    }

    public final FragmentBonusesHowGetCashBinding n() {
        return (FragmentBonusesHowGetCashBinding) this.g.getValue(this, h[0]);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        ImageView imageView = n().ivClose;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new b()));
        ViewPager2 viewPager2 = n().vp;
        ArrayList arrayList = new ArrayList(5);
        for (int i = 0; i < 5; i++) {
            OnboardingHowGetCashPageFragment.h.getClass();
            OnboardingHowGetCashPageFragment onboardingHowGetCashPageFragment = new OnboardingHowGetCashPageFragment();
            onboardingHowGetCashPageFragment.setArguments(BundleKt.bundleOf(new b36("page", Integer.valueOf(i))));
            arrayList.add(onboardingHowGetCashPageFragment);
        }
        viewPager2.setAdapter(new er0(arrayList, this));
        n().vp.registerOnPageChangeCallback(new a());
    }

    public final OnboardingHowGetCashPresenter providePresenter() {
        return new OnboardingHowGetCashPresenter((uf3) n2.c(uf3.class, e.e(this), j(), null), (vw5) m2.c(vw5.class, e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.view.OnboardingHowGetCashView
    public final void setPage(int i) {
        n().vp.setCurrentItem(i, true);
        SlidesProgressView slidesProgressView = n().pbSlides;
        slidesProgressView.g = i;
        ArrayList arrayList = slidesProgressView.c;
        if (u96.f(arrayList).c(i)) {
            int i2 = 0;
            for (Object obj : arrayList) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    u96.o();
                    throw null;
                }
                SlidesProgressBar slidesProgressBar = (SlidesProgressBar) obj;
                int i4 = slidesProgressView.g;
                if (i2 < i4) {
                    slidesProgressBar.setMax();
                } else if (i2 > i4) {
                    slidesProgressBar.setMin();
                } else {
                    slidesProgressBar.f.setVisibility(8);
                    SlidesProgressBar.a aVar = new SlidesProgressBar.a(0.0f, 1.0f, 1.0f, 1.0f, 0, 0.0f, 1, 0.0f);
                    slidesProgressBar.g = aVar;
                    aVar.setDuration(slidesProgressBar.d);
                    SlidesProgressBar.a aVar2 = slidesProgressBar.g;
                    if (aVar2 != null) {
                        aVar2.setInterpolator(new LinearInterpolator());
                    }
                    SlidesProgressBar.a aVar3 = slidesProgressBar.g;
                    if (aVar3 != null) {
                        aVar3.setAnimationListener(new com.warefly.checkscan.core.ui.slides.a(slidesProgressBar));
                    }
                    SlidesProgressBar.a aVar4 = slidesProgressBar.g;
                    if (aVar4 != null) {
                        aVar4.setFillAfter(true);
                    }
                    slidesProgressBar.e.startAnimation(slidesProgressBar.g);
                }
                i2 = i3;
            }
        }
    }
}
