package com.warefly.checkscan.presentation.bankCardOptions.view;

import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.navigation.NavArgsLazy;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.base.dialogs.TextDialog;
import com.warefly.checkscan.databinding.FragmentBankCardOptionsBinding;
import com.warefly.checkscan.databinding.ItemBankOptionBinding;
import com.warefly.checkscan.presentation.bankCardOptions.presenter.BankCardOptionsPresenter;
import com.warefly.checkscan.presentation.bankCardOptions.presenter.BankCardsOptionsView;
import com.warefly.checkscan.presentation.webview.WebViewActivity;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.c9;
import defpackage.c90;
import defpackage.dm3;
import defpackage.e;
import defpackage.gh4;
import defpackage.j59;
import defpackage.jz7;
import defpackage.kd;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.p51;
import defpackage.sx3;
import defpackage.t90;
import defpackage.uf3;
import defpackage.x07;
import defpackage.ze4;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class BankCardOptionsFragment extends BaseFragment<FragmentBankCardOptionsBinding> implements BankCardsOptionsView {
    public static final /* synthetic */ ze4<Object>[] j;
    public final int f = R.layout.fragment_bank_card_options;
    public final ol4 g = new ol4(FragmentBankCardOptionsBinding.class);
    public final NavArgsLazy h = new NavArgsLazy(x07.a(c90.class), new d());
    public final a i = new a();
    public BankCardOptionsPresenter presenter;

    public static final class a extends gh4 implements dm3<ItemBankOptionBinding, t90.a, Integer, j59> {
        public a() {
            super(3);
        }

        @Override // defpackage.dm3
        public final j59 invoke(ItemBankOptionBinding itemBankOptionBinding, t90.a aVar, Integer num) {
            j59 j59Var;
            j59 j59Var2;
            String strC;
            int color;
            String strA;
            String strB;
            final ItemBankOptionBinding itemBankOptionBinding2 = itemBankOptionBinding;
            final t90.a aVar2 = aVar;
            num.intValue();
            itemBankOptionBinding2.getClass();
            aVar2.getClass();
            TextView textView = itemBankOptionBinding2.tvBankOptionName;
            int i = sx3.a;
            textView.setText(sx3.a(aVar2.c()));
            final t90.a.C0335a c0335aD = aVar2.d();
            RecyclerView recyclerView = null;
            if (c0335aD != null) {
                itemBankOptionBinding2.btnDescription.setVisibility(0);
                itemBankOptionBinding2.btnDescription.setOnClickListener(new View.OnClickListener() { // from class: a90
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        Context context = itemBankOptionBinding2.getRoot().getContext();
                        context.getClass();
                        t90.a.C0335a c0335a = c0335aD;
                        new TextDialog(context, c0335a.b(), c0335a.a()).show();
                    }
                });
                j59Var = j59.a;
            } else {
                j59Var = null;
            }
            if (j59Var == null) {
                itemBankOptionBinding2.btnDescription.setVisibility(8);
            }
            t90.a.b bVarE = aVar2.e();
            if (bVarE == null || (strB = bVarE.b()) == null) {
                j59Var2 = null;
            } else {
                com.bumptech.glide.a.e(itemBankOptionBinding2.getRoot()).h(strB).h(R.drawable.ic_bank_card_preview).L(itemBankOptionBinding2.ivCardPreview);
                itemBankOptionBinding2.ivCardPreview.setVisibility(0);
                itemBankOptionBinding2.groupCustomCardPreview.setVisibility(8);
                j59Var2 = j59.a;
            }
            if (j59Var2 == null) {
                TextView textView2 = itemBankOptionBinding2.tvCardPreviewTitle;
                t90.a.b bVarE2 = aVar2.e();
                if (bVarE2 == null || (strC = bVarE2.c()) == null) {
                    strC = "";
                }
                textView2.setText(sx3.a(strC));
                ImageView imageView = itemBankOptionBinding2.ivCardBackground;
                t90.a.b bVarE3 = aVar2.e();
                if (bVarE3 == null || (strA = bVarE3.a()) == null) {
                    ConstraintLayout root = itemBankOptionBinding2.getRoot();
                    root.getClass();
                    color = ContextCompat.getColor(root.getContext(), R.color.colorPrimary);
                } else {
                    color = Color.parseColor(strA);
                }
                imageView.setColorFilter(color);
                itemBankOptionBinding2.ivCardPreview.setVisibility(4);
                itemBankOptionBinding2.groupCustomCardPreview.setVisibility(0);
            }
            List<t90.a.c> listF = aVar2.f();
            if (listF != null) {
                recyclerView = itemBankOptionBinding2.rvCardDescription;
                recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
                recyclerView.setAdapter(new jz7(R.layout.item_bank_card_terms, listF, null, com.warefly.checkscan.presentation.bankCardOptions.view.a.f, com.warefly.checkscan.presentation.bankCardOptions.view.b.f, 4));
                recyclerView.setVisibility(0);
            }
            if (recyclerView == null) {
                itemBankOptionBinding2.rvCardDescription.setVisibility(4);
            }
            TextView textView3 = itemBankOptionBinding2.btnOrderCard;
            final BankCardOptionsFragment bankCardOptionsFragment = BankCardOptionsFragment.this;
            textView3.setOnClickListener(new View.OnClickListener() { // from class: b90
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BankCardOptionsPresenter bankCardOptionsPresenter = bankCardOptionsFragment.presenter;
                    if (bankCardOptionsPresenter != null) {
                        bankCardOptionsPresenter.onOrderCardOptionPressed(aVar2);
                    } else {
                        aa4.j("presenter");
                        throw null;
                    }
                }
            });
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
            BankCardOptionsFragment.this.k();
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<View, ItemBankOptionBinding> {
        public static final c f = new c(1);

        @Override // defpackage.nl3
        public final ItemBankOptionBinding invoke(View view) {
            View view2 = view;
            view2.getClass();
            return ItemBankOptionBinding.bind(view2);
        }
    }

    public static final class d implements ll3<Bundle> {
        public d() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            BankCardOptionsFragment bankCardOptionsFragment = BankCardOptionsFragment.this;
            Bundle arguments = bankCardOptionsFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(bankCardOptionsFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(BankCardOptionsFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentBankCardOptionsBinding;", 0);
        x07.a.getClass();
        j = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        BankCardOptionsPresenter bankCardOptionsPresenter = this.presenter;
        if (bankCardOptionsPresenter != null) {
            bankCardOptionsPresenter.onBackPressed();
            return false;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        ImageView imageView = ((FragmentBankCardOptionsBinding) this.g.getValue(this, j[0])).toolbar.ivBtnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new b()));
        BankCardOptionsPresenter bankCardOptionsPresenter = this.presenter;
        if (bankCardOptionsPresenter != null) {
            bankCardOptionsPresenter.showBankCardOptionsInfo();
        } else {
            aa4.j("presenter");
            throw null;
        }
    }

    @Override // com.warefly.checkscan.presentation.bankCardOptions.presenter.BankCardsOptionsView
    public final void openOption(t90.a aVar) {
        aVar.getClass();
        Map mapSingletonMap = Collections.singletonMap("Bank cards", "BANK_" + aVar.a() + "_ORDER_CARD");
        mapSingletonMap.getClass();
        new kd.a.b.C0222a("Account", mapSingletonMap).a();
        Context context = getContext();
        if (context != null) {
            int i = WebViewActivity.f;
            startActivity(WebViewActivity.a.a(context, 16, aVar.b(), null));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final BankCardOptionsPresenter providePresenter() {
        return new BankCardOptionsPresenter((uf3) n2.c(uf3.class, e.e(this), j(), null), (p51) m2.c(p51.class, e.e(this), null, null), ((c90) this.h.getValue()).a);
    }

    @Override // com.warefly.checkscan.presentation.bankCardOptions.presenter.BankCardsOptionsView
    public final void showBankCardOptionsInfoLoadingError() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.error_bank_card_options_info_loading, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.bankCardOptions.presenter.BankCardsOptionsView
    public final void showLoading(boolean z) {
        ProgressBar progressBar = ((FragmentBankCardOptionsBinding) this.g.getValue(this, j[0])).pbLoading;
        progressBar.getClass();
        progressBar.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.bankCardOptions.presenter.BankCardsOptionsView
    public final void showOptions(t90 t90Var) {
        t90Var.getClass();
        FragmentBankCardOptionsBinding fragmentBankCardOptionsBinding = (FragmentBankCardOptionsBinding) this.g.getValue(this, j[0]);
        fragmentBankCardOptionsBinding.toolbar.tvTitle.setText(t90Var.e());
        RecyclerView recyclerView = fragmentBankCardOptionsBinding.rvBankOptions;
        recyclerView.setHasFixedSize(true);
        recyclerView.setNestedScrollingEnabled(false);
        recyclerView.setItemAnimator(null);
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
        recyclerView.setAdapter(new jz7(R.layout.item_bank_option, t90Var.f(), null, c.f, this.i, 4));
        recyclerView.setVisibility(0);
    }
}
