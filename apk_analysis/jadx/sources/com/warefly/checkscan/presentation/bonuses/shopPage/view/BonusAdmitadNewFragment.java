package com.warefly.checkscan.presentation.bonuses.shopPage.view;

import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.text.Spannable;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.navigation.NavArgsLazy;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.base.dialogs.LoadingDialog;
import com.warefly.checkscan.databinding.FragmentAdmitadNewBinding;
import com.warefly.checkscan.databinding.ItemAdmitadGetCashbackDescriptionBinding;
import com.warefly.checkscan.databinding.ItemAdmitadNewDescriptionBinding;
import com.warefly.checkscan.databinding.ItemAdmitadPromocodeCouponsBinding;
import com.warefly.checkscan.databinding.ItemAdmitadRewardsBinding;
import com.warefly.checkscan.databinding.ItemAdmitadTitleBinding;
import com.warefly.checkscan.databinding.LayoutPowercodeDescriptionBinding;
import com.warefly.checkscan.databinding.LayoutTextToolbarBinding;
import com.warefly.checkscan.presentation.bonuses.behaviors.AddedToFavesDialog;
import com.warefly.checkscan.presentation.bonuses.behaviors.RemovedFromFavesDialog;
import com.warefly.checkscan.presentation.bonuses.shopPage.howGetCashbackDialog.view.HowGetMoreCashbackDialog;
import com.warefly.checkscan.presentation.bonuses.shopPage.presenter.BonusAdmitadNewPresenter;
import com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialog;
import com.warefly.checkscan.presentation.commonDialogs.ordAdDialog.OrdAdInfoDialog;
import com.warefly.checkscan.presentation.webview.WebViewActivity;
import defpackage.aa4;
import defpackage.aw5;
import defpackage.b06;
import defpackage.bs6;
import defpackage.c9;
import defpackage.cl4;
import defpackage.cq8;
import defpackage.ds2;
import defpackage.e87;
import defpackage.eu1;
import defpackage.fq4;
import defpackage.gh4;
import defpackage.gr6;
import defpackage.i72;
import defpackage.ie9;
import defpackage.j59;
import defpackage.jf6;
import defpackage.jr6;
import defpackage.la8;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.n2;
import defpackage.nk0;
import defpackage.nl3;
import defpackage.nm4;
import defpackage.nx5;
import defpackage.ok0;
import defpackage.ol4;
import defpackage.os7;
import defpackage.oz1;
import defpackage.pk0;
import defpackage.pl2;
import defpackage.po4;
import defpackage.q00;
import defpackage.q42;
import defpackage.qk0;
import defpackage.qm3;
import defpackage.qn1;
import defpackage.qs2;
import defpackage.qx5;
import defpackage.r31;
import defpackage.rk0;
import defpackage.s37;
import defpackage.s47;
import defpackage.sk0;
import defpackage.sx3;
import defpackage.sy8;
import defpackage.t81;
import defpackage.ta8;
import defpackage.tk0;
import defpackage.uf3;
import defpackage.uk0;
import defpackage.ux5;
import defpackage.v05;
import defpackage.v88;
import defpackage.x07;
import defpackage.x9;
import defpackage.yw3;
import defpackage.ze4;
import defpackage.zn6;
import defpackage.zw3;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class BonusAdmitadNewFragment extends BaseFragment<FragmentAdmitadNewBinding> implements BonusAdmitadNewView {
    public static final /* synthetic */ ze4<Object>[] u;
    public final int f = R.layout.fragment_admitad_new;
    public final ol4 g = new ol4(FragmentAdmitadNewBinding.class);
    public final NavArgsLazy h = new NavArgsLazy(x07.a(uk0.class), new p());
    public final cl4 i = nm4.a(po4.SYNCHRONIZED, new o());
    public os7 j;
    public AddedToFavesDialog k;
    public RemovedFromFavesDialog l;
    public RedirectDialog m;
    public LoadingDialog n;
    public OrdAdInfoDialog o;
    public HowGetMoreCashbackDialog p;
    public BonusAdmitadNewPresenter presenter;
    public eu1 q;
    public eu1 r;
    public eu1 s;
    public eu1 t;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            View view2 = view;
            view2.getClass();
            BonusAdmitadNewFragment bonusAdmitadNewFragment = BonusAdmitadNewFragment.this;
            bonusAdmitadNewFragment.o().setFavouriteShop(((uk0) bonusAdmitadNewFragment.h.getValue()).a, !view2.isSelected());
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
            BonusAdmitadNewFragment.this.o().onBackClick();
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ String g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str) {
            super(1);
            this.g = str;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            BonusAdmitadNewFragment.this.o().onGoToShopButtonClick(this.g);
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
            BonusAdmitadNewFragment.this.o().onGoToAllOperationsClicked();
            return j59.a;
        }
    }

    public static final class e extends gh4 implements ll3<j59> {
        public final /* synthetic */ qx5 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(qx5 qx5Var) {
            super(0);
            this.g = qx5Var;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            BonusAdmitadNewFragment.this.o().onShareCardClicked(this.g);
            return j59.a;
        }
    }

    public static final /* synthetic */ class f extends qm3 implements nl3<Boolean, j59> {
        @Override // defpackage.nl3
        public final j59 invoke(Boolean bool) {
            ((BonusAdmitadNewPresenter) this.receiver).showLoadingDialog(bool.booleanValue());
            return j59.a;
        }
    }

    public static final class g extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ qx5 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(qx5 qx5Var) {
            super(1);
            this.g = qx5Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            BonusAdmitadNewFragment.this.o().onGoToShopButtonClick(this.g.h.b);
            return j59.a;
        }
    }

    public static final class h extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ qx5 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(qx5 qx5Var) {
            super(1);
            this.g = qx5Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            BonusAdmitadNewPresenter bonusAdmitadNewPresenterO = BonusAdmitadNewFragment.this.o();
            qx5 qx5Var = this.g;
            bonusAdmitadNewPresenterO.showAllTerm(qn1.h0(qx5Var.i, qx5Var.j));
            return j59.a;
        }
    }

    public static final class i extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ qx5 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(qx5 qx5Var) {
            super(1);
            this.g = qx5Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            BonusAdmitadNewFragment.this.o().onAffiliationCheckClicked(this.g.p);
            return j59.a;
        }
    }

    public static final class j implements View.OnLayoutChangeListener {
        public final /* synthetic */ LayoutTextToolbarBinding b;
        public final /* synthetic */ qx5 c;

        public j(LayoutTextToolbarBinding layoutTextToolbarBinding, qx5 qx5Var) {
            this.b = layoutTextToolbarBinding;
            this.c = qx5Var;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            view.removeOnLayoutChangeListener(this);
            LayoutTextToolbarBinding layoutTextToolbarBinding = this.b;
            int measuredWidth = layoutTextToolbarBinding.btnFave.getMeasuredWidth() + layoutTextToolbarBinding.btnShare.getMeasuredWidth();
            TextView textView = layoutTextToolbarBinding.tvToolbarTitle;
            textView.getClass();
            ie9.a(measuredWidth, textView);
            textView.setMaxLines(1);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            textView.setText(this.c.c);
        }
    }

    public static final class k extends gh4 implements nl3<View, j59> {
        public k() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            BonusAdmitadNewFragment.this.o().onSeeAllCouponsClick();
            return j59.a;
        }
    }

    public static final class l extends gh4 implements ll3<j59> {
        public l() {
            super(0);
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            View view = BonusAdmitadNewFragment.this.getView();
            if (view != null) {
                oz1.g(R.string.bonuses_dynamic_link_error, view);
            }
            return j59.a;
        }
    }

    public static final class m extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ r31 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(r31 r31Var) {
            super(1);
            this.g = r31Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            BonusAdmitadNewFragment.this.o().onMoreCashbackInfoClick(this.g);
            return j59.a;
        }
    }

    public static final class n extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ b06 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public n(b06 b06Var) {
            super(1);
            this.g = b06Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            BonusAdmitadNewFragment.this.o().onOrdClick(this.g);
            return j59.a;
        }
    }

    public static final class o implements ll3<v05> {
        public o() {
        }

        /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, v05] */
        @Override // defpackage.ll3
        public final v05 invoke() {
            return m2.c(v05.class, defpackage.e.e(BonusAdmitadNewFragment.this), null, null);
        }
    }

    public static final class p implements ll3<Bundle> {
        public p() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            BonusAdmitadNewFragment bonusAdmitadNewFragment = BonusAdmitadNewFragment.this;
            Bundle arguments = bonusAdmitadNewFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(bonusAdmitadNewFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(BonusAdmitadNewFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;", 0);
        x07.a.getClass();
        u = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        o().onBackClick();
        return false;
    }

    public final FragmentAdmitadNewBinding n() {
        return (FragmentAdmitadNewBinding) this.g.getValue(this, u[0]);
    }

    public final BonusAdmitadNewPresenter o() {
        BonusAdmitadNewPresenter bonusAdmitadNewPresenter = this.presenter;
        if (bonusAdmitadNewPresenter != null) {
            return bonusAdmitadNewPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.q = null;
        this.r = null;
        this.s = null;
        this.t = null;
        super.onDestroyView();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        LayoutTextToolbarBinding layoutTextToolbarBinding = n().viewToolbar;
        layoutTextToolbarBinding.btnShare.setVisibility(0);
        layoutTextToolbarBinding.btnFave.setVisibility(0);
        ImageView imageView = layoutTextToolbarBinding.btnFave;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new a()));
        ImageView imageView2 = layoutTextToolbarBinding.btnBack;
        imageView2.getClass();
        imageView2.setOnClickListener(new lb7(new b()));
        RecyclerView recyclerView = n().layoutTitle.viewRewards.rvTerms;
        eu1 eu1Var = new eu1(new cq8((v05) this.i.getValue()));
        this.q = eu1Var;
        recyclerView.setAdapter(eu1Var);
        RecyclerView recyclerView2 = n().layoutGetCashbackInfo.rvSteps;
        eu1 eu1Var2 = new eu1(new v88());
        this.t = eu1Var2;
        recyclerView2.setAdapter(eu1Var2);
        Context context = recyclerView2.getContext();
        context.getClass();
        recyclerView2.addItemDecoration(new fq4(context));
        RecyclerView recyclerView3 = n().layoutPopularProducts.rvHotItems;
        eu1 eu1Var3 = new eu1(new zw3(new ok0(this), new pk0(2, o(), BonusAdmitadNewPresenter.class, "onHotItemOrderClick", "onHotItemOrderClick(Ljava/lang/String;Ljava/lang/String;)V", 0), new qk0(0, o(), BonusAdmitadNewPresenter.class, "onAdultConfirmedClick", "onAdultConfirmedClick()V", 0)));
        this.r = eu1Var3;
        recyclerView3.setAdapter(eu1Var3);
        RecyclerView.LayoutManager layoutManager = recyclerView3.getLayoutManager();
        layoutManager.getClass();
        recyclerView3.addOnScrollListener(new aw5((LinearLayoutManager) layoutManager, new rk0(0, o(), BonusAdmitadNewPresenter.class, "loadNextHots", "loadNextHots()Lkotlin/Unit;", 8)));
        RecyclerView recyclerView4 = n().layoutPromocodesCoupons.rvAdmitadPromocodes;
        eu1 eu1Var4 = new eu1(new jr6(new sk0(1, o(), BonusAdmitadNewPresenter.class, "onCouponClick", "onCouponClick(J)V", 0), new tk0(2, o(), BonusAdmitadNewPresenter.class, "setFavouriteCoupon", "setFavouriteCoupon(JZ)V", 0)));
        this.s = eu1Var4;
        recyclerView4.setAdapter(eu1Var4);
        n().nestedScroll.setOnScrollChangeListener(new nk0(this));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public final void openGoToLinkInCustomTabs(String str) {
        str.getClass();
        i72.b(getContext(), str);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public final void openHotItemUrl(String str, String str2) {
        str.getClass();
        str2.getClass();
        Context context = getContext();
        if (context != null) {
            int i2 = WebViewActivity.f;
            startActivity(WebViewActivity.a.a(context, 12, str, str2));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final BonusAdmitadNewPresenter providePresenter() {
        return new BonusAdmitadNewPresenter(((uk0) this.h.getValue()).a, (x9) m2.c(x9.class, defpackage.e.e(this), null, null), (q42) m2.c(q42.class, defpackage.e.e(this), null, null), (uf3) n2.c(uf3.class, defpackage.e.e(this), j(), null), (jf6) m2.c(jf6.class, defpackage.e.e(this), null, null), (s47) m2.c(s47.class, defpackage.e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public final void setButtonShopListener(String str) {
        str.getClass();
        TextView textView = n().btnGoShop;
        textView.getClass();
        textView.setOnClickListener(new lb7(new c(str)));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public final void setCashbackTitle(String str, Spannable spannable) {
        str.getClass();
        spannable.getClass();
        ItemAdmitadTitleBinding itemAdmitadTitleBinding = n().layoutTitle;
        itemAdmitadTitleBinding.tvCashbackTitle.setText(str);
        itemAdmitadTitleBinding.tvCashbackValue.setText(spannable);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public final void setDescriptionInfo(String str) {
        str.getClass();
        ItemAdmitadNewDescriptionBinding itemAdmitadNewDescriptionBinding = n().layoutDescription;
        TextView textView = itemAdmitadNewDescriptionBinding.btnGoToOperations;
        textView.getClass();
        textView.setOnClickListener(new lb7(new d()));
        itemAdmitadNewDescriptionBinding.tvDescription.setText(sx3.a(str));
        itemAdmitadNewDescriptionBinding.tvDescription.setMovementMethod(LinkMovementMethod.getInstance());
        itemAdmitadNewDescriptionBinding.getRoot().setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public final void setFixedCashback(String str) {
        str.getClass();
        TextView textView = n().layoutTitle.tvFixedCashback;
        textView.setText(str);
        textView.setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public final void setFloatingButtonVisibility(boolean z) {
        TextView textView = n().btnGoShop;
        textView.getClass();
        textView.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public final void setHotItemsInfo(List<yw3> list) {
        list.getClass();
        eu1 eu1Var = this.r;
        if (eu1Var != null) {
            eu1Var.submitList(list);
            n().layoutPopularProducts.getRoot().setVisibility(0);
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public final void setOnlineShopInfo(qx5 qx5Var) {
        qx5Var.getClass();
        String str = qx5Var.c;
        List<ux5> list = qx5Var.j;
        nx5 nx5Var = qx5Var.h;
        String str2 = qx5Var.g;
        String str3 = qx5Var.f;
        ItemAdmitadTitleBinding itemAdmitadTitleBinding = n().layoutTitle;
        com.bumptech.glide.a.b(getContext()).d(this).h(qx5Var.a).L(itemAdmitadTitleBinding.ivShop);
        q00 q00Var = qx5Var.b;
        if (q00Var != null) {
            TextView textView = itemAdmitadTitleBinding.tvExpirationDate;
            String str4 = q00Var.a;
            if (str4 != null) {
                textView.setText(str4);
                textView.setVisibility(0);
            }
            String str5 = q00Var.b;
            if (str5 != null) {
                textView.setTextColor(Color.parseColor(str5));
            }
            String str6 = q00Var.c;
            if (str6 != null) {
                DrawableCompat.setTint(DrawableCompat.wrap(textView.getBackground()).mutate(), Color.parseColor(str6));
            }
        }
        itemAdmitadTitleBinding.tvTitle.setText(qx5Var.e);
        if (str3 != null) {
            TextView textView2 = itemAdmitadTitleBinding.tvDescription;
            textView2.setVisibility(0);
            textView2.setText(str3);
        }
        if (str2 == null || ta8.M(str2)) {
            itemAdmitadTitleBinding.ivBanner.setVisibility(8);
        } else {
            com.bumptech.glide.a.d(requireContext()).h(str2).P(qs2.h()).b(new s37().D(new t81(), new e87(pl2.o(10)))).L(itemAdmitadTitleBinding.ivBanner);
        }
        if (nx5Var != null) {
            TextView textView3 = itemAdmitadTitleBinding.btnGoShopping;
            textView3.setVisibility(0);
            textView3.setText(nx5Var.a);
            textView3.setOnClickListener(new lb7(new g(qx5Var)));
        }
        if (!list.isEmpty()) {
            ItemAdmitadRewardsBinding itemAdmitadRewardsBinding = itemAdmitadTitleBinding.viewRewards;
            eu1 eu1Var = this.q;
            if (eu1Var != null) {
                eu1Var.submitList(list);
            }
            if (!qx5Var.i.isEmpty()) {
                itemAdmitadRewardsBinding.overlapShadow.setVisibility(0);
                ImageView imageView = itemAdmitadRewardsBinding.btnMoreTerms;
                imageView.setVisibility(0);
                imageView.setOnClickListener(new lb7(new h(qx5Var)));
            }
        }
        if (qx5Var.p != null) {
            TextView textView4 = itemAdmitadTitleBinding.btnCheckCashback;
            textView4.getClass();
            textView4.setVisibility(0);
            textView4.setOnClickListener(new lb7(new i(qx5Var)));
        }
        itemAdmitadTitleBinding.getRoot().setVisibility(0);
        LayoutTextToolbarBinding layoutTextToolbarBinding = n().viewToolbar;
        layoutTextToolbarBinding.tvToolbarTitle.setText(str);
        layoutTextToolbarBinding.btnFave.setSelected(qx5Var.d);
        AppBarLayout root = layoutTextToolbarBinding.getRoot();
        root.getClass();
        if (!root.isLaidOut() || root.isLayoutRequested()) {
            root.addOnLayoutChangeListener(new j(layoutTextToolbarBinding, qx5Var));
        } else {
            int measuredWidth = layoutTextToolbarBinding.btnFave.getMeasuredWidth() + layoutTextToolbarBinding.btnShare.getMeasuredWidth();
            TextView textView5 = layoutTextToolbarBinding.tvToolbarTitle;
            textView5.getClass();
            ie9.a(measuredWidth, textView5);
            textView5.setMaxLines(1);
            textView5.setEllipsize(TextUtils.TruncateAt.END);
            textView5.setText(str);
        }
        ImageView imageView2 = n().viewToolbar.btnShare;
        imageView2.getClass();
        this.j = new os7(imageView2, new f(1, o(), BonusAdmitadNewPresenter.class, "showLoadingDialog", "showLoadingDialog(Z)V", 0), new e(qx5Var));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public final void setPowerCodeDescription(String str) {
        str.getClass();
        LayoutPowercodeDescriptionBinding layoutPowercodeDescriptionBinding = n().layoutTitle.incldLayoutPowercodeHint;
        layoutPowercodeDescriptionBinding.tvPowercodeDescription.setText(str);
        ConstraintLayout constraintLayout = layoutPowercodeDescriptionBinding.timerContainer;
        constraintLayout.getClass();
        constraintLayout.setVisibility(8);
        ImageView imageView = layoutPowercodeDescriptionBinding.ivLogo;
        imageView.getClass();
        imageView.setVisibility(8);
        ConstraintLayout root = layoutPowercodeDescriptionBinding.getRoot();
        root.getClass();
        root.setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public final void setPowerCodeHotDescription(String str, String str2) {
        str.getClass();
        str2.getClass();
        LayoutPowercodeDescriptionBinding layoutPowercodeDescriptionBinding = n().layoutTitle.incldLayoutPowercodeHint;
        layoutPowercodeDescriptionBinding.tvPowercodeDescription.setText(str);
        layoutPowercodeDescriptionBinding.tvBottomValue.setText(str2);
        ConstraintLayout root = layoutPowercodeDescriptionBinding.getRoot();
        root.getClass();
        root.setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public final void setPromocodesInfo(List<gr6> list) {
        list.getClass();
        eu1 eu1Var = this.s;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
        ItemAdmitadPromocodeCouponsBinding itemAdmitadPromocodeCouponsBinding = n().layoutPromocodesCoupons;
        TextView textView = itemAdmitadPromocodeCouponsBinding.btnSeeAll;
        textView.getClass();
        textView.setOnClickListener(new lb7(new k()));
        itemAdmitadPromocodeCouponsBinding.getRoot().setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public final void setStepsInfo(String str, List<la8> list) {
        str.getClass();
        list.getClass();
        ItemAdmitadGetCashbackDescriptionBinding itemAdmitadGetCashbackDescriptionBinding = n().layoutGetCashbackInfo;
        itemAdmitadGetCashbackDescriptionBinding.tvAdmitadGetCashbackTitle.setText(str);
        eu1 eu1Var = this.t;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
        itemAdmitadGetCashbackDescriptionBinding.getRoot().setVisibility(0);
    }

    @Override // defpackage.js7
    public final void shareCard(String str, String str2, String str3, String str4) {
        m2.e(str, str2, str3, str4);
        os7 os7Var = this.j;
        if (os7Var != null) {
            String string = getString(R.string.bonuses_dynamic_link_description, str3);
            string.getClass();
            f(os7Var.a(str, str2, string, str4, new l()), "ShareCard");
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public final void showAllTerms(List<ux5> list) {
        list.getClass();
        ItemAdmitadRewardsBinding itemAdmitadRewardsBinding = n().layoutTitle.viewRewards;
        itemAdmitadRewardsBinding.overlapShadow.setVisibility(8);
        itemAdmitadRewardsBinding.btnMoreTerms.setVisibility(8);
        eu1 eu1Var = this.q;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public final void showFavoriteStatus(boolean z) {
        n().viewToolbar.btnFave.setSelected(z);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public final void showFavoriteStatusIsChanged(boolean z, boolean z2) {
        Context context = getContext();
        if (context != null) {
            if (z2) {
                AddedToFavesDialog addedToFavesDialog = this.k;
                if (addedToFavesDialog != null) {
                    addedToFavesDialog.dismiss();
                }
                AddedToFavesDialog addedToFavesDialog2 = new AddedToFavesDialog(context, z);
                this.k = addedToFavesDialog2;
                addedToFavesDialog2.show();
                return;
            }
            RemovedFromFavesDialog removedFromFavesDialog = this.l;
            if (removedFromFavesDialog != null) {
                removedFromFavesDialog.dismiss();
            }
            RemovedFromFavesDialog removedFromFavesDialog2 = new RemovedFromFavesDialog(context, z);
            this.l = removedFromFavesDialog2;
            removedFromFavesDialog2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public final void showLoading(boolean z) {
        FragmentAdmitadNewBinding fragmentAdmitadNewBindingN = n();
        ConstraintLayout constraintLayout = fragmentAdmitadNewBindingN.allBlocks;
        constraintLayout.getClass();
        constraintLayout.setVisibility(!z ? 0 : 8);
        FrameLayout root = fragmentAdmitadNewBindingN.viewLoading.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public final void showLoadingDialog(boolean z) {
        LoadingDialog loadingDialog = this.n;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        if (z) {
            LoadingDialog loadingDialogB = LoadingDialog.a.b(LoadingDialog.d);
            m(loadingDialogB);
            this.n = loadingDialogB;
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public final void showMoreCashbackButton(r31 r31Var) {
        r31Var.getClass();
        AppCompatTextView appCompatTextView = n().layoutTitle.btnMoreCashbackDescription;
        appCompatTextView.setText(r31Var.a);
        appCompatTextView.setVisibility(0);
        appCompatTextView.setOnClickListener(new lb7(new m(r31Var)));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public final void showMoreCashbackDialog(r31 r31Var, long j2) {
        r31Var.getClass();
        int i2 = (int) (((double) getResources().getDisplayMetrics().heightPixels) * 0.9d);
        HowGetMoreCashbackDialog howGetMoreCashbackDialog = this.p;
        if (howGetMoreCashbackDialog != null) {
            howGetMoreCashbackDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            HowGetMoreCashbackDialog howGetMoreCashbackDialog2 = new HowGetMoreCashbackDialog(context, r31Var, j2);
            howGetMoreCashbackDialog2.getBehavior().setMaxHeight(i2);
            howGetMoreCashbackDialog2.getBehavior().setPeekHeight(i2);
            howGetMoreCashbackDialog2.show();
            this.p = howGetMoreCashbackDialog2;
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public final void showOfferExpired() {
        n().layoutOfferExpired.getRoot().setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public final void showOrd(b06 b06Var) {
        b06Var.getClass();
        AppCompatTextView appCompatTextView = n().layoutTitle.tvOfd;
        appCompatTextView.getClass();
        boolean z = b06Var.b;
        appCompatTextView.setVisibility(z ? 0 : 8);
        appCompatTextView.setText(b06Var.a);
        appCompatTextView.setSelected(z);
        appCompatTextView.setOnClickListener(new lb7(new n(b06Var)));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public final void showOrdDialog(b06 b06Var) {
        b06Var.getClass();
        OrdAdInfoDialog ordAdInfoDialog = this.o;
        if (ordAdInfoDialog != null) {
            ordAdInfoDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            OrdAdInfoDialog ordAdInfoDialog2 = new OrdAdInfoDialog(context, b06Var);
            ordAdInfoDialog2.show();
            this.o = ordAdInfoDialog2;
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public final void showPromoView(zn6 zn6Var) {
        zn6Var.getClass();
        String str = zn6Var.c;
        String str2 = zn6Var.a;
        ItemAdmitadTitleBinding itemAdmitadTitleBinding = n().layoutTitle;
        ((v05) this.i.getValue()).a(itemAdmitadTitleBinding.tvPromo, zn6Var.b);
        try {
            if (!ta8.M(str2)) {
                ds2.a(itemAdmitadTitleBinding.layoutPromo.getBackground(), Color.parseColor(str2));
            }
            j59 j59Var = j59.a;
        } catch (Throwable unused) {
        }
        try {
            if (!ta8.M(str)) {
                itemAdmitadTitleBinding.tvPromo.setTextColor(Color.parseColor(str));
            }
            j59 j59Var2 = j59.a;
        } catch (Throwable unused2) {
        }
        itemAdmitadTitleBinding.layoutPromo.setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public final void showRedirectDialog(sy8 sy8Var, String str, String str2) {
        sy8Var.getClass();
        str.getClass();
        str2.getClass();
        RedirectDialog redirectDialog = this.m;
        if (redirectDialog != null) {
            redirectDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            RedirectDialog redirectDialog2 = new RedirectDialog(context, sy8Var, str, str2);
            this.m = redirectDialog2;
            redirectDialog2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView
    public final void showRedirectInfo(String str) {
        str.getClass();
        ItemAdmitadTitleBinding itemAdmitadTitleBinding = n().layoutTitle;
        itemAdmitadTitleBinding.tvRedirectHint.setText(str);
        LinearLayout linearLayout = itemAdmitadTitleBinding.layoutRedirectHint;
        linearLayout.getClass();
        linearLayout.setVisibility(0);
    }
}
