package com.warefly.checkscan.presentation.offerLanding.landing.view;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.content.ContextCompat;
import androidx.navigation.NavArgsLazy;
import androidx.recyclerview.widget.RecyclerView;
import com.androidadvance.topsnackbar.TSnackbar;
import com.bumptech.glide.load.engine.GlideException;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.core.ui.SafeImageView;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.offerLanding.databinding.FragmentOfferLandingBinding;
import com.warefly.checkscan.presentation.offerLanding.landing.presenter.OfferLandingPresenter;
import com.warefly.checkscan.shimmer.ShimmerFrameLayout;
import defpackage.aa4;
import defpackage.b20;
import defpackage.bs6;
import defpackage.c9;
import defpackage.cd9;
import defpackage.cu5;
import defpackage.eu1;
import defpackage.eu5;
import defpackage.gh4;
import defpackage.hu5;
import defpackage.i72;
import defpackage.iu5;
import defpackage.j59;
import defpackage.ju5;
import defpackage.ku5;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.lu5;
import defpackage.m2;
import defpackage.mu5;
import defpackage.n2;
import defpackage.nl3;
import defpackage.o37;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.pl2;
import defpackage.ps4;
import defpackage.r10;
import defpackage.u96;
import defpackage.uf3;
import defpackage.ut5;
import defpackage.vt5;
import defpackage.wk8;
import defpackage.wt5;
import defpackage.x07;
import defpackage.y82;
import defpackage.ze4;
import defpackage.zt5;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class OfferLandingFragment extends BaseFragment<FragmentOfferLandingBinding> implements OfferLandingView {
    public static final /* synthetic */ ze4<Object>[] j;
    public final int f = R.layout.fragment_offer_landing;
    public final ol4 g = new ol4(FragmentOfferLandingBinding.class);
    public final NavArgsLazy h = new NavArgsLazy(x07.a(zt5.class), new e());
    public eu1 i;
    public OfferLandingPresenter presenter;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            OfferLandingPresenter offerLandingPresenter = OfferLandingFragment.this.presenter;
            if (offerLandingPresenter != null) {
                offerLandingPresenter.onBackClicked();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    public static final class b<T> implements o37 {
        public final /* synthetic */ FragmentOfferLandingBinding a;

        public b(FragmentOfferLandingBinding fragmentOfferLandingBinding) {
            this.a = fragmentOfferLandingBinding;
        }

        @Override // defpackage.o37
        public final boolean onLoadFailed(GlideException glideException, Object obj, wk8<T> wk8Var, boolean z) {
            return false;
        }

        @Override // defpackage.o37
        public final boolean onResourceReady(Object obj, Object obj2, wk8 wk8Var, y82 y82Var, boolean z) {
            FragmentOfferLandingBinding fragmentOfferLandingBinding = this.a;
            SafeImageView safeImageView = fragmentOfferLandingBinding.ivBanner;
            safeImageView.getClass();
            safeImageView.setVisibility(0);
            ShimmerFrameLayout shimmerFrameLayout = fragmentOfferLandingBinding.ivLoading;
            shimmerFrameLayout.getClass();
            shimmerFrameLayout.setVisibility(8);
            fragmentOfferLandingBinding.ivBanner.setImageDrawableWithCache((Drawable) obj);
            return false;
        }
    }

    public static final class c extends gh4 implements nl3<View, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            OfferLandingPresenter offerLandingPresenter = OfferLandingFragment.this.presenter;
            if (offerLandingPresenter != null) {
                offerLandingPresenter.onIssueCardClicked();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    public static final class d extends gh4 implements ll3<j59> {
        public d() {
            super(0);
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            OfferLandingPresenter offerLandingPresenter = OfferLandingFragment.this.presenter;
            if (offerLandingPresenter != null) {
                offerLandingPresenter.loadLanding();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    public static final class e implements ll3<Bundle> {
        public e() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            OfferLandingFragment offerLandingFragment = OfferLandingFragment.this;
            Bundle arguments = offerLandingFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(offerLandingFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(OfferLandingFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;", 0);
        x07.a.getClass();
        j = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        OfferLandingPresenter offerLandingPresenter = this.presenter;
        if (offerLandingPresenter != null) {
            offerLandingPresenter.onBackClicked();
            return false;
        }
        aa4.j("presenter");
        throw null;
    }

    public final FragmentOfferLandingBinding n() {
        return (FragmentOfferLandingBinding) this.g.getValue(this, j[0]);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = n().rvContent;
        int i = 2;
        eu1 eu1Var = new eu1(new ps4(lu5.c, 1), new wt5(vt5.c), new b20(ju5.c, i), new r10(eu5.c, i));
        this.i = eu1Var;
        recyclerView.setAdapter(eu1Var);
        eu1 eu1Var2 = this.i;
        if (eu1Var2 != null) {
            ArrayList arrayList = new ArrayList(10);
            for (int i2 = 0; i2 < 10; i2++) {
                arrayList.add(new iu5());
            }
            eu1Var2.submitList(arrayList);
        }
        ImageView imageView = n().btnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new a()));
    }

    @Override // com.warefly.checkscan.presentation.offerLanding.landing.view.OfferLandingView
    public final void openUrlCustomTab(String str) {
        str.getClass();
        i72.b(getContext(), str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final OfferLandingPresenter providePresenter() {
        return new OfferLandingPresenter((cu5) m2.c(cu5.class, defpackage.e.e(this), null, null), (uf3) n2.c(uf3.class, defpackage.e.e(this), j(), null), ((zt5) this.h.getValue()).a);
    }

    @Override // com.warefly.checkscan.presentation.offerLanding.landing.view.OfferLandingView
    public final void showButtonLoading(boolean z) {
        n().btnIssueCard.setLoading(z);
    }

    @Override // com.warefly.checkscan.presentation.offerLanding.landing.view.OfferLandingView
    public final void showData(hu5 hu5Var) {
        hu5Var.getClass();
        FragmentOfferLandingBinding fragmentOfferLandingBindingN = n();
        com.bumptech.glide.a.e(fragmentOfferLandingBindingN.ivBanner).h(hu5Var.a).F(new b(fragmentOfferLandingBindingN)).O();
        fragmentOfferLandingBindingN.btnIssueCard.setText(hu5Var.b);
        fragmentOfferLandingBindingN.btnIssueCard.setEnabled(hu5Var.c);
        LoadingButton loadingButton = fragmentOfferLandingBindingN.btnIssueCard;
        loadingButton.getClass();
        loadingButton.setOnClickListener(new lb7(new c()));
        LinearLayout linearLayout = fragmentOfferLandingBindingN.layoutButtonIssueCard;
        linearLayout.getClass();
        linearLayout.setVisibility(0);
        eu1 eu1Var = this.i;
        if (eu1Var != null) {
            eu1Var.submitList(hu5Var.d);
        }
        RecyclerView recyclerView = n().rvContent;
        if (recyclerView.getItemDecorationCount() > 0) {
            recyclerView.removeItemDecorationAt(0);
        }
        int iE = pl2.e(8);
        eu1 eu1Var2 = this.i;
        cd9.a aVar = new cd9.a(iE, eu1Var2 != null ? eu1Var2.i.d(ut5.class) : -1);
        int iE2 = pl2.e(32);
        eu1 eu1Var3 = this.i;
        cd9.a aVar2 = new cd9.a(iE2, eu1Var3 != null ? eu1Var3.i.d(mu5.class) : -1);
        int iE3 = pl2.e(16);
        eu1 eu1Var4 = this.i;
        recyclerView.addItemDecoration(new cd9(u96.i(aVar, aVar2, new cd9.a(iE3, eu1Var4 != null ? eu1Var4.i.d(ku5.class) : -1))), 0);
    }

    @Override // com.warefly.checkscan.presentation.offerLanding.landing.view.OfferLandingView
    public final void showLandingLoadingError() {
        CoordinatorLayout coordinatorLayout = n().coordLayout;
        coordinatorLayout.getClass();
        String string = getString(R.string.offer_landing_error_loading);
        string.getClass();
        String string2 = getString(R.string.offer_landing_error_loading_button_title);
        string2.getClass();
        oz1.f(coordinatorLayout, string, string2, new d());
    }

    @Override // com.warefly.checkscan.presentation.offerLanding.landing.view.OfferLandingView
    public final void showLinkLoadingError() {
        View view = getView();
        if (view != null) {
            String string = getString(R.string.offer_link_error_loading);
            string.getClass();
            String string2 = getString(R.string.offer_link_error_loading_button);
            string2.getClass();
            if (view.isAttachedToWindow()) {
                final TSnackbar tSnackbarC = TSnackbar.c(view, string, 0);
                TSnackbar.SnackbarLayout snackbarLayout = tSnackbarC.b;
                snackbarLayout.setBackgroundColor(ContextCompat.getColor(view.getContext(), R.color.blueAlice));
                snackbarLayout.getActionView().setTextColor(ContextCompat.getColor(view.getContext(), R.color.readilyBlue));
                tSnackbarC.e(string2, new View.OnClickListener() { // from class: mz1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        tSnackbarC.b(3);
                    }
                });
                tSnackbarC.f();
            }
        }
    }
}
