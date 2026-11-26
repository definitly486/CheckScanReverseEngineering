package com.warefly.checkscan.bankLanding.presentation.bank.view;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.load.engine.GlideException;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.bankLanding.databinding.FragmentBankLandingBinding;
import com.warefly.checkscan.bankLanding.presentation.bank.presenter.BankLandingPresenter;
import com.warefly.checkscan.core.ui.SafeImageView;
import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.cb0;
import defpackage.eb0;
import defpackage.eu1;
import defpackage.gh4;
import defpackage.ha0;
import defpackage.j59;
import defpackage.ja0;
import defpackage.jb0;
import defpackage.lb0;
import defpackage.lb7;
import defpackage.lo7;
import defpackage.m2;
import defpackage.ma0;
import defpackage.n2;
import defpackage.na0;
import defpackage.nl3;
import defpackage.o37;
import defpackage.oi9;
import defpackage.ol4;
import defpackage.p37;
import defpackage.p38;
import defpackage.t63;
import defpackage.ta8;
import defpackage.uf3;
import defpackage.wk8;
import defpackage.x07;
import defpackage.y82;
import defpackage.ze4;

/* JADX INFO: loaded from: classes.dex */
public final class BankLandingFragment extends FlowFragment<FragmentBankLandingBinding> implements BankLandingView {
    public static final a m;
    public static final /* synthetic */ ze4<Object>[] n;
    public final int j = R.layout.fragment_bank_landing;
    public final ol4 k = new ol4(FragmentBankLandingBinding.class);
    public eu1 l;
    public BankLandingPresenter presenter;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            BankLandingPresenter bankLandingPresenter = BankLandingFragment.this.presenter;
            if (bankLandingPresenter != null) {
                bankLandingPresenter.onBackClicked();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    public static final class c extends gh4 implements nl3<View, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            BankLandingPresenter bankLandingPresenter = BankLandingFragment.this.presenter;
            if (bankLandingPresenter != null) {
                bankLandingPresenter.fetchInfo();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    public static final class d<T> implements o37 {
        public final /* synthetic */ FragmentBankLandingBinding a;

        public d(FragmentBankLandingBinding fragmentBankLandingBinding) {
            this.a = fragmentBankLandingBinding;
        }

        @Override // defpackage.o37
        public final boolean onLoadFailed(GlideException glideException, Object obj, wk8<T> wk8Var, boolean z) {
            return false;
        }

        @Override // defpackage.o37
        public final boolean onResourceReady(Object obj, Object obj2, wk8 wk8Var, y82 y82Var, boolean z) {
            FragmentBankLandingBinding fragmentBankLandingBinding = this.a;
            SafeImageView safeImageView = fragmentBankLandingBinding.ivBanner;
            safeImageView.getClass();
            safeImageView.setVisibility(0);
            fragmentBankLandingBinding.ivBanner.setImageDrawableWithCache((Drawable) obj);
            return false;
        }
    }

    public static final class e extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ na0 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(na0 na0Var) {
            super(1);
            this.g = na0Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            BankLandingPresenter bankLandingPresenter = BankLandingFragment.this.presenter;
            if (bankLandingPresenter != null) {
                bankLandingPresenter.onIssueCardClicked(this.g.c.b);
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    static {
        bs6 bs6Var = new bs6(BankLandingFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;", 0);
        x07.a.getClass();
        n = new ze4[]{bs6Var};
        m = new a();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.FlowFragment, com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final void e(View view) {
        oi9.a(15, view, true);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.FlowFragment, com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.j;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.FlowFragment, com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        BankLandingPresenter bankLandingPresenter = this.presenter;
        if (bankLandingPresenter != null) {
            bankLandingPresenter.onBackClicked();
            return false;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = p().rvContent;
        eu1 eu1Var = new eu1(new eb0(cb0.c), new ja0(ha0.c), new lb0(jb0.c));
        this.l = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.addItemDecoration(new ma0());
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext(), 1, false));
        recyclerView.setItemAnimator(null);
        ImageView imageView = p().btnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new b()));
        TextView textView = p().incldError.btnTryAgain;
        textView.getClass();
        textView.setOnClickListener(new lb7(new c()));
    }

    public final FragmentBankLandingBinding p() {
        return (FragmentBankLandingBinding) this.k.getValue(this, n[0]);
    }

    public final BankLandingPresenter providePresenter() {
        return new BankLandingPresenter((t63) m2.c(t63.class, defpackage.e.e(this), null, null), (uf3) n2.c(uf3.class, defpackage.e.e(this), n(), null), requireArguments().getInt("BANK_LANDING_ID_KEY"), (lo7) m2.c(lo7.class, defpackage.e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.bankLanding.presentation.bank.view.BankLandingView
    public final void showButton(boolean z) {
        MaterialCardView materialCardView = p().mcvIssueCard;
        materialCardView.getClass();
        materialCardView.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.bankLanding.presentation.bank.view.BankLandingView
    public final void showContent(na0 na0Var) {
        na0Var.getClass();
        FragmentBankLandingBinding fragmentBankLandingBindingP = p();
        p37 p37VarE = com.bumptech.glide.a.e(fragmentBankLandingBindingP.ivBanner);
        na0.b bVar = na0Var.a;
        String str = bVar.a;
        String str2 = bVar.d;
        p37VarE.h(bVar.c).F(new d(fragmentBankLandingBindingP)).O();
        try {
            fragmentBankLandingBindingP.toolbarBanner.setBackgroundColor(Color.parseColor(str2));
            fragmentBankLandingBindingP.appbar.setContentScrimColor(Color.parseColor(str2));
            j59 j59Var = j59.a;
        } catch (Throwable unused) {
        }
        AppBarLayout appBarLayout = fragmentBankLandingBindingP.toolbarBanner;
        appBarLayout.getClass();
        appBarLayout.setOutlineProvider(new p38(1));
        appBarLayout.setClipToOutline(true);
        fragmentBankLandingBindingP.tvTitle.setText(str);
        TextView textView = fragmentBankLandingBindingP.tvTitle;
        textView.getClass();
        textView.setVisibility((str == null || ta8.M(str)) ? 8 : 0);
        fragmentBankLandingBindingP.tvSubtitle.setText(bVar.b);
        fragmentBankLandingBindingP.btnIssueCard.setText(na0Var.c.a);
        TextView textView2 = fragmentBankLandingBindingP.btnIssueCard;
        textView2.getClass();
        textView2.setOnClickListener(new lb7(new e(na0Var)));
        MaterialCardView materialCardView = fragmentBankLandingBindingP.mcvIssueCard;
        materialCardView.getClass();
        materialCardView.setVisibility(0);
        eu1 eu1Var = this.l;
        if (eu1Var != null) {
            eu1Var.submitList(na0Var.b);
        }
    }

    @Override // com.warefly.checkscan.bankLanding.presentation.bank.view.BankLandingView
    public final void showError(boolean z) {
        ConstraintLayout root = p().incldError.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.bankLanding.presentation.bank.view.BankLandingView
    public final void showLoading(boolean z) {
        ConstraintLayout root = p().incldLoading.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }
}
