package com.warefly.checkscan.presentation.bonuses.search.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.FragmentBonusesSearchNewBinding;
import com.warefly.checkscan.presentation.bonuses.behaviors.AddedToFavesDialog;
import com.warefly.checkscan.presentation.bonuses.behaviors.RemovedFromFavesDialog;
import com.warefly.checkscan.presentation.bonuses.search.presenter.BonusesSearchPresenter;
import com.warefly.checkscan.presentation.commonDialogs.ordAdDialog.OrdAdInfoDialog;
import defpackage.aa4;
import defpackage.b06;
import defpackage.bs6;
import defpackage.bw7;
import defpackage.cs0;
import defpackage.dq6;
import defpackage.dv7;
import defpackage.dw7;
import defpackage.e;
import defpackage.eu1;
import defpackage.ev7;
import defpackage.ew5;
import defpackage.ey8;
import defpackage.gh4;
import defpackage.gv7;
import defpackage.i58;
import defpackage.j59;
import defpackage.lb7;
import defpackage.li1;
import defpackage.lp0;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.oi1;
import defpackage.ol4;
import defpackage.rr0;
import defpackage.sr0;
import defpackage.tr0;
import defpackage.uf3;
import defpackage.ur0;
import defpackage.vr0;
import defpackage.vv7;
import defpackage.wr0;
import defpackage.wv7;
import defpackage.x07;
import defpackage.x72;
import defpackage.xr0;
import defpackage.xu7;
import defpackage.yr0;
import defpackage.yu7;
import defpackage.ze4;
import defpackage.zr0;
import defpackage.zv7;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class BonusesSearchFragment extends BaseFragment<FragmentBonusesSearchNewBinding> implements BonusesSearchView {
    public static final /* synthetic */ ze4<Object>[] l;
    public final int f = R.layout.fragment_bonuses_search_new;
    public final ol4 g = new ol4(FragmentBonusesSearchNewBinding.class);
    public final b h = new b();
    public OrdAdInfoDialog i;
    public i58 j;
    public eu1 k;
    public BonusesSearchPresenter presenter;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            BonusesSearchFragment.this.o().onBackClick();
            return j59.a;
        }
    }

    public static final class b implements SearchView.OnQueryTextListener {
        public b() {
        }

        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public final boolean onQueryTextChange(String str) {
            BonusesSearchFragment.this.o().onTextChanged(str);
            return true;
        }

        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public final boolean onQueryTextSubmit(String str) {
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
            String str = new String();
            BonusesSearchFragment bonusesSearchFragment = BonusesSearchFragment.this;
            bonusesSearchFragment.setQueryInSearchView(str);
            bonusesSearchFragment.o().onTextChanged(new String());
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(BonusesSearchFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentBonusesSearchNewBinding;", 0);
        x07.a.getClass();
        l = new ze4[]{bs6Var};
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

    public final FragmentBonusesSearchNewBinding n() {
        return (FragmentBonusesSearchNewBinding) this.g.getValue(this, l[0]);
    }

    public final BonusesSearchPresenter o() {
        BonusesSearchPresenter bonusesSearchPresenter = this.presenter;
        if (bonusesSearchPresenter != null) {
            return bonusesSearchPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = n().rvContent;
        GridLayoutManager gridLayoutManager = new GridLayoutManager(recyclerView.getContext(), 6, 1, false);
        gridLayoutManager.setSpanSizeLookup(new ur0(this));
        recyclerView.setLayoutManager(gridLayoutManager);
        eu1 eu1Var = this.k;
        if (eu1Var == null) {
            eu1Var = new eu1(new li1(new sr0(1, o(), BonusesSearchPresenter.class, "onChipClick", "onChipClick(Ljava/lang/String;)V", 0, 0)), new oi1(new tr0(0, o(), BonusesSearchPresenter.class, "onBackClick", "onBackClick()V", 0)));
            this.k = eu1Var;
        }
        i58 i58Var = new i58(new vv7(eu1Var), new gv7(), new dq6(new vr0(2, o(), BonusesSearchPresenter.class, "onFavoritePromocode", "onFavoritePromocode(IZ)V", 0), new wr0(1, o(), BonusesSearchPresenter.class, "onPromocodeClicked", "onPromocodeClicked(I)V", 0)), new dv7(o()), new dw7(o()), new wv7(o()), new zv7(new xr0(1, o(), BonusesSearchPresenter.class, "onShopClick", "onShopClick(I)V", 0)), new bw7(new yr0(1, o(), BonusesSearchPresenter.class, "onShopClick", "onShopClick(I)V", 0)), new x72(ev7.c, 1));
        this.j = i58Var;
        recyclerView.setAdapter(i58Var);
        recyclerView.setItemAnimator(null);
        recyclerView.addOnScrollListener(new ew5(recyclerView, 9, new zr0(this)));
        TextView textView = n().btnCancel;
        textView.getClass();
        textView.setOnClickListener(new lb7(new a()));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewStateRestored(Bundle bundle) {
        super.onViewStateRestored(bundle);
        n().searchView.setOnQueryTextListener(this.h);
    }

    public final BonusesSearchPresenter providePresenter() {
        return new BonusesSearchPresenter((lp0) m2.c(lp0.class, e.e(this), null, null), (uf3) n2.c(uf3.class, e.e(this), j(), null));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.search.view.BonusesSearchView
    public final void setQueryInSearchView(String str) {
        str.getClass();
        SearchView searchView = n().searchView;
        searchView.setOnQueryTextListener(null);
        searchView.setQuery(str, false);
        searchView.setOnQueryTextListener(this.h);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.search.view.BonusesSearchView
    public final void setSearchView() {
        SearchView searchView = n().searchView;
        View viewFindViewById = searchView.findViewById(androidx.appcompat.R.id.search_close_btn);
        viewFindViewById.getClass();
        viewFindViewById.setOnClickListener(new lb7(new c()));
        searchView.onActionViewExpanded();
        searchView.setOnQueryTextListener(this.h);
        searchView.requestFocus();
        searchView.post(new rr0(this, 0));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.search.view.BonusesSearchView
    public final void showContent(List<? extends cs0> list) {
        list.getClass();
        i58 i58Var = this.j;
        if (i58Var != null) {
            i58Var.submitList(list);
        }
        RecyclerView recyclerView = n().rvContent;
        if (recyclerView.getItemDecorationCount() > 0) {
            recyclerView.removeItemDecorationAt(0);
        }
        i58 i58Var2 = this.j;
        int iD = i58Var2 != null ? i58Var2.i.d(xu7.class) : Integer.MIN_VALUE;
        i58 i58Var3 = this.j;
        recyclerView.addItemDecoration(new ey8(new int[]{iD, i58Var3 != null ? i58Var3.i.d(yu7.class) : Integer.MIN_VALUE}), 0);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.search.view.BonusesSearchView
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

    @Override // com.warefly.checkscan.presentation.bonuses.search.view.BonusesSearchView
    public final void showOrdBottomSheet(b06 b06Var) {
        b06Var.getClass();
        OrdAdInfoDialog ordAdInfoDialog = this.i;
        if (ordAdInfoDialog != null) {
            ordAdInfoDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            OrdAdInfoDialog ordAdInfoDialog2 = new OrdAdInfoDialog(context, b06Var);
            this.i = ordAdInfoDialog2;
            ordAdInfoDialog2.show();
        }
    }
}
