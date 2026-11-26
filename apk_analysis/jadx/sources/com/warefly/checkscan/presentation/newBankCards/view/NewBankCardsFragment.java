package com.warefly.checkscan.presentation.newBankCards.view;

import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.databinding.LayoutToolbarBackIconBinding;
import com.warefly.checkscan.databinding.FragmentNewBankCardsBinding;
import com.warefly.checkscan.presentation.newBankCards.presenter.NewBankCardPresenter;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.c58;
import defpackage.cl4;
import defpackage.e;
import defpackage.eu1;
import defpackage.gh4;
import defpackage.j59;
import defpackage.k90;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.nm4;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.p51;
import defpackage.po4;
import defpackage.q90;
import defpackage.uf3;
import defpackage.v05;
import defpackage.x07;
import defpackage.ym5;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class NewBankCardsFragment extends BaseFragment<FragmentNewBankCardsBinding> implements NewBankCardsView {
    public static final /* synthetic */ ze4<Object>[] j;
    public final cl4 f = nm4.a(po4.SYNCHRONIZED, new b());
    public final int g = R.layout.fragment_new_bank_cards;
    public final ol4 h = new ol4(FragmentNewBankCardsBinding.class);
    public eu1 i;
    public NewBankCardPresenter presenter;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            NewBankCardPresenter newBankCardPresenter = NewBankCardsFragment.this.presenter;
            if (newBankCardPresenter != null) {
                newBankCardPresenter.onBackClick();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    public static final class b implements ll3<v05> {
        public b() {
        }

        /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, v05] */
        @Override // defpackage.ll3
        public final v05 invoke() {
            return m2.c(v05.class, e.e(NewBankCardsFragment.this), null, null);
        }
    }

    static {
        bs6 bs6Var = new bs6(NewBankCardsFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;", 0);
        x07.a.getClass();
        j = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.presentation.newBankCards.view.NewBankCardsView
    public final void handleProgress(boolean z) {
        FrameLayout root = n().viewLoading.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.g;
    }

    public final FragmentNewBankCardsBinding n() {
        return (FragmentNewBankCardsBinding) this.h.getValue(this, j[0]);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = n().rvCards;
        if (recyclerView.getItemDecorationCount() < 1) {
            recyclerView.addItemDecoration(new c58(8));
        }
        NewBankCardPresenter newBankCardPresenter = this.presenter;
        if (newBankCardPresenter == null) {
            aa4.j("presenter");
            throw null;
        }
        eu1 eu1Var = new eu1(new q90(new ym5(1, newBankCardPresenter, NewBankCardPresenter.class, "onCardClick", "onCardClick(J)V", 0)));
        this.i = eu1Var;
        recyclerView.setAdapter(eu1Var);
        LayoutToolbarBackIconBinding layoutToolbarBackIconBinding = n().toolbar;
        layoutToolbarBackIconBinding.tvHeader.setText(getString(R.string.withdraw_bank_partners_toolbar_title));
        ImageView imageView = layoutToolbarBackIconBinding.btnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new a()));
    }

    public final NewBankCardPresenter providePresenter() {
        return new NewBankCardPresenter((uf3) n2.c(uf3.class, e.e(this), j(), null), (p51) m2.c(p51.class, e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.newBankCards.view.NewBankCardsView
    public final void setDescription(String str) {
        str.getClass();
        ((v05) this.f.getValue()).a(n().tvDescription, str);
    }

    @Override // com.warefly.checkscan.presentation.newBankCards.view.NewBankCardsView
    public final void setTitle(String str) {
        str.getClass();
        n().tvTitle.setText(str);
    }

    @Override // com.warefly.checkscan.presentation.newBankCards.view.NewBankCardsView
    public final void showBankCardsInfoLoadingError() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.error_bank_cards_info_loading, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.newBankCards.view.NewBankCardsView
    public final void showData(List<k90> list) {
        list.getClass();
        RecyclerView recyclerView = n().rvCards;
        recyclerView.getClass();
        recyclerView.setVisibility(0);
        eu1 eu1Var = this.i;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }

    @Override // com.warefly.checkscan.presentation.newBankCards.view.NewBankCardsView
    public final void showNoCards() {
        FragmentNewBankCardsBinding fragmentNewBankCardsBindingN = n();
        TextView textView = fragmentNewBankCardsBindingN.tvNoData;
        textView.getClass();
        textView.setVisibility(0);
        ImageView imageView = fragmentNewBankCardsBindingN.ivNoData;
        imageView.getClass();
        imageView.setVisibility(0);
    }
}
