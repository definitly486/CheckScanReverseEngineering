package com.warefly.checkscan.presentation.bonuses.onlineShops.view;

import android.content.Context;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.navigation.NavArgsLazy;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.infinityScrolling.HorizontalCarouselRecyclerViewNew;
import com.warefly.checkscan.databinding.FragmentOnlineShopsNewBinding;
import com.warefly.checkscan.databinding.LayoutToolbarSimpleTitleBinding;
import com.warefly.checkscan.presentation.bonuses.behaviors.AddedToFavesDialog;
import com.warefly.checkscan.presentation.bonuses.behaviors.RemovedFromFavesDialog;
import com.warefly.checkscan.presentation.bonuses.onlineShops.categoriesDialog.view.CategoriesDialog;
import com.warefly.checkscan.presentation.bonuses.onlineShops.presenter.NewOnlineShopPresenter;
import com.warefly.checkscan.presentation.commonDialogs.ordAdDialog.OrdAdInfoDialog;
import defpackage.aa4;
import defpackage.ay5;
import defpackage.b06;
import defpackage.bk1;
import defpackage.bm0;
import defpackage.bm3;
import defpackage.bs6;
import defpackage.bw;
import defpackage.by5;
import defpackage.c9;
import defpackage.cs0;
import defpackage.cy5;
import defpackage.dq6;
import defpackage.dv7;
import defpackage.dw5;
import defpackage.dw7;
import defpackage.dy5;
import defpackage.e;
import defpackage.en1;
import defpackage.eu1;
import defpackage.ey5;
import defpackage.g81;
import defpackage.gv7;
import defpackage.gy8;
import defpackage.j59;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.n2;
import defpackage.na;
import defpackage.ol4;
import defpackage.pa;
import defpackage.qm3;
import defpackage.rw3;
import defpackage.s47;
import defpackage.s58;
import defpackage.tv7;
import defpackage.uf3;
import defpackage.wv7;
import defpackage.x07;
import defpackage.ze4;
import defpackage.zx5;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class OnlineShopsFragment extends BaseFragment<FragmentOnlineShopsNewBinding> implements OnlineShopsView {
    public static final /* synthetic */ ze4<Object>[] p;
    public CategoriesDialog i;
    public OrdAdInfoDialog j;
    public eu1 k;
    public s58 l;
    public eu1 o;
    public NewOnlineShopPresenter presenter;
    public final int f = R.layout.fragment_online_shops_new;
    public final ol4 g = new ol4(FragmentOnlineShopsNewBinding.class);
    public final NavArgsLazy h = new NavArgsLazy(x07.a(ey5.class), new b());
    public final c m = new c();
    public final d n = new d();

    public static final /* synthetic */ class a extends qm3 implements bm3<Integer, String, j59> {
        @Override // defpackage.bm3
        public final j59 invoke(Integer num, String str) {
            int iIntValue = num.intValue();
            String str2 = str;
            str2.getClass();
            ((NewOnlineShopPresenter) this.receiver).showShops(iIntValue, str2);
            return j59.a;
        }
    }

    public static final class b implements ll3<Bundle> {
        public b() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            OnlineShopsFragment onlineShopsFragment = OnlineShopsFragment.this;
            Bundle arguments = onlineShopsFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(onlineShopsFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    public static final class c extends RecyclerView.OnScrollListener {
        public c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public final void onScrollStateChanged(RecyclerView recyclerView, int i) {
            recyclerView.getClass();
            if (i == 0) {
                RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
                layoutManager.getClass();
                OnlineShopsFragment.this.o().changePosSpecialByUser(((LinearLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition());
            }
        }
    }

    public static final class d implements RecyclerView.OnItemTouchListener {
        public d() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public final boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            recyclerView.getClass();
            motionEvent.getClass();
            int action = motionEvent.getAction();
            OnlineShopsFragment onlineShopsFragment = OnlineShopsFragment.this;
            if (action == 0) {
                onlineShopsFragment.o().setScrollState(false);
                return false;
            }
            if (action != 1 && action != 3) {
                return false;
            }
            onlineShopsFragment.o().setScrollState(true);
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public final void onRequestDisallowInterceptTouchEvent(boolean z) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public final void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            recyclerView.getClass();
            motionEvent.getClass();
        }
    }

    static {
        bs6 bs6Var = new bs6(OnlineShopsFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;", 0);
        x07.a.getClass();
        p = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        o().onBackPressed();
        return false;
    }

    public final FragmentOnlineShopsNewBinding n() {
        return (FragmentOnlineShopsNewBinding) this.g.getValue(this, p[0]);
    }

    public final NewOnlineShopPresenter o() {
        NewOnlineShopPresenter newOnlineShopPresenter = this.presenter;
        if (newOnlineShopPresenter != null) {
            return newOnlineShopPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        LayoutToolbarSimpleTitleBinding layoutToolbarSimpleTitleBinding = n().toolbar;
        layoutToolbarSimpleTitleBinding.tvTitle.setText(((ey5) this.h.getValue()).a);
        ImageView imageView = layoutToolbarSimpleTitleBinding.ivBtnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new bw(this, 1)));
        ImageView imageView2 = layoutToolbarSimpleTitleBinding.btnAction;
        imageView2.getClass();
        imageView2.setVisibility(0);
        com.bumptech.glide.a.d(layoutToolbarSimpleTitleBinding.getRoot().getContext()).f(Integer.valueOf(R.drawable.ic_filter_categories)).L(layoutToolbarSimpleTitleBinding.btnAction);
        ImageView imageView3 = layoutToolbarSimpleTitleBinding.btnAction;
        imageView3.getClass();
        imageView3.setOnClickListener(new lb7(new dy5(this)));
        RecyclerView recyclerView = n().rvAll;
        s58 s58Var = new s58(this.m, o(), this.n, new bk1(), o(), o().getCurrentSpecialPos());
        this.l = s58Var;
        j59 j59Var = j59.a;
        gv7 gv7Var = new gv7();
        eu1 eu1Var = this.o;
        if (eu1Var == null) {
            eu1Var = new eu1(new dq6(new zx5(2, o(), NewOnlineShopPresenter.class, "onFavoritePromocode", "onFavoritePromocode(IZ)V", 0), new ay5(1, o(), NewOnlineShopPresenter.class, "onPromocodeClicked", "onPromocodeClicked(I)V", 0)));
            this.o = eu1Var;
        }
        eu1 eu1Var2 = new eu1(s58Var, gv7Var, new tv7(eu1Var), new wv7(new by5(o())), new dv7(o()), new dw7(o()), new na(o()));
        this.k = eu1Var2;
        recyclerView.setAdapter(eu1Var2);
        recyclerView.addOnScrollListener(new dw5(new cy5(0, o(), NewOnlineShopPresenter.class, "loadNextShops", "loadNextShops()V", 0)));
        recyclerView.setItemAnimator(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final NewOnlineShopPresenter providePresenter() {
        uf3 uf3Var = (uf3) n2.c(uf3.class, e.e(this), j(), null);
        NavArgsLazy navArgsLazy = this.h;
        return new NewOnlineShopPresenter(uf3Var, ((ey5) navArgsLazy.getValue()).b, (bm0) m2.c(bm0.class, e.e(this), null, null), ((ey5) navArgsLazy.getValue()).d, ((ey5) navArgsLazy.getValue()).c, ((ey5) navArgsLazy.getValue()).a, (s47) m2.c(s47.class, e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.view.OnlineShopsView
    public final void scrollNextSpecials(int i) {
        HorizontalCarouselRecyclerViewNew horizontalCarouselRecyclerViewNew;
        s58 s58Var = this.l;
        if (s58Var == null || (horizontalCarouselRecyclerViewNew = s58Var.h) == null) {
            return;
        }
        if (i != 0) {
            horizontalCarouselRecyclerViewNew.smoothScrollToPosition(i);
        } else {
            horizontalCarouselRecyclerViewNew.scrollToPosition(i);
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.view.OnlineShopsView
    public final void scrollToTop() {
        n().rvAll.smoothScrollToPosition(0);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.view.OnlineShopsView
    public final void setToolbarTitle(String str) {
        str.getClass();
        n().toolbar.tvTitle.setText(str);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.view.OnlineShopsView
    public final void showAllData(List<? extends cs0> list) {
        list.getClass();
        eu1 eu1Var = this.k;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
        RecyclerView recyclerView = n().rvAll;
        if (recyclerView.getItemDecorationCount() > 0) {
            recyclerView.removeItemDecorationAt(0);
        }
        eu1 eu1Var2 = this.k;
        recyclerView.addItemDecoration(new rw3(16, 16, eu1Var2 != null ? eu1Var2.i.d(en1.a.class) : Integer.MIN_VALUE), 0);
        if (recyclerView.getItemDecorationCount() > 1) {
            recyclerView.removeItemDecorationAt(1);
        }
        eu1 eu1Var3 = this.k;
        int iD = eu1Var3 != null ? eu1Var3.i.d(en1.a.class) : Integer.MIN_VALUE;
        eu1 eu1Var4 = this.k;
        int iD2 = eu1Var4 != null ? eu1Var4.i.d(en1.b.class) : Integer.MIN_VALUE;
        eu1 eu1Var5 = this.k;
        recyclerView.addItemDecoration(new gy8(new int[]{iD, iD2, eu1Var5 != null ? eu1Var5.i.d(pa.class) : Integer.MIN_VALUE}), 1);
        if (recyclerView.getItemDecorationCount() > 2) {
            recyclerView.removeItemDecorationAt(2);
        }
        eu1 eu1Var6 = this.k;
        recyclerView.addItemDecoration(new rw3(16, 16, eu1Var6 != null ? eu1Var6.i.d(pa.class) : Integer.MIN_VALUE), 2);
        if (recyclerView.getItemDecorationCount() > 3) {
            recyclerView.removeItemDecorationAt(3);
        }
        eu1 eu1Var7 = this.k;
        recyclerView.addItemDecoration(new rw3(16, 16, eu1Var7 != null ? eu1Var7.i.d(en1.b.class) : Integer.MIN_VALUE), 3);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.view.OnlineShopsView
    public final void showFavouriteStatusChanged(boolean z) {
        Context context = getContext();
        if (context != null) {
            if (z) {
                new AddedToFavesDialog(context, true).show();
            } else {
                new RemovedFromFavesDialog(context, true).show();
            }
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.view.OnlineShopsView
    public final void showFilterButton(boolean z) {
        ImageView imageView = n().toolbar.btnAction;
        imageView.getClass();
        imageView.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.view.OnlineShopsView
    public final void showFilters(List<g81> list, int i) {
        list.getClass();
        CategoriesDialog categoriesDialog = this.i;
        if (categoriesDialog != null) {
            categoriesDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            CategoriesDialog categoriesDialog2 = new CategoriesDialog(context, i, new a(2, o(), NewOnlineShopPresenter.class, "showShops", "showShops(ILjava/lang/String;)V", 0), list);
            this.i = categoriesDialog2;
            categoriesDialog2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.view.OnlineShopsView
    public final void showLoading(boolean z) {
        FragmentOnlineShopsNewBinding fragmentOnlineShopsNewBindingN = n();
        RecyclerView recyclerView = fragmentOnlineShopsNewBindingN.rvAll;
        recyclerView.getClass();
        recyclerView.setVisibility(z ? 8 : 0);
        FrameLayout root = fragmentOnlineShopsNewBindingN.viewLoading.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.onlineShops.view.OnlineShopsView
    public final void showOrdBottomSheet(b06 b06Var) {
        b06Var.getClass();
        OrdAdInfoDialog ordAdInfoDialog = this.j;
        if (ordAdInfoDialog != null) {
            ordAdInfoDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            OrdAdInfoDialog ordAdInfoDialog2 = new OrdAdInfoDialog(context, b06Var);
            this.j = ordAdInfoDialog2;
            ordAdInfoDialog2.show();
        }
    }
}
