package com.warefly.checkscan.presentation.offerCard.view;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.navigation.NavArgsLazy;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.load.engine.GlideException;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.FragmentCardOfferLandingBinding;
import com.warefly.checkscan.presentation.offerCard.presenter.CardOfferLandingPresenter;
import defpackage.aa4;
import defpackage.ab0;
import defpackage.at5;
import defpackage.bs6;
import defpackage.bt5;
import defpackage.c9;
import defpackage.ca0;
import defpackage.cd9;
import defpackage.ct5;
import defpackage.dt5;
import defpackage.et5;
import defpackage.eu1;
import defpackage.fa0;
import defpackage.fh8;
import defpackage.ft5;
import defpackage.gh4;
import defpackage.gt5;
import defpackage.gw8;
import defpackage.hb0;
import defpackage.hq8;
import defpackage.ht5;
import defpackage.it5;
import defpackage.j59;
import defpackage.jf6;
import defpackage.js4;
import defpackage.jt5;
import defpackage.kt5;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.lt5;
import defpackage.m2;
import defpackage.mt5;
import defpackage.n2;
import defpackage.nl3;
import defpackage.nt5;
import defpackage.o37;
import defpackage.ol4;
import defpackage.ot5;
import defpackage.oz1;
import defpackage.pl2;
import defpackage.pt5;
import defpackage.qt5;
import defpackage.r10;
import defpackage.u96;
import defpackage.uf3;
import defpackage.wk8;
import defpackage.x07;
import defpackage.xs5;
import defpackage.y82;
import defpackage.ys5;
import defpackage.z31;
import defpackage.ze4;
import defpackage.zs5;
import defpackage.zs8;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class CardOfferLandingFragment extends BaseFragment<FragmentCardOfferLandingBinding> implements CardOfferLandingView {
    public static final /* synthetic */ ze4<Object>[] k;
    public final int f = R.layout.fragment_card_offer_landing;
    public final ol4 g = new ol4(FragmentCardOfferLandingBinding.class);
    public final NavArgsLazy h = new NavArgsLazy(x07.a(z31.class), new e());
    public final fh8 i = new fh8(new a());
    public eu1 j;
    public CardOfferLandingPresenter presenter;

    public static final class a extends gh4 implements ll3<ColorDrawable> {
        public a() {
            super(0);
        }

        @Override // defpackage.ll3
        public final ColorDrawable invoke() {
            return new ColorDrawable(CardOfferLandingFragment.this.getResources().getColor(R.color.readilyBlue));
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            CardOfferLandingPresenter cardOfferLandingPresenter = CardOfferLandingFragment.this.presenter;
            if (cardOfferLandingPresenter != null) {
                cardOfferLandingPresenter.onIssueCardClick();
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
            CardOfferLandingPresenter cardOfferLandingPresenter = CardOfferLandingFragment.this.presenter;
            if (cardOfferLandingPresenter != null) {
                cardOfferLandingPresenter.onBackClick();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    public static final class d<T> implements o37 {
        public final /* synthetic */ FragmentCardOfferLandingBinding a;
        public final /* synthetic */ CardOfferLandingFragment b;

        public d(FragmentCardOfferLandingBinding fragmentCardOfferLandingBinding, CardOfferLandingFragment cardOfferLandingFragment) {
            this.a = fragmentCardOfferLandingBinding;
            this.b = cardOfferLandingFragment;
        }

        @Override // defpackage.o37
        public final boolean onLoadFailed(GlideException glideException, Object obj, wk8<T> wk8Var, boolean z) {
            return false;
        }

        @Override // defpackage.o37
        public final boolean onResourceReady(Object obj, Object obj2, wk8 wk8Var, y82 y82Var, boolean z) {
            FragmentCardOfferLandingBinding fragmentCardOfferLandingBinding = this.a;
            CollapsingToolbarLayout collapsingToolbarLayout = fragmentCardOfferLandingBinding.appbar;
            ze4<Object>[] ze4VarArr = CardOfferLandingFragment.k;
            fh8 fh8Var = this.b.i;
            collapsingToolbarLayout.setContentScrim((ColorDrawable) fh8Var.getValue());
            fragmentCardOfferLandingBinding.toolbarBanner.setBackground((ColorDrawable) fh8Var.getValue());
            fragmentCardOfferLandingBinding.ivBanner.setVisibility(0);
            fragmentCardOfferLandingBinding.ivLoading.setVisibility(8);
            fragmentCardOfferLandingBinding.ivBanner.setImageDrawableWithCache((Drawable) obj);
            return false;
        }
    }

    public static final class e implements ll3<Bundle> {
        public e() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            CardOfferLandingFragment cardOfferLandingFragment = CardOfferLandingFragment.this;
            Bundle arguments = cardOfferLandingFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(cardOfferLandingFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(CardOfferLandingFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    public final FragmentCardOfferLandingBinding n() {
        return (FragmentCardOfferLandingBinding) this.g.getValue(this, k[0]);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = n().rvContent;
        int i = 1;
        eu1 eu1Var = new eu1(new fa0(ys5.c, i), new qt5(pt5.c), new ab0(jt5.c, i), new it5(ht5.c), new gt5(ft5.c), new at5(zs5.c), new ct5(bt5.c), new hb0(lt5.c, 1), new r10(js4.c, i));
        this.j = eu1Var;
        recyclerView.setAdapter(eu1Var);
        eu1 eu1Var2 = this.j;
        if (eu1Var2 != null) {
            ArrayList arrayList = new ArrayList(10);
            for (int i2 = 0; i2 < 10; i2++) {
                arrayList.add(new ot5());
            }
            eu1Var2.submitList(arrayList);
        }
        FragmentCardOfferLandingBinding fragmentCardOfferLandingBindingN = n();
        TextView textView = fragmentCardOfferLandingBindingN.btnIssueCard;
        textView.getClass();
        textView.setOnClickListener(new lb7(new b()));
        ImageView imageView = fragmentCardOfferLandingBindingN.btnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new c()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final CardOfferLandingPresenter providePresenter() {
        return new CardOfferLandingPresenter((ca0) m2.c(ca0.class, defpackage.e.e(this), null, null), ((z31) this.h.getValue()).a, (uf3) n2.c(uf3.class, defpackage.e.e(this), j(), null), (jf6) m2.c(jf6.class, defpackage.e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.offerCard.view.CardOfferLandingView
    public final void showData(nt5 nt5Var) {
        nt5Var.getClass();
        FragmentCardOfferLandingBinding fragmentCardOfferLandingBindingN = n();
        com.bumptech.glide.a.e(fragmentCardOfferLandingBindingN.ivBanner).h(nt5Var.a).F(new d(fragmentCardOfferLandingBindingN, this)).O();
        fragmentCardOfferLandingBindingN.btnIssueCard.setText(nt5Var.b);
        fragmentCardOfferLandingBindingN.layoutButtonIssueCard.setVisibility(0);
        eu1 eu1Var = this.j;
        if (eu1Var != null) {
            eu1Var.submitList(nt5Var.c);
        }
        RecyclerView recyclerView = n().rvContent;
        if (recyclerView.getItemDecorationCount() > 0) {
            recyclerView.removeItemDecorationAt(0);
        }
        int iE = pl2.e(8);
        eu1 eu1Var2 = this.j;
        cd9.a aVar = new cd9.a(iE, eu1Var2 != null ? eu1Var2.i.d(xs5.class) : -1);
        int iE2 = pl2.e(52);
        eu1 eu1Var3 = this.j;
        cd9.a aVar2 = new cd9.a(iE2, eu1Var3 != null ? eu1Var3.i.d(gw8.class) : -1);
        int iE3 = pl2.e(16);
        eu1 eu1Var4 = this.j;
        cd9.a aVar3 = new cd9.a(iE3, eu1Var4 != null ? eu1Var4.i.d(kt5.class) : -1);
        int iE4 = pl2.e(16);
        eu1 eu1Var5 = this.j;
        cd9.a aVar4 = new cd9.a(iE4, eu1Var5 != null ? eu1Var5.i.d(zs8.class) : -1);
        int iE5 = pl2.e(12);
        eu1 eu1Var6 = this.j;
        cd9.a aVar5 = new cd9.a(iE5, eu1Var6 != null ? eu1Var6.i.d(hq8.class) : -1);
        int iE6 = pl2.e(16);
        eu1 eu1Var7 = this.j;
        cd9.a aVar6 = new cd9.a(iE6, eu1Var7 != null ? eu1Var7.i.d(et5.class) : -1);
        int iE7 = pl2.e(16);
        eu1 eu1Var8 = this.j;
        cd9.a aVar7 = new cd9.a(iE7, eu1Var8 != null ? eu1Var8.i.d(dt5.class) : -1);
        int iE8 = pl2.e(52);
        eu1 eu1Var9 = this.j;
        recyclerView.addItemDecoration(new cd9(u96.i(aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7, new cd9.a(iE8, eu1Var9 != null ? eu1Var9.i.d(mt5.class) : -1))), 0);
    }

    @Override // com.warefly.checkscan.presentation.offerCard.view.CardOfferLandingView
    public final void showSomeError() {
        String string = getString(R.string.some_error);
        string.getClass();
        View view = getView();
        if (view != null) {
            oz1.e(view, string);
        }
    }
}
