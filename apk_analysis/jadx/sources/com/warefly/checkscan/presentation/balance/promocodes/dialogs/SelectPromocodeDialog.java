package com.warefly.checkscan.presentation.balance.promocodes.dialogs;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import androidx.core.content.ContextCompat;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogSelectPromocodeBinding;
import com.warefly.checkscan.presentation.balance.promocodes.presenter.SelectPromocodePresenter;
import defpackage.b06;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.h37;
import defpackage.is7;
import defpackage.j59;
import defpackage.km7;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.p37;
import defpackage.pl2;
import defpackage.sx3;
import defpackage.ud9;
import defpackage.x07;
import defpackage.x61;
import defpackage.ze4;
import eightbitlab.com.blurview.BlurView;

/* JADX INFO: loaded from: classes5.dex */
public final class SelectPromocodeDialog extends BaseBottomSheetDialog<DialogSelectPromocodeBinding> {
    public static final /* synthetic */ ze4<Object>[] g;
    public final km7 d;
    public final SelectPromocodePresenter e;
    public final ud9 f;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            SelectPromocodeDialog selectPromocodeDialog = SelectPromocodeDialog.this;
            b06 b06Var = selectPromocodeDialog.d.i;
            if (b06Var != null) {
                selectPromocodeDialog.e.onOrdClicked(b06Var);
            }
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
            SelectPromocodeDialog selectPromocodeDialog = SelectPromocodeDialog.this;
            selectPromocodeDialog.dismiss();
            selectPromocodeDialog.e.onExchangeClicked(selectPromocodeDialog.d.h);
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(SelectPromocodeDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;", 0);
        x07.a.getClass();
        g = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectPromocodeDialog(Context context, km7 km7Var, SelectPromocodePresenter selectPromocodePresenter) {
        super(context, R.style.BottomSheetDialogTheme);
        km7Var.getClass();
        this.d = km7Var;
        this.e = selectPromocodePresenter;
        this.f = new ud9(DialogSelectPromocodeBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ze4<Object> ze4Var = g[0];
        ud9 ud9Var = this.f;
        ud9Var.getClass();
        ze4Var.getClass();
        DialogSelectPromocodeBinding dialogSelectPromocodeBinding = (DialogSelectPromocodeBinding) ud9Var.d;
        p37 p37VarD = com.bumptech.glide.a.d(getContext());
        km7 km7Var = this.d;
        String str = km7Var.a;
        String str2 = km7Var.c;
        ((h37) p37VarD.h(str).r(is7.b(pl2.d(16.0f), ContextCompat.getColor(getContext(), R.color.almostThereMoon)))).L(dialogSelectPromocodeBinding.ivLogo);
        BlurView root = dialogSelectPromocodeBinding.incldAdsBadge.getRoot();
        root.getClass();
        b06 b06Var = km7Var.i;
        root.setVisibility((b06Var == null || !b06Var.b) ? 8 : 0);
        root.setOnClickListener(new lb7(new a()));
        Group group = dialogSelectPromocodeBinding.groupHint;
        if (str2 != null) {
            group.getClass();
            group.setVisibility(0);
            dialogSelectPromocodeBinding.incldLayoutHint.tvHint.setMovementMethod(x61.a);
            TextView textView = dialogSelectPromocodeBinding.incldLayoutHint.tvHint;
            int i = sx3.a;
            textView.setText(sx3.a(str2));
        } else {
            group.getClass();
            group.setVisibility(8);
        }
        dialogSelectPromocodeBinding.tvTitle.setText(km7Var.b);
        dialogSelectPromocodeBinding.tvDescription.setText(km7Var.d);
        km7.a aVar = km7Var.e;
        dialogSelectPromocodeBinding.incldTakenFromUser.tvValue.setText(aVar.d);
        dialogSelectPromocodeBinding.incldTakenFromUser.tvTopText.setText(aVar.b);
        dialogSelectPromocodeBinding.incldTakenFromUser.tvBottomText.setText(aVar.c);
        ((h37) com.bumptech.glide.a.d(getContext()).h(aVar.a).r(is7.a(ContextCompat.getColor(getContext(), R.color.almostThereMoon)))).L(dialogSelectPromocodeBinding.incldTakenFromUser.ivIcon);
        km7.a aVar2 = km7Var.f;
        dialogSelectPromocodeBinding.incldGivenToUser.tvValue.setText(aVar2.d);
        dialogSelectPromocodeBinding.incldGivenToUser.tvTopText.setText(aVar2.b);
        dialogSelectPromocodeBinding.incldGivenToUser.tvBottomText.setText(aVar2.c);
        ((h37) com.bumptech.glide.a.d(getContext()).h(aVar2.a).r(is7.a(ContextCompat.getColor(getContext(), R.color.almostThereMoon)))).L(dialogSelectPromocodeBinding.incldGivenToUser.ivIcon);
        TextView textView2 = dialogSelectPromocodeBinding.btnPrimary;
        textView2.setText(km7Var.g);
        textView2.setOnClickListener(new lb7(new b()));
    }
}
