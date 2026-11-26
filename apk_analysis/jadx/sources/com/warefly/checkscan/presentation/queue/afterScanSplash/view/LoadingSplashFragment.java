package com.warefly.checkscan.presentation.queue.afterScanSplash.view;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.FragmentActivity;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.databinding.LayoutAdsBadgeBinding;
import com.warefly.checkscan.databinding.FragmentBannerAfterScanLoadingBinding;
import com.warefly.checkscan.presentation.commonDialogs.ordAdDialog.OrdAdInfoDialog;
import com.warefly.checkscan.presentation.queue.afterScanSplash.presenter.LoadingSplashPresenter;
import com.warefly.checkscan.subscription.databinding.AnonSplashScanResultBinding;
import defpackage.aa4;
import defpackage.b06;
import defpackage.b68;
import defpackage.bs6;
import defpackage.fw0;
import defpackage.gh4;
import defpackage.hc0;
import defpackage.ic8;
import defpackage.j59;
import defpackage.jf6;
import defpackage.ks4;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.mo7;
import defpackage.n2;
import defpackage.nl3;
import defpackage.oe0;
import defpackage.ol4;
import defpackage.qs2;
import defpackage.s47;
import defpackage.uf3;
import defpackage.uk7;
import defpackage.wc8;
import defpackage.x07;
import defpackage.y22;
import defpackage.yg1;
import defpackage.zd3;
import defpackage.ze4;
import eightbitlab.com.blurview.BlurView;
import java.net.URISyntaxException;

