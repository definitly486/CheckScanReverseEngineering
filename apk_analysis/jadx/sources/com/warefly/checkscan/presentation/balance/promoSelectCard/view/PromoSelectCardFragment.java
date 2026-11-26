package com.warefly.checkscan.presentation.balance.promoSelectCard.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.FragmentPromoSelectCardBinding;
import com.warefly.checkscan.presentation.balance.promoSelectCard.presenter.PromoSelectCardPresenter;
import com.warefly.checkscan.presentation.balance.promoSelectCard.view.PromoSelectCardFragment;
import com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalFragment;
import com.warefly.checkscan.shared.simpleInfoBottomSheet.SimpleInfoBottomSheet;
import defpackage.aa4;
import defpackage.ac7;
import defpackage.ap6;
import defpackage.b40;
import defpackage.bs6;
import defpackage.e41;
import defpackage.eu1;
import defpackage.gh4;
import defpackage.iw2;
import defpackage.j59;
import defpackage.jf6;
import defpackage.jp6;
import defpackage.kp6;
import defpackage.ks5;
import defpackage.lb7;
import defpackage.lo7;
import defpackage.lw7;
import defpackage.m2;
import defpackage.mk1;
import defpackage.mo6;
import defpackage.mp6;
import defpackage.n2;
import defpackage.n50;
import defpackage.nl3;
import defpackage.np6;
import defpackage.nw7;
import defpackage.ol4;
import defpackage.op3;
import defpackage.pz3;
import defpackage.ro6;
import defpackage.ss4;
import defpackage.ta;
import defpackage.ta8;
import defpackage.u73;
import defpackage.uf3;
import defpackage.x07;
import defpackage.zb7;
import defpackage.ze4;
import defpackage.zo6;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class PromoSelectCardFragment extends WithdrawalFragment<FragmentPromoSelectCardBinding, PromoSelectCardPresenter> implements PromoSelectCardView {
    public static final a s;
    public static final /* synthetic */ ze4<Object>[] t;
    public final int m = R.layout.fragment_promo_select_card;
    public final ol4 n = new ol4(FragmentPromoSelectCardBinding.class);
    public final String o = "PROMO_SELECT_CARD_TAG";
    public SimpleInfoBottomSheet p;
    public PromoSelectCardPresenter presenter;
    public nw7 q;
    public eu1 r;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            PromoSelectCardFragment.this.n().onBackPressed();
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<View, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            PromoSelectCardFragment.this.n().refreshContent();
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<Boolean, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Boolean bool) {
            bool.getClass();
            PromoSelectCardFragment.this.n().onShowcaseRenderStarted();
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<lw7, j59> {
        public e() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(lw7 lw7Var) {
            lw7 lw7Var2 = lw7Var;
            lw7Var2.getClass();
            PromoSelectCardFragment.this.n().onShowcaseItemShown(lw7Var2);
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ ap6.a g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(ap6.a aVar) {
            super(1);
            this.g = aVar;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            PromoSelectCardPresenter promoSelectCardPresenterN = PromoSelectCardFragment.this.n();
            ap6.a aVar = this.g;
            promoSelectCardPresenterN.onFullTermsClicked(aVar.a, aVar.b);
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(PromoSelectCardFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentPromoSelectCardBinding;", 0);
        x07.a.getClass();
        t = new ze4[]{bs6Var};
        s = new a();
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalFragment, com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalView
    public final void handleLoading(boolean z) {
        ConstraintLayout root = q().incldLoading.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.m;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        n().onBackPressed();
        return false;
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalFragment
    public final String o() {
        return this.o;
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalFragment, com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        ImageView imageView = q().toolbar.ivBtnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new b()));
        TextView textView = q().incldError.btnTryAgain;
        textView.getClass();
        textView.setOnClickListener(new lb7(new c()));
        q().appbarMotivation.addOnOffsetChangedListener(new AppBarLayout.OnOffsetChangedListener() { // from class: qo6
            @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
            public final void onOffsetChanged(AppBarLayout appBarLayout, int i) {
                PromoSelectCardFragment.a aVar = PromoSelectCardFragment.s;
                PromoSelectCardFragment promoSelectCardFragment = this.a;
                LinearLayout linearLayout = promoSelectCardFragment.q().llMotivationBanner;
                linearLayout.getClass();
                if (linearLayout.getVisibility() == 0) {
                    TextView textView2 = promoSelectCardFragment.q().toolbar.tvTitle;
                    textView2.getClass();
                    textView2.setVisibility(appBarLayout.getTotalScrollRange() + i <= 0 ? 0 : 8);
                }
            }
        });
        RecyclerView recyclerView = q().rvContent;
        eu1 eu1Var = new eu1(new np6(mp6.c), new zo6(n()), new n50(n()), new kp6(jp6.c, 0), new mo6(n()), new ta(n()), new ss4(n()));
        this.r = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        recyclerView.addItemDecoration(new ro6(this));
        recyclerView.setItemAnimator(null);
        RecyclerView recyclerView2 = q().rvContent;
        recyclerView2.getClass();
        nw7 nw7Var = new nw7(recyclerView2, n().getShowcaseRenderState(), new d(), new e(), 0.5f);
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        viewLifecycleOwner.getClass();
        nw7Var.a(viewLifecycleOwner);
        this.q = nw7Var;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0031  */
    /* JADX WARN: Code duplicated, block: B:23:0x0055  */
    public final PromoSelectCardPresenter providePresenter() throws Exception {
        Integer num;
        Integer num2;
        Bundle arguments = getArguments();
        if (arguments == null) {
            throw new Exception("Promo id can not be null for PromoSelectCardFragment");
        }
        int i = arguments.getInt("PROMO_ID_PARAM");
        Bundle arguments2 = getArguments();
        String string = arguments2 != null ? arguments2.getString("PROMO_KEY_PARAM") : null;
        Bundle arguments3 = getArguments();
        if (arguments3 != null) {
            int i2 = arguments3.getInt("TASK_ID_PARAM");
            Integer numValueOf = Integer.valueOf(i2);
            if (i2 != -1) {
                num = numValueOf;
            } else {
                num = null;
            }
        } else {
            num = null;
        }
        Bundle arguments4 = getArguments();
        String string2 = arguments4 != null ? arguments4.getString("SOURCE_PARAM") : null;
        Bundle arguments5 = getArguments();
        if (arguments5 != null) {
            int i3 = arguments5.getInt("SOURCE_TASK_ID_PARAM");
            Integer numValueOf2 = Integer.valueOf(i3);
            if (i3 != 0) {
                num2 = numValueOf2;
            } else {
                num2 = null;
            }
        } else {
            num2 = null;
        }
        return new PromoSelectCardPresenter(i, string, num, string2, num2, (e41) m2.c(e41.class, defpackage.e.e(this), null, null), (ac7) m2.c(ac7.class, defpackage.e.e(this), null, null), (zb7) m2.c(zb7.class, defpackage.e.e(this), null, null), (op3) m2.c(op3.class, defpackage.e.e(this), null, null), (u73) m2.c(u73.class, defpackage.e.e(this), null, null), (ks5) m2.c(ks5.class, defpackage.e.e(this), null, null), (b40) m2.c(b40.class, defpackage.e.e(this), null, null), (uf3) n2.c(uf3.class, defpackage.e.e(this), j(), null), (lo7) m2.c(lo7.class, defpackage.e.e(this), null, null), (mk1) m2.c(mk1.class, defpackage.e.e(this), null, null), (jf6) m2.c(jf6.class, defpackage.e.e(this), null, null), (iw2) m2.c(iw2.class, defpackage.e.e(this), null, null));
    }

    public final FragmentPromoSelectCardBinding q() {
        return (FragmentPromoSelectCardBinding) this.n.getValue(this, t[0]);
    }

    @Override // com.warefly.checkscan.presentation.balance.withdrawalMethods.base.view.WithdrawalFragment
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public final PromoSelectCardPresenter n() {
        PromoSelectCardPresenter promoSelectCardPresenter = this.presenter;
        if (promoSelectCardPresenter != null) {
            return promoSelectCardPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.presentation.balance.promoSelectCard.view.PromoSelectCardView
    public final void setToolbarTitle(String str) {
        str.getClass();
        q().toolbar.tvTitle.setText(str);
    }

    @Override // com.warefly.checkscan.presentation.balance.promoSelectCard.view.PromoSelectCardView
    public final void showError(boolean z) {
        ConstraintLayout root = q().incldError.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.balance.promoSelectCard.view.PromoSelectCardView
    public final void showFullTerms(String str, String str2) {
        str2.getClass();
        Context context = getContext();
        if (context != null) {
            SimpleInfoBottomSheet simpleInfoBottomSheet = this.p;
            if (simpleInfoBottomSheet != null) {
                simpleInfoBottomSheet.dismiss();
            }
            SimpleInfoBottomSheet simpleInfoBottomSheet2 = new SimpleInfoBottomSheet(context, str, str2);
            this.p = simpleInfoBottomSheet2;
            simpleInfoBottomSheet2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.balance.promoSelectCard.view.PromoSelectCardView
    public final void showItems(List<? extends pz3> list) {
        list.getClass();
        eu1 eu1Var = this.r;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
        nw7 nw7Var = this.q;
        if (nw7Var != null) {
            nw7Var.d(n().getShowcaseRows());
        }
    }

    @Override // com.warefly.checkscan.presentation.balance.promoSelectCard.view.PromoSelectCardView
    public final void showMotivationBanner(ap6 ap6Var) {
        LinearLayout linearLayout = q().llMotivationBanner;
        linearLayout.getClass();
        linearLayout.setVisibility(ap6Var != null ? 0 : 8);
        if (ap6Var == null) {
            q().getRoot().setBackgroundResource(R.color.blue_10);
            q().toolbar.getRoot().setBackground(null);
            TextView textView = q().toolbar.tvTitle;
            textView.getClass();
            textView.setVisibility(0);
            return;
        }
        String str = ap6Var.b;
        FragmentPromoSelectCardBinding fragmentPromoSelectCardBindingQ = q();
        fragmentPromoSelectCardBindingQ.getRoot().setBackgroundResource(R.color.white);
        fragmentPromoSelectCardBindingQ.toolbar.getRoot().setBackgroundResource(R.color.white);
        fragmentPromoSelectCardBindingQ.tvMotivationTitle.setText(ap6Var.a);
        fragmentPromoSelectCardBindingQ.tvMotivationDescription.setText(str);
        TextView textView2 = fragmentPromoSelectCardBindingQ.tvMotivationDescription;
        textView2.getClass();
        textView2.setVisibility((str == null || ta8.M(str)) ? 8 : 0);
        ap6.a aVar = ap6Var.c;
        if (aVar == null) {
            LinearLayout linearLayout2 = fragmentPromoSelectCardBindingQ.llFullTerms;
            linearLayout2.getClass();
            linearLayout2.setVisibility(8);
            fragmentPromoSelectCardBindingQ.llFullTerms.setOnClickListener(null);
            return;
        }
        fragmentPromoSelectCardBindingQ.tvFullTerms.setText(aVar.a);
        LinearLayout linearLayout3 = fragmentPromoSelectCardBindingQ.llFullTerms;
        linearLayout3.getClass();
        linearLayout3.setVisibility(0);
        LinearLayout linearLayout4 = fragmentPromoSelectCardBindingQ.llFullTerms;
        linearLayout4.getClass();
        linearLayout4.setOnClickListener(new lb7(new f(aVar)));
    }
}
