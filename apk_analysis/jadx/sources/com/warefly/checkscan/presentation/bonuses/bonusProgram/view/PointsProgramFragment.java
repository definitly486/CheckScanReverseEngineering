package com.warefly.checkscan.presentation.bonuses.bonusProgram.view;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.FragmentTransaction;
import androidx.navigation.NavArgsLazy;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.base.dialogs.LoadingDialog;
import com.warefly.checkscan.databinding.FragmentPointsProgramBinding;
import com.warefly.checkscan.databinding.ItemRewardTermBinding;
import com.warefly.checkscan.databinding.LayoutDescriptionBinding;
import com.warefly.checkscan.databinding.LayoutPlaceHeadingBinding;
import com.warefly.checkscan.databinding.LayoutRewardListingBinding;
import com.warefly.checkscan.presentation.bonuses.bonusProgram.presenter.PointsProgramPresenter;
import com.warefly.checkscan.presentation.bonuses.bonusProgram.transfer.TransferPointsDialog;
import com.warefly.checkscan.presentation.operations.base.CatalogCardOperationsFragment;
import com.warefly.checkscan.util.UnscrollableLinearLayoutManager;
import defpackage.a87;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.c4;
import defpackage.c9;
import defpackage.dm3;
import defpackage.gh4;
import defpackage.io0;
import defpackage.j59;
import defpackage.jf6;
import defpackage.jo0;
import defpackage.jz7;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.os7;
import defpackage.oz1;
import defpackage.qs2;
import defpackage.sx3;
import defpackage.u61;
import defpackage.uf3;
import defpackage.x07;
import defpackage.x61;
import defpackage.x96;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class PointsProgramFragment extends BaseFragment<FragmentPointsProgramBinding> implements PointsProgramView {
    public static final /* synthetic */ ze4<Object>[] n;
    public List<jo0> h;
    public List<jo0> i;
    public a87 j;
    public os7 k;
    public LoadingDialog m;
    public PointsProgramPresenter presenter;
    public final int f = R.layout.fragment_points_program;
    public final ol4 g = new ol4(FragmentPointsProgramBinding.class);
    public final NavArgsLazy l = new NavArgsLazy(x07.a(x96.class), new m());

    public static final class a extends gh4 implements ll3<j59> {
        public a() {
            super(0);
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            PointsProgramFragment.this.o().onBalanceMaybeChanged();
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ TextView f;
        public final /* synthetic */ long g;
        public final /* synthetic */ PointsProgramFragment h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(TextView textView, long j, PointsProgramFragment pointsProgramFragment) {
            super(1);
            this.f = textView;
            this.g = j;
            this.h = pointsProgramFragment;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            Context context = this.f.getContext();
            if (context != null) {
                new TransferPointsDialog(context, this.g, this.h.new a()).show();
            }
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
            PointsProgramFragment.this.o().onBackPressed();
            return j59.a;
        }
    }

    public static final class d extends gh4 implements ll3<j59> {
        public d() {
            super(0);
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            PointsProgramFragment.this.o().onShareCardClicked();
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<Boolean, j59> {
        public e() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Boolean bool) {
            PointsProgramFragment.this.o().showLoadingDialog(bool.booleanValue());
            return j59.a;
        }
    }

    public static final class f extends gh4 implements ll3<j59> {
        public f() {
            super(0);
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            View view = PointsProgramFragment.this.getView();
            if (view != null) {
                oz1.g(R.string.bonuses_dynamic_link_error, view);
            }
            return j59.a;
        }
    }

    public static final class g extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ FragmentPointsProgramBinding g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(FragmentPointsProgramBinding fragmentPointsProgramBinding) {
            super(1);
            this.g = fragmentPointsProgramBinding;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            PointsProgramFragment.this.o().onRefresh();
            this.g.viewLoadingFailed.getRoot().setVisibility(8);
            return j59.a;
        }
    }

    public static final class h extends gh4 implements ll3<j59> {
        public final /* synthetic */ LayoutRewardListingBinding f;
        public final /* synthetic */ PointsProgramFragment g;
        public final /* synthetic */ jz7<jo0, ItemRewardTermBinding> h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(LayoutRewardListingBinding layoutRewardListingBinding, PointsProgramFragment pointsProgramFragment, jz7<jo0, ItemRewardTermBinding> jz7Var) {
            super(0);
            this.f = layoutRewardListingBinding;
            this.g = pointsProgramFragment;
            this.h = jz7Var;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            this.f.overlapShadow.setVisibility(8);
            PointsProgramFragment pointsProgramFragment = this.g;
            List<jo0> list = pointsProgramFragment.i;
            if (list == null) {
                aa4.j("allTerms");
                throw null;
            }
            pointsProgramFragment.h = list;
            this.h.b(list);
            return j59.a;
        }
    }

    public static final class i extends gh4 implements ll3<j59> {
        public final /* synthetic */ LayoutRewardListingBinding f;
        public final /* synthetic */ PointsProgramFragment g;
        public final /* synthetic */ jz7<jo0, ItemRewardTermBinding> h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(LayoutRewardListingBinding layoutRewardListingBinding, PointsProgramFragment pointsProgramFragment, jz7<jo0, ItemRewardTermBinding> jz7Var) {
            super(0);
            this.f = layoutRewardListingBinding;
            this.g = pointsProgramFragment;
            this.h = jz7Var;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            this.f.overlapShadow.setVisibility(0);
            PointsProgramFragment pointsProgramFragment = this.g;
            List<jo0> list = pointsProgramFragment.i;
            if (list == null) {
                aa4.j("allTerms");
                throw null;
            }
            List<jo0> listSubList = list.subList(0, 5);
            pointsProgramFragment.h = listSubList;
            if (listSubList != null) {
                this.h.b(listSubList);
                return j59.a;
            }
            aa4.j("shownTerms");
            throw null;
        }
    }

    public static final class j extends gh4 implements nl3<View, ItemRewardTermBinding> {
        public static final j f = new j(1);

        @Override // defpackage.nl3
        public final ItemRewardTermBinding invoke(View view) {
            View view2 = view;
            view2.getClass();
            return ItemRewardTermBinding.bind(view2);
        }
    }

    public static final class k extends gh4 implements dm3<ItemRewardTermBinding, jo0, Integer, j59> {
        public static final k f = new k(3);

        @Override // defpackage.dm3
        public final j59 invoke(ItemRewardTermBinding itemRewardTermBinding, jo0 jo0Var, Integer num) {
            ItemRewardTermBinding itemRewardTermBinding2 = itemRewardTermBinding;
            jo0 jo0Var2 = jo0Var;
            num.intValue();
            itemRewardTermBinding2.getClass();
            jo0Var2.getClass();
            TextView textView = itemRewardTermBinding2.tvTitle;
            int i = sx3.a;
            textView.setText(sx3.a(jo0Var2.b()));
            itemRewardTermBinding2.tvBonus.setText(sx3.a(jo0Var2.a()));
            return j59.a;
        }
    }

    public static final class l extends gh4 implements nl3<View, j59> {
        public l() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            a87 a87Var = PointsProgramFragment.this.j;
            if (a87Var != null) {
                a87Var.a();
                return j59.a;
            }
            aa4.j("moreTermsToggle");
            throw null;
        }
    }

    public static final class m implements ll3<Bundle> {
        public m() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            PointsProgramFragment pointsProgramFragment = PointsProgramFragment.this;
            Bundle arguments = pointsProgramFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(pointsProgramFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(PointsProgramFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;", 0);
        x07.a.getClass();
        n = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView
    public final void enableTransfer(boolean z, long j2) {
        if (!z) {
            n().btnWithdraw.setVisibility(8);
            return;
        }
        TextView textView = n().btnWithdraw;
        textView.setVisibility(0);
        textView.setOnClickListener(new lb7(new b(textView, j2, this)));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView
    public final void hideTransfer() {
        n().btnWithdraw.setVisibility(8);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    public final FragmentPointsProgramBinding n() {
        return (FragmentPointsProgramBinding) this.g.getValue(this, n[0]);
    }

    public final PointsProgramPresenter o() {
        PointsProgramPresenter pointsProgramPresenter = this.presenter;
        if (pointsProgramPresenter != null) {
            return pointsProgramPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        ImageView imageView = n().viewToolbar.btnShare;
        imageView.getClass();
        this.k = new os7(imageView, new e(), new d());
        ImageView imageView2 = n().viewToolbar.btnBack;
        imageView2.getClass();
        imageView2.setOnClickListener(new lb7(new c()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final PointsProgramPresenter providePresenter() {
        return new PointsProgramPresenter(((x96) this.l.getValue()).a, (uf3) n2.c(uf3.class, defpackage.e.e(this), j(), null), (io0) m2.c(io0.class, defpackage.e.e(this), null, null), (c4) m2.c(c4.class, defpackage.e.e(this), null, null), (jf6) m2.c(jf6.class, defpackage.e.e(this), null, null));
    }

    @Override // defpackage.js7
    public final void shareCard(String str, String str2, String str3, String str4) {
        m2.e(str, str2, str3, str4);
        os7 os7Var = this.k;
        if (os7Var == null) {
            aa4.j("shareCardBehavior");
            throw null;
        }
        String string = getString(R.string.bonuses_dynamic_link_description, str3);
        string.getClass();
        f(os7Var.a(str, str2, string, str4, new f()), "ShareCard");
    }

    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView
    public final void showAgreement(String str) {
        str.getClass();
        LayoutDescriptionBinding layoutDescriptionBinding = n().viewDescription;
        layoutDescriptionBinding.tvHeader.setText(getString(R.string.bonuses_agreement_header));
        TextView textView = layoutDescriptionBinding.tvDescription;
        textView.setText(sx3.a(str));
        textView.setMovementMethod(x61.a);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView
    public final void showCouldntGetAgreement() {
        View view = getView();
        if (view != null) {
            oz1.g(R.string.bonus_program_couldnt_load_terms, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView
    public final void showCouldntGetTerms() {
        View view = getView();
        if (view != null) {
            oz1.g(R.string.bonus_program_couldnt_load_terms, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView
    public final void showCouldntLoadProgram() {
        FragmentPointsProgramBinding fragmentPointsProgramBindingN = n();
        fragmentPointsProgramBindingN.viewToolbar.btnShare.setVisibility(8);
        fragmentPointsProgramBindingN.viewLoadingFailed.getRoot().setVisibility(0);
        fragmentPointsProgramBindingN.viewLoadingFailed.tvMessage.setText(getString(R.string.admitad_couldnt_load_info));
        TextView textView = fragmentPointsProgramBindingN.viewLoadingFailed.btnTryAgain;
        textView.getClass();
        textView.setOnClickListener(new lb7(new g(fragmentPointsProgramBindingN)));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView
    public final void showCouldntUpdateBalance() {
        FragmentPointsProgramBinding fragmentPointsProgramBindingN = n();
        fragmentPointsProgramBindingN.viewHeading.tvValue.setVisibility(0);
        fragmentPointsProgramBindingN.pbUpdateBalance.setVisibility(8);
        View view = getView();
        if (view != null) {
            oz1.h(view, "Не удалось обновить баланс");
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView
    public final void showLoadingDialog(boolean z) {
        LoadingDialog loadingDialog = this.m;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        if (z) {
            LoadingDialog loadingDialogB = LoadingDialog.a.b(LoadingDialog.d);
            m(loadingDialogB);
            this.m = loadingDialogB;
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView
    public final void showLoadingProgram(boolean z) {
        n().viewLoading.getRoot().setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView
    public final void showProgram(long j2, String str, String str2, String str3, String str4) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        FragmentTransaction fragmentTransactionBeginTransaction = getChildFragmentManager().beginTransaction();
        CatalogCardOperationsFragment catalogCardOperationsFragment = new CatalogCardOperationsFragment();
        catalogCardOperationsFragment.setArguments(new u61(j2).getArguments());
        j59 j59Var = j59.a;
        fragmentTransactionBeginTransaction.replace(R.id.fragment_container_view_operations, catalogCardOperationsFragment).commit();
        FragmentPointsProgramBinding fragmentPointsProgramBindingN = n();
        LayoutPlaceHeadingBinding layoutPlaceHeadingBinding = fragmentPointsProgramBindingN.viewHeading;
        if (str4 != null) {
            com.bumptech.glide.a.e(layoutPlaceHeadingBinding.ivLogo).h(str4).P(qs2.h()).L(layoutPlaceHeadingBinding.ivLogo);
        }
        layoutPlaceHeadingBinding.tvTitle.setText(str2);
        layoutPlaceHeadingBinding.tvValue.setText(str3);
        fragmentPointsProgramBindingN.viewToolbar.tvToolbarTitle.setText(str);
        fragmentPointsProgramBindingN.viewToolbar.btnShare.setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView
    public final void showTerms(List<jo0> list) {
        list.getClass();
        Log.e("showTerms", "showTerms " + list);
        FragmentPointsProgramBinding fragmentPointsProgramBindingN = n();
        if (list.isEmpty()) {
            fragmentPointsProgramBindingN.viewRewards.getRoot().setVisibility(8);
            fragmentPointsProgramBindingN.termsHeading.getRoot().setVisibility(8);
            j59 j59Var = j59.a;
            return;
        }
        fragmentPointsProgramBindingN.termsHeading.getRoot().setVisibility(0);
        jz7 jz7Var = new jz7(R.layout.item_reward_term, list, null, j.f, k.f, 4);
        LayoutRewardListingBinding layoutRewardListingBinding = fragmentPointsProgramBindingN.viewRewards;
        RecyclerView recyclerView = layoutRewardListingBinding.rvTerms;
        Context context = recyclerView.getContext();
        context.getClass();
        recyclerView.setLayoutManager(new UnscrollableLinearLayoutManager(context, 1, false));
        recyclerView.setAdapter(jz7Var);
        recyclerView.setNestedScrollingEnabled(false);
        layoutRewardListingBinding.getRoot().setVisibility(0);
        this.i = list;
        if (list.size() <= 5) {
            List<jo0> list2 = this.i;
            if (list2 == null) {
                aa4.j("allTerms");
                throw null;
            }
            this.h = list2;
            layoutRewardListingBinding.btnMoreTerms.setVisibility(8);
            layoutRewardListingBinding.overlapShadow.setVisibility(8);
        } else {
            layoutRewardListingBinding.overlapShadow.setVisibility(0);
            this.h = list.subList(0, 5);
            ImageView imageView = layoutRewardListingBinding.btnMoreTerms;
            imageView.getClass();
            this.j = new a87(false, imageView, new h(layoutRewardListingBinding, this, jz7Var), new i(layoutRewardListingBinding, this, jz7Var));
            ImageView imageView2 = layoutRewardListingBinding.btnMoreTerms;
            imageView2.setVisibility(0);
            imageView2.setOnClickListener(new lb7(new l()));
        }
        List<jo0> list3 = this.h;
        if (list3 != null) {
            jz7Var.b(list3);
        } else {
            aa4.j("shownTerms");
            throw null;
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView
    public final void showUpdatingBalance() {
        FragmentPointsProgramBinding fragmentPointsProgramBindingN = n();
        fragmentPointsProgramBindingN.pbUpdateBalance.setVisibility(0);
        fragmentPointsProgramBindingN.viewHeading.tvValue.setVisibility(4);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramView
    public final void updateBalance(int i2) {
        FragmentPointsProgramBinding fragmentPointsProgramBindingN = n();
        TextView textView = fragmentPointsProgramBindingN.viewHeading.tvValue;
        textView.setVisibility(0);
        textView.setText(String.valueOf(i2));
        fragmentPointsProgramBindingN.pbUpdateBalance.setVisibility(8);
    }
}
