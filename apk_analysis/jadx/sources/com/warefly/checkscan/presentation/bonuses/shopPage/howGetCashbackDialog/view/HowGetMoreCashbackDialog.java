package com.warefly.checkscan.presentation.bonuses.shopPage.howGetCashbackDialog.view;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogHowGetMoreCashbackBinding;
import com.warefly.checkscan.presentation.bonuses.shopPage.howGetCashbackDialog.presenter.HowGetMoreCashbackPresenter;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.c58;
import defpackage.eu1;
import defpackage.gh4;
import defpackage.gx3;
import defpackage.hx3;
import defpackage.i50;
import defpackage.j59;
import defpackage.lb7;
import defpackage.m2;
import defpackage.nl3;
import defpackage.og4;
import defpackage.r31;
import defpackage.s47;
import defpackage.ud9;
import defpackage.x07;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class HowGetMoreCashbackDialog extends BaseBottomSheetDialog<DialogHowGetMoreCashbackBinding> implements HowGetMoreCashbackView {
    public static final /* synthetic */ ze4<Object>[] h;
    public final r31 d;
    public final long e;
    public final ud9 f;
    public eu1 g;
    public HowGetMoreCashbackPresenter presenter;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            HowGetMoreCashbackPresenter howGetMoreCashbackPresenter = HowGetMoreCashbackDialog.this.presenter;
            if (howGetMoreCashbackPresenter != null) {
                howGetMoreCashbackPresenter.onCloseClick();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            HowGetMoreCashbackPresenter howGetMoreCashbackPresenter = HowGetMoreCashbackDialog.this.presenter;
            if (howGetMoreCashbackPresenter != null) {
                howGetMoreCashbackPresenter.onButtonActionClick();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    static {
        bs6 bs6Var = new bs6(HowGetMoreCashbackDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogHowGetMoreCashbackBinding;", 0);
        x07.a.getClass();
        h = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HowGetMoreCashbackDialog(Context context, r31 r31Var, long j) {
        super(context, R.style.BottomSheetDialogTheme);
        r31Var.getClass();
        this.d = r31Var;
        this.e = j;
        this.f = new ud9(DialogHowGetMoreCashbackBinding.class, this);
    }

    public final DialogHowGetMoreCashbackBinding e() {
        ze4<Object> ze4Var = h[0];
        ud9 ud9Var = this.f;
        ud9Var.getClass();
        ze4Var.getClass();
        return (DialogHowGetMoreCashbackBinding) ud9Var.d;
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        DialogHowGetMoreCashbackBinding dialogHowGetMoreCashbackBindingE = e();
        AppCompatTextView appCompatTextView = dialogHowGetMoreCashbackBindingE.tvDialogHeader;
        r31 r31Var = this.d;
        appCompatTextView.setText(r31Var.a);
        dialogHowGetMoreCashbackBindingE.btnAction.setText(r31Var.b);
        ImageView imageView = dialogHowGetMoreCashbackBindingE.btnClose;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new a()));
        AppCompatTextView appCompatTextView2 = dialogHowGetMoreCashbackBindingE.btnAction;
        appCompatTextView2.getClass();
        appCompatTextView2.setOnClickListener(new lb7(new b()));
        RecyclerView recyclerView = e().rvContent;
        eu1 eu1Var = new eu1(new i50(gx3.c, 1));
        this.g = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.addItemDecoration(new c58(32));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final HowGetMoreCashbackPresenter providePresenter() {
        return new HowGetMoreCashbackPresenter((s47) (this instanceof og4 ? m2.c(s47.class, ((og4) this).getScope(), null, null) : b().c.d.e(x07.a(s47.class), null, null)), this.d.c, this.e);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.howGetCashbackDialog.view.HowGetMoreCashbackView
    public final void setTitles(String str) {
        str.getClass();
        e().btnAction.setText(str);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.howGetCashbackDialog.view.HowGetMoreCashbackView
    public final void showContent(List<hx3> list) {
        list.getClass();
        eu1 eu1Var = this.g;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }
}
