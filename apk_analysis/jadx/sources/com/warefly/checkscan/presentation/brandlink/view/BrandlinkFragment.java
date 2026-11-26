package com.warefly.checkscan.presentation.brandlink.view;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.navigation.NavArgsLazy;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.FragmentBrandLinkBinding;
import com.warefly.checkscan.presentation.brandlink.presenter.BrandlinkPresenter;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.c9;
import defpackage.di;
import defpackage.e;
import defpackage.gh4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.p61;
import defpackage.rt0;
import defpackage.st0;
import defpackage.tt0;
import defpackage.uf3;
import defpackage.x07;
import defpackage.ze4;
import defpackage.zl2;

/* JADX INFO: loaded from: classes5.dex */
public final class BrandlinkFragment extends BaseFragment<FragmentBrandLinkBinding> implements BrandlinkView {
    public static final /* synthetic */ ze4<Object>[] k;
    public final int f = R.layout.fragment_brand_link;
    public final ol4 g = new ol4(FragmentBrandLinkBinding.class);
    public final NavArgsLazy h = new NavArgsLazy(x07.a(tt0.class), new c());
    public st0.a i;
    public final ActivityResultLauncher<String> j;
    public BrandlinkPresenter presenter;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            BrandlinkPresenter brandlinkPresenter = BrandlinkFragment.this.presenter;
            if (brandlinkPresenter != null) {
                brandlinkPresenter.onBackClick();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            BrandlinkPresenter brandlinkPresenter = BrandlinkFragment.this.presenter;
            if (brandlinkPresenter != null) {
                brandlinkPresenter.onRegistrationClicked();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    public static final class c implements ll3<Bundle> {
        public c() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            BrandlinkFragment brandlinkFragment = BrandlinkFragment.this;
            Bundle arguments = brandlinkFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(brandlinkFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(BrandlinkFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
    }

    public BrandlinkFragment() {
        ActivityResultLauncher<String> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.RequestPermission(), new di(this, 2));
        activityResultLauncherRegisterForActivityResult.getClass();
        this.j = activityResultLauncherRegisterForActivityResult;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.presentation.brandlink.view.BrandlinkView
    public final void loadWebViewLink(String str) {
        str.getClass();
        n().wvBrandlink.loadUrl(str);
    }

    public final FragmentBrandLinkBinding n() {
        return (FragmentBrandLinkBinding) this.g.getValue(this, k[0]);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        WebView webView = n().wvBrandlink;
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setSupportZoom(true);
        settings.setDefaultTextEncodingName("utf-8");
        webView.setScrollBarStyle(GroupFlagsKt.HasAuxSlotFlag);
        settings.setSafeBrowsingEnabled(true);
        webView.setWebViewClient(new rt0(this));
        webView.setWebChromeClient(new st0(this, webView));
        FragmentBrandLinkBinding fragmentBrandLinkBindingN = n();
        ImageView imageView = fragmentBrandLinkBindingN.btnBack;
        imageView.getClass();
        Fragment parentFragment = getParentFragment();
        imageView.setVisibility(aa4.e(parentFragment != null ? parentFragment.getClass().getSimpleName() : null, "RequestsFlowFragment") ? 0 : 8);
        ImageView imageView2 = fragmentBrandLinkBindingN.btnBack;
        imageView2.getClass();
        imageView2.setOnClickListener(new lb7(new a()));
        TextView textView = fragmentBrandLinkBindingN.incldBrandlinkNotAuth.btnSignUp;
        textView.getClass();
        textView.setOnClickListener(new lb7(new b()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final BrandlinkPresenter providePresenter() {
        return new BrandlinkPresenter((p61) m2.c(p61.class, e.e(this), null, null), (zl2) m2.c(zl2.class, e.e(this), null, null), (uf3) n2.c(uf3.class, e.e(this), j(), null), (tt0) this.h.getValue());
    }

    @Override // com.warefly.checkscan.presentation.brandlink.view.BrandlinkView
    public final void sentFeedbackOnTelegram(Intent intent) {
        intent.getClass();
        try {
            startActivity(intent);
            j59 j59Var = j59.a;
        } catch (Throwable unused) {
        }
    }

    @Override // com.warefly.checkscan.presentation.brandlink.view.BrandlinkView
    public final void setAnonPlaceholder(String str) {
        str.getClass();
        FrameLayout root = n().viewLoading.getRoot();
        root.getClass();
        root.setVisibility(8);
        ConstraintLayout root2 = n().incldBrandlinkNotAuth.getRoot();
        root2.getClass();
        root2.setVisibility(0);
        ProgressBar progressBar = n().pbLoading;
        progressBar.getClass();
        progressBar.setVisibility(8);
        com.bumptech.glide.a.d(requireContext()).h(str).L(n().incldBrandlinkNotAuth.ivBrandNotAuth);
    }

    @Override // com.warefly.checkscan.presentation.brandlink.view.BrandlinkView
    public final void showError() {
        FragmentBrandLinkBinding fragmentBrandLinkBindingN = n();
        fragmentBrandLinkBindingN.viewLoading.getRoot().setVisibility(8);
        fragmentBrandLinkBindingN.wvBrandlink.setVisibility(8);
        fragmentBrandLinkBindingN.ivNoImages.setVisibility(0);
        fragmentBrandLinkBindingN.tvBrandlinks.setVisibility(0);
    }
}
