package com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.view;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.os.BundleKt;
import androidx.viewpager2.widget.ViewPager2;
import androidx.webkit.internal.AssetHelper;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.databinding.ConfettiLayoutBinding;
import com.warefly.checkscan.databinding.FragmentOnboardingOneSlideBinding;
import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.OnboardingOneSlideModel;
import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.dialogs.BankClientVerificationDialog;
import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.dialogs.BankClientVerificationModel;
import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.presenter.OnboardingOneSlidePresenter;
import com.warefly.checkscan.ui.dotindicator.BaseDotsIndicator;
import com.warefly.checkscan.ui.dotindicator.DotsIndicator;
import defpackage.aa4;
import defpackage.b36;
import defpackage.bs6;
import defpackage.bx5;
import defpackage.gh4;
import defpackage.gw5;
import defpackage.hr7;
import defpackage.j59;
import defpackage.jf6;
import defpackage.k24;
import defpackage.k57;
import defpackage.kv;
import defpackage.kv1;
import defpackage.lb7;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.uf3;
import defpackage.x07;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class OnboardingOneSlideFragment extends BaseFragment<FragmentOnboardingOneSlideBinding> implements OnboardingOneSlideView {
    public static final a i;
    public static final /* synthetic */ ze4<Object>[] j;
    public final int f = R.layout.fragment_onboarding_one_slide;
    public final ol4 g = new ol4(FragmentOnboardingOneSlideBinding.class);
    public BankClientVerificationDialog h;
    public OnboardingOneSlidePresenter presenter;

    public static final class a {
    }

    public static final class b implements BaseDotsIndicator.a {
        public static final b a = new b();
        public static int b = 2;
        public static gw5 c;
        public static int d;

        @Override // com.warefly.checkscan.ui.dotindicator.BaseDotsIndicator.a
        public final int a() {
            return d;
        }

        @Override // com.warefly.checkscan.ui.dotindicator.BaseDotsIndicator.a
        public final void b(int i) {
            d = i;
            gw5 gw5Var = c;
            if (gw5Var != null) {
                gw5Var.b(0.0f, i);
            }
        }

        @Override // com.warefly.checkscan.ui.dotindicator.BaseDotsIndicator.a
        public final void c(gw5 gw5Var) {
            gw5Var.getClass();
            c = gw5Var;
        }

        @Override // com.warefly.checkscan.ui.dotindicator.BaseDotsIndicator.a
        public final void d() {
            c = null;
        }

        @Override // com.warefly.checkscan.ui.dotindicator.BaseDotsIndicator.a
        public final boolean e() {
            return true;
        }

        @Override // com.warefly.checkscan.ui.dotindicator.BaseDotsIndicator.a
        public final int getCount() {
            return b;
        }
    }

    public static final class c extends ViewPager2.OnPageChangeCallback {
        public c() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public final void onPageSelected(int i) {
            OnboardingOneSlideFragment.this.o().onImageSlideSelected(i);
        }
    }

    public static final class d extends gh4 implements nl3<View, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            OnboardingOneSlideFragment.this.o().onBackPressed();
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ OnboardingOneSlideModel.Button g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(OnboardingOneSlideModel.Button button) {
            super(1);
            this.g = button;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            OnboardingOneSlideFragment onboardingOneSlideFragment = OnboardingOneSlideFragment.this;
            OnboardingOneSlidePresenter onboardingOneSlidePresenterO = onboardingOneSlideFragment.o();
            OnboardingOneSlideModel.Button button = this.g;
            onboardingOneSlidePresenterO.onActionClicked(button.c);
            onboardingOneSlideFragment.o().logButtonEvent(button.d);
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ OnboardingOneSlideModel.Button g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(OnboardingOneSlideModel.Button button) {
            super(1);
            this.g = button;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            OnboardingOneSlideFragment onboardingOneSlideFragment = OnboardingOneSlideFragment.this;
            OnboardingOneSlidePresenter onboardingOneSlidePresenterO = onboardingOneSlideFragment.o();
            OnboardingOneSlideModel.Button button = this.g;
            onboardingOneSlidePresenterO.onActionClicked(button.c);
            onboardingOneSlideFragment.o().checkIfCanShowSkipButtonInAuth(button.c);
            onboardingOneSlideFragment.o().logButtonEvent(button.d);
            return j59.a;
        }
    }

    public static final class g extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ OnboardingOneSlideModel.Button g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(OnboardingOneSlideModel.Button button) {
            super(1);
            this.g = button;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            OnboardingOneSlideFragment onboardingOneSlideFragment = OnboardingOneSlideFragment.this;
            OnboardingOneSlidePresenter onboardingOneSlidePresenterO = onboardingOneSlideFragment.o();
            OnboardingOneSlideModel.Button button = this.g;
            onboardingOneSlidePresenterO.onActionClicked(button.c);
            onboardingOneSlideFragment.o().logButtonEvent(button.d);
            return j59.a;
        }
    }

    public static final class h extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ OnboardingOneSlideModel.Button g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(OnboardingOneSlideModel.Button button) {
            super(1);
            this.g = button;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            OnboardingOneSlideFragment onboardingOneSlideFragment = OnboardingOneSlideFragment.this;
            OnboardingOneSlidePresenter onboardingOneSlidePresenterO = onboardingOneSlideFragment.o();
            OnboardingOneSlideModel.Button button = this.g;
            onboardingOneSlidePresenterO.onActionClicked(button.c);
            onboardingOneSlideFragment.o().checkIfCanShowSkipButtonInAuth(button.c);
            onboardingOneSlideFragment.o().logButtonEvent(button.d);
            return j59.a;
        }
    }

    public static final class i extends gh4 implements nl3<View, j59> {
        public i() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            OnboardingOneSlideFragment.this.o().onBackPressed();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(OnboardingOneSlideFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentOnboardingOneSlideBinding;", 0);
        x07.a.getClass();
        j = new ze4[]{bs6Var};
        i = new a();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        return o().onBackPressed();
    }

    public final FragmentOnboardingOneSlideBinding n() {
        return (FragmentOnboardingOneSlideBinding) this.g.getValue(this, j[0]);
    }

    public final OnboardingOneSlidePresenter o() {
        OnboardingOneSlidePresenter onboardingOneSlidePresenter = this.presenter;
        if (onboardingOneSlidePresenter != null) {
            return onboardingOneSlidePresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    public final OnboardingOneSlidePresenter providePresenter() throws Exception {
        Parcelable parcelable;
        Bundle arguments = getArguments();
        if (arguments != null) {
            if (Build.VERSION.SDK_INT >= 33) {
                parcelable = (Parcelable) arguments.getParcelable("ONE_SLIDE_KEY", OnboardingOneSlideModel.class);
            } else {
                Parcelable parcelable2 = arguments.getParcelable("ONE_SLIDE_KEY");
                if (!(parcelable2 instanceof OnboardingOneSlideModel)) {
                    parcelable2 = null;
                }
                parcelable = (OnboardingOneSlideModel) parcelable2;
            }
            OnboardingOneSlideModel onboardingOneSlideModel = (OnboardingOneSlideModel) parcelable;
            if (onboardingOneSlideModel != null) {
                return new OnboardingOneSlidePresenter((kv) m2.c(kv.class, defpackage.e.e(this), null, null), onboardingOneSlideModel, (bx5) m2.c(bx5.class, defpackage.e.e(this), null, null), (jf6) m2.c(jf6.class, defpackage.e.e(this), null, null), (uf3) n2.c(uf3.class, defpackage.e.e(this), j(), null), (hr7) m2.c(hr7.class, defpackage.e.e(this), null, null));
            }
        }
        throw new Exception("OnboadringOneSlideModel can not be null");
    }

    @Override // com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.view.OnboardingOneSlideView
    public final void setUpSlides(List<String> list) {
        list.getClass();
        FragmentOnboardingOneSlideBinding fragmentOnboardingOneSlideBindingN = n();
        fragmentOnboardingOneSlideBindingN.vpBankSlider.setAdapter(new k24(this, list));
        DotsIndicator dotsIndicator = fragmentOnboardingOneSlideBindingN.vpBankSliderIndicator;
        dotsIndicator.getClass();
        dotsIndicator.setVisibility(list.size() > 1 ? 0 : 8);
        DotsIndicator dotsIndicator2 = fragmentOnboardingOneSlideBindingN.vpBankSliderIndicator;
        ViewPager2 viewPager2 = fragmentOnboardingOneSlideBindingN.vpBankSlider;
        viewPager2.getClass();
        dotsIndicator2.b(viewPager2);
        fragmentOnboardingOneSlideBindingN.vpBankSlider.registerOnPageChangeCallback(new c());
    }

    @Override // com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.view.OnboardingOneSlideView
    public final void shareReferralLink(String str) {
        Object aVar;
        str.getClass();
        try {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.SEND");
            intent.putExtra("android.intent.extra.TEXT", str);
            intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
            startActivity(Intent.createChooser(intent, getString(R.string.referral_share_title)));
            aVar = j59.a;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Throwable thA = k57.a(aVar);
        if (thA != null) {
            String localizedMessage = thA.getLocalizedMessage();
            if (localizedMessage == null) {
                localizedMessage = "";
            }
            showToastMessage(localizedMessage);
        }
    }

    @Override // com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.view.OnboardingOneSlideView
    public final void showAlfaClientVerification(BankClientVerificationModel bankClientVerificationModel) {
        bankClientVerificationModel.getClass();
        BankClientVerificationDialog bankClientVerificationDialog = this.h;
        if (bankClientVerificationDialog != null) {
            bankClientVerificationDialog.dismiss();
        }
        BankClientVerificationDialog.d.getClass();
        BankClientVerificationDialog bankClientVerificationDialog2 = new BankClientVerificationDialog();
        bankClientVerificationDialog2.setArguments(BundleKt.bundleOf(new b36("ALFA_CLIENT_VERIFICATION_KEY", bankClientVerificationModel)));
        this.h = bankClientVerificationDialog2;
        l(bankClientVerificationDialog2);
    }

    @Override // com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.view.OnboardingOneSlideView
    public final void showConfetti() {
        ConfettiLayoutBinding confettiLayoutBinding = n().incldConfetti;
        confettiLayoutBinding.getClass();
        kv1.a(confettiLayoutBinding);
    }

    @Override // com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.view.OnboardingOneSlideView
    public final void showNetworkError() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.network_error, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.view.OnboardingOneSlideView
    public final void showSlide(OnboardingOneSlideModel onboardingOneSlideModel) {
        onboardingOneSlideModel.getClass();
        FragmentOnboardingOneSlideBinding fragmentOnboardingOneSlideBindingN = n();
        fragmentOnboardingOneSlideBindingN.tvTitle.setText(onboardingOneSlideModel.b);
        fragmentOnboardingOneSlideBindingN.tvDescription.setText(onboardingOneSlideModel.c);
        if (onboardingOneSlideModel.i) {
            DotsIndicator dotsIndicator = fragmentOnboardingOneSlideBindingN.dotsIndicator;
            dotsIndicator.getClass();
            dotsIndicator.setVisibility(0);
            DotsIndicator dotsIndicator2 = fragmentOnboardingOneSlideBindingN.dotsIndicator;
            dotsIndicator2.getClass();
            b.c = new com.warefly.checkscan.ui.dotindicator.a(dotsIndicator2);
            b.b = onboardingOneSlideModel.j;
            DotsIndicator dotsIndicator3 = fragmentOnboardingOneSlideBindingN.dotsIndicator;
            b bVar = b.a;
            dotsIndicator3.setPager(bVar);
            bVar.b(onboardingOneSlideModel.k);
        }
        if (onboardingOneSlideModel.e) {
            ImageView imageView = fragmentOnboardingOneSlideBindingN.btnBack;
            imageView.getClass();
            imageView.setVisibility(0);
            imageView.setOnClickListener(new lb7(new d()));
        }
        com.bumptech.glide.a.d(requireContext()).h(onboardingOneSlideModel.d).L(fragmentOnboardingOneSlideBindingN.ivBanner);
        OnboardingOneSlideModel.Button button = onboardingOneSlideModel.g;
        if (button != null) {
            TextView textView = fragmentOnboardingOneSlideBindingN.btnPrimary;
            textView.getClass();
            textView.setVisibility(0);
            fragmentOnboardingOneSlideBindingN.btnPrimary.setText(button.b);
            TextView textView2 = fragmentOnboardingOneSlideBindingN.btnPrimary;
            textView2.getClass();
            textView2.setOnClickListener(new lb7(new e(button)));
        }
        OnboardingOneSlideModel.Button button2 = onboardingOneSlideModel.h;
        if (button2 != null) {
            TextView textView3 = fragmentOnboardingOneSlideBindingN.btnSecondary;
            textView3.getClass();
            textView3.setVisibility(0);
            fragmentOnboardingOneSlideBindingN.btnSecondary.setText(button2.b);
            TextView textView4 = fragmentOnboardingOneSlideBindingN.btnSecondary;
            textView4.getClass();
            textView4.setOnClickListener(new lb7(new f(button2)));
        }
    }

    @Override // com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.view.OnboardingOneSlideView
    public final void showSubSlide(OnboardingOneSlideModel onboardingOneSlideModel) {
        onboardingOneSlideModel.getClass();
        FragmentOnboardingOneSlideBinding fragmentOnboardingOneSlideBindingN = n();
        fragmentOnboardingOneSlideBindingN.tvTitle.setText(onboardingOneSlideModel.b);
        fragmentOnboardingOneSlideBindingN.tvDescription.setText(onboardingOneSlideModel.c);
        if (onboardingOneSlideModel.i) {
            DotsIndicator dotsIndicator = fragmentOnboardingOneSlideBindingN.dotsIndicator;
            dotsIndicator.getClass();
            dotsIndicator.setVisibility(0);
            DotsIndicator dotsIndicator2 = fragmentOnboardingOneSlideBindingN.dotsIndicator;
            dotsIndicator2.getClass();
            b.c = new com.warefly.checkscan.ui.dotindicator.a(dotsIndicator2);
            b.b = onboardingOneSlideModel.j;
            DotsIndicator dotsIndicator3 = fragmentOnboardingOneSlideBindingN.dotsIndicator;
            b bVar = b.a;
            dotsIndicator3.setPager(bVar);
            bVar.b(onboardingOneSlideModel.k);
        }
        if (onboardingOneSlideModel.e) {
            ImageView imageView = fragmentOnboardingOneSlideBindingN.btnBack;
            imageView.getClass();
            imageView.setVisibility(0);
            imageView.setOnClickListener(new lb7(new i()));
        }
        ImageView imageView2 = fragmentOnboardingOneSlideBindingN.ivBanner;
        imageView2.getClass();
        imageView2.setVisibility(8);
        OnboardingOneSlideModel.Button button = onboardingOneSlideModel.g;
        if (button != null) {
            TextView textView = fragmentOnboardingOneSlideBindingN.btnPrimary;
            textView.getClass();
            textView.setVisibility(0);
            fragmentOnboardingOneSlideBindingN.btnPrimary.setText(button.b);
            TextView textView2 = fragmentOnboardingOneSlideBindingN.btnPrimary;
            textView2.getClass();
            textView2.setOnClickListener(new lb7(new g(button)));
        }
        OnboardingOneSlideModel.Button button2 = onboardingOneSlideModel.h;
        if (button2 != null) {
            TextView textView3 = fragmentOnboardingOneSlideBindingN.btnSecondary;
            textView3.getClass();
            textView3.setVisibility(0);
            fragmentOnboardingOneSlideBindingN.btnSecondary.setText(button2.b);
            TextView textView4 = fragmentOnboardingOneSlideBindingN.btnSecondary;
            textView4.getClass();
            textView4.setOnClickListener(new lb7(new h(button2)));
        }
    }

    @Override // com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.view.OnboardingOneSlideView
    public final void showToastMessage(String str) {
        str.getClass();
        Context context = getContext();
        if (context != null) {
            Toast.makeText(context, str, 1).show();
        }
    }
}