/* JADX INFO: loaded from: classes5.dex */
public final class LoadingSplashFragment extends BaseFragment<FragmentBannerAfterScanLoadingBinding> implements LoadingSplashView {
    public static final /* synthetic */ ze4<Object>[] j;
    public final int f = R.layout.fragment_banner_after_scan_loading;
    public final ol4 g = new ol4(FragmentBannerAfterScanLoadingBinding.class);
    public uk7 h;
    public OrdAdInfoDialog i;
    public LoadingSplashPresenter presenter;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            LoadingSplashFragment.this.o().onSkip();
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            LoadingSplashFragment.this.o().onSkip();
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ b06 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(b06 b06Var) {
            super(1);
            this.g = b06Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            LoadingSplashFragment.this.o().onAdInfoDialog(this.g);
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<View, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            LoadingSplashFragment.this.o().onAccept();
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<View, j59> {
        public e() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            LoadingSplashFragment.this.o().onSkip();
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ wc8 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(wc8 wc8Var) {
            super(1);
            this.g = wc8Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            LoadingSplashFragment.this.openUrl(this.g.e);
            return j59.a;
        }
    }

    public static final class g extends gh4 implements nl3<Long, j59> {
        public static final g f = new g(1);

        @Override // defpackage.nl3
        public final j59 invoke(Long l) {
            l.longValue();
            return j59.a;
        }
    }

    public static final class h extends gh4 implements ll3<j59> {
        public h() {
            super(0);
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            LoadingSplashFragment loadingSplashFragment = LoadingSplashFragment.this;
            OrdAdInfoDialog ordAdInfoDialog = loadingSplashFragment.i;
            if (ordAdInfoDialog != null) {
                ordAdInfoDialog.dismiss();
            }
            loadingSplashFragment.o().onSkip();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(LoadingSplashFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;", 0);
        x07.a.getClass();
        j = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        o().onSkip();
        return false;
    }

    public final FragmentBannerAfterScanLoadingBinding n() {
        return (FragmentBannerAfterScanLoadingBinding) this.g.getValue(this, j[0]);
    }

    public final LoadingSplashPresenter o() {
        LoadingSplashPresenter loadingSplashPresenter = this.presenter;
        if (loadingSplashPresenter != null) {
            return loadingSplashPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        uk7 uk7Var = this.h;
        if (uk7Var != null) {
            uk7Var.cancel();
        }
        super.onDestroyView();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        FragmentBannerAfterScanLoadingBinding fragmentBannerAfterScanLoadingBindingN = n();
        ImageButton imageButton = fragmentBannerAfterScanLoadingBindingN.btnResultClose;
        imageButton.getClass();
        imageButton.setOnClickListener(new lb7(new a()));
        ImageView imageView = fragmentBannerAfterScanLoadingBindingN.btnCloseSplash;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new b()));
    }

    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public final void openDeeplink(String str) throws URISyntaxException {
        FragmentActivity activity;
        PackageManager packageManager;
        str.getClass();
        Intent uri = Intent.parseUri(str, 0);
        if (uri == null || (activity = getActivity()) == null || (packageManager = activity.getPackageManager()) == null || uri.resolveActivity(packageManager) == null) {
            return;
        }
        o().finishScannerFlow();
        startActivity(uri);
    }

    public final LoadingSplashPresenter providePresenter() {
        uf3 uf3Var = (uf3) n2.c(uf3.class, defpackage.e.e(this), j(), null);
        jf6 jf6Var = (jf6) m2.c(jf6.class, defpackage.e.e(this), null, null);
        s47 s47Var = (s47) m2.c(s47.class, defpackage.e.e(this), null, null);
        b68 b68Var = (b68) m2.c(b68.class, defpackage.e.e(this), null, null);
        return new LoadingSplashPresenter(uf3Var, jf6Var, (yg1) m2.c(yg1.class, defpackage.e.e(this), null, null), b68Var, s47Var, (ic8) m2.c(ic8.class, defpackage.e.e(this), null, null), (mo7) m2.c(mo7.class, defpackage.e.e(this), null, null), (y22) n2.c(y22.class, defpackage.e.e(this), oe0.e, null));
    }

    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public final void setFinishedTitle(String str) {
        str.getClass();
        n().tvSplashDone.setText(str);
        n().tvResult.setText(str);
    }

    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public final void setSecondsLeft(long j2) {
        n().tvSplashSecsLeft.setText(getString(R.string.splash_seconds, String.valueOf(j2)));
    }

    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public final void setSecondsLeftWithoutSplash(long j2) {
        n().incldLoadingWithoutSplash.tvSecs.setText(getString(R.string.splash_seconds, String.valueOf(j2)));
    }

    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public final void setSplashFinishedInvisible(boolean z) {
        Group group = n().groupDone;
        group.getClass();
        group.setVisibility(z ? 4 : 0);
    }

    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public final void setSplashLoadingInvisible(boolean z) {
        Group group = n().groupProgress;
        group.getClass();
        group.setVisibility(z ? 4 : 0);
    }

    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public final void setSplashLoadingTitle(String str) {
        str.getClass();
        n().tvSplashLoading.setText(str);
    }

    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public final void setWithoutSplashLoadingTitle(String str) {
        str.getClass();
        n().incldLoadingWithoutSplash.tvLoading.setText(str);
    }

    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public final void showAdInfoDialog(b06 b06Var) {
        b06Var.getClass();
        OrdAdInfoDialog ordAdInfoDialog = this.i;
        if (ordAdInfoDialog != null) {
            ordAdInfoDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            OrdAdInfoDialog ordAdInfoDialog2 = new OrdAdInfoDialog(context, b06Var);
            ordAdInfoDialog2.show();
            this.i = ordAdInfoDialog2;
        }
    }

    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public final void showCloseButton(boolean z) {
        ImageView imageView = n().btnCloseSplash;
        imageView.getClass();
        imageView.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public final void showLoadingWithSplash(boolean z) {
        ConstraintLayout constraintLayout = n().layoutLoading;
        constraintLayout.getClass();
        constraintLayout.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public final void showLoadingWithoutSplash(boolean z) {
        ConstraintLayout root = n().incldLoadingWithoutSplash.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public final void showReceiptLoadedWithoutSplash() {
        if (isResumed()) {
            FragmentBannerAfterScanLoadingBinding fragmentBannerAfterScanLoadingBindingN = n();
            fragmentBannerAfterScanLoadingBindingN.layoutLoading.setVisibility(8);
            fragmentBannerAfterScanLoadingBindingN.layoutChequeLoad.setVisibility(0);
            o().checkCountScanCheque();
        }
    }

    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public final void showSplash(hc0.c cVar) {
        cVar.getClass();
        FragmentBannerAfterScanLoadingBinding fragmentBannerAfterScanLoadingBindingN = n();
        fragmentBannerAfterScanLoadingBindingN.bannerPlaceholder.setVisibility(0);
        com.bumptech.glide.a.e(fragmentBannerAfterScanLoadingBindingN.ivPicture).h(cVar.b).q(R.drawable.placeholder_poll).P(qs2.h()).L(fragmentBannerAfterScanLoadingBindingN.ivPicture);
        fragmentBannerAfterScanLoadingBindingN.tvTitle.setText(cVar.c);
        fragmentBannerAfterScanLoadingBindingN.tvTitle.setVisibility(0);
        TextView textView = fragmentBannerAfterScanLoadingBindingN.btnAccept;
        fw0 fw0Var = cVar.f;
        if (fw0Var != null) {
            textView.setText(fw0Var.b);
            try {
                textView.setTextColor(fw0Var.a.intValue());
                j59 j59Var = j59.a;
            } catch (Throwable unused) {
            }
            try {
                Integer num = fw0Var.c;
                if (num != null) {
                    textView.setBackgroundTintList(ColorStateList.valueOf(num.intValue()));
                }
                j59 j59Var2 = j59.a;
            } catch (Throwable unused2) {
            }
            textView.setVisibility(0);
            textView.setOnClickListener(new lb7(new d()));
        }
        b06 b06Var = cVar.g;
        if (b06Var != null) {
            LayoutAdsBadgeBinding layoutAdsBadgeBinding = n().incldAdsBadge;
            BlurView blurView = layoutAdsBadgeBinding.blurView;
            blurView.getClass();
            FrameLayout root = n().getRoot();
            root.getClass();
            zd3.h(blurView, root);
            BlurView root2 = layoutAdsBadgeBinding.getRoot();
            root2.getClass();
            root2.setVisibility(b06Var.b ? 0 : 8);
            BlurView root3 = layoutAdsBadgeBinding.getRoot();
            root3.getClass();
            root3.setOnClickListener(new lb7(new c(b06Var)));
        }
    }

    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public final void showSubscriptionSplash(wc8 wc8Var) {
        wc8Var.getClass();
        AnonSplashScanResultBinding anonSplashScanResultBinding = n().incldSubscriptionAnon;
        ConstraintLayout root = anonSplashScanResultBinding.getRoot();
        root.getClass();
        root.setVisibility(0);
        anonSplashScanResultBinding.tvTitle.setText(wc8Var.a);
        anonSplashScanResultBinding.tvDescription.setText(wc8Var.b);
        anonSplashScanResultBinding.ivBanner.setAnimationFromUrl(wc8Var.c);
        anonSplashScanResultBinding.ivBanner.setFailureListener(new ks4());
        ImageView imageView = anonSplashScanResultBinding.btnClose;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new e()));
        TextView textView = anonSplashScanResultBinding.btnActivate;
        textView.setText(wc8Var.d);
        textView.setOnClickListener(new lb7(new f(wc8Var)));
    }

    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public final void skip() {
        uk7 uk7Var = new uk7(7, g.f, new h());
        uk7Var.start();
        this.h = uk7Var;
    }

    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public final void startProgressAnimation(long j2) {
        ObjectAnimator.ofInt(n().pbSplashLoading, "progress", 100).setDuration(j2).start();
    }

    @Override // com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView
    public final void startProgressAnimationWithoutSplash(long j2) {
        ObjectAnimator.ofInt(n().incldLoadingWithoutSplash.pbLoading, "progress", 100).setDuration(j2).start();
    }
}
