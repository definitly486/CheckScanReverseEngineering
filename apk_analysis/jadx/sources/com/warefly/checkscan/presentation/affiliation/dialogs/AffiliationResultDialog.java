package com.warefly.checkscan.presentation.affiliation.dialogs;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog;
import com.warefly.checkscan.databinding.DialogAffiliationResultBinding;
import com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckFragment;
import defpackage.bh6;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.gl4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.qs2;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class AffiliationResultDialog extends FullScreenDialog<DialogAffiliationResultBinding> {
    public static final /* synthetic */ ze4<Object>[] f;
    public final bh6 c;
    public final AffiliationCheckFragment.f d;
    public final gl4 e;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            AffiliationResultDialog.this.dismiss();
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
            AffiliationResultDialog.this.dismiss();
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
            AffiliationResultDialog affiliationResultDialog = AffiliationResultDialog.this;
            affiliationResultDialog.dismiss();
            affiliationResultDialog.d.invoke();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(AffiliationResultDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogAffiliationResultBinding;", 0);
        x07.a.getClass();
        f = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AffiliationResultDialog(bh6 bh6Var, AffiliationCheckFragment.f fVar) {
        super(R.layout.dialog_affiliation_result);
        bh6Var.getClass();
        this.c = bh6Var;
        this.d = fVar;
        this.e = new gl4(DialogAffiliationResultBinding.class);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        DialogAffiliationResultBinding dialogAffiliationResultBinding = (DialogAffiliationResultBinding) this.e.getValue(this, f[0]);
        bh6 bh6Var = this.c;
        if (bh6Var instanceof bh6.a) {
            bh6.a aVar = (bh6.a) bh6Var;
            com.bumptech.glide.a.e(dialogAffiliationResultBinding.getRoot()).h(aVar.b).P(qs2.h()).i().L(dialogAffiliationResultBinding.ivLogo);
            TextView textView = dialogAffiliationResultBinding.tvResultNoCashback;
            textView.getClass();
            textView.setVisibility(8);
            Group group = dialogAffiliationResultBinding.groupCashback;
            group.getClass();
            group.setVisibility(0);
            dialogAffiliationResultBinding.tvResult.setText(getString(R.string.affiliation_result_cashback, aVar.a));
        } else if (bh6Var instanceof bh6.c) {
            com.bumptech.glide.a.e(dialogAffiliationResultBinding.getRoot()).h(((bh6.c) bh6Var).a).P(qs2.h()).i().L(dialogAffiliationResultBinding.ivLogo);
            TextView textView2 = dialogAffiliationResultBinding.tvResultNoCashback;
            textView2.getClass();
            textView2.setVisibility(0);
            Group group2 = dialogAffiliationResultBinding.groupCashback;
            group2.getClass();
            group2.setVisibility(8);
        } else {
            TextView textView3 = dialogAffiliationResultBinding.tvResultNoCashback;
            textView3.getClass();
            textView3.setVisibility(0);
            Group group3 = dialogAffiliationResultBinding.groupCashback;
            group3.getClass();
            group3.setVisibility(8);
        }
        ImageView imageView = dialogAffiliationResultBinding.btnClose;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new a()));
        TextView textView4 = dialogAffiliationResultBinding.btnMore;
        textView4.getClass();
        textView4.setOnClickListener(new lb7(new b()));
        TextView textView5 = dialogAffiliationResultBinding.btnBack;
        textView5.getClass();
        textView5.setOnClickListener(new lb7(new c()));
    }
}
