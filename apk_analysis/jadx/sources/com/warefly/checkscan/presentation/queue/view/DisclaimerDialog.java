package com.warefly.checkscan.presentation.queue.view;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog;
import com.warefly.checkscan.databinding.DialogDisclaimerBinding;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.gl4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class DisclaimerDialog extends FullScreenDialog<DialogDisclaimerBinding> {
    public static final /* synthetic */ ze4<Object>[] d;
    public final gl4 c;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            DisclaimerDialog.this.dismiss();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(DisclaimerDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogDisclaimerBinding;", 0);
        x07.a.getClass();
        d = new ze4[]{bs6Var};
    }

    public DisclaimerDialog() {
        super(R.layout.dialog_disclaimer);
        this.c = new gl4(DialogDisclaimerBinding.class);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        ImageView imageView = ((DialogDisclaimerBinding) this.c.getValue(this, d[0])).btnClose;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new a()));
    }
}
