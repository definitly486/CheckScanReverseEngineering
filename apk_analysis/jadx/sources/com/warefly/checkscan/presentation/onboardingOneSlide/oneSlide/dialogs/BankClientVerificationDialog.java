package com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.dialogs;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.os.BundleCompat;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseDialogFragment;
import com.warefly.checkscan.databinding.DialogAlfaClientVerificationBinding;
import defpackage.bs6;
import defpackage.gl4;
import defpackage.l90;
import defpackage.lb7;
import defpackage.m90;
import defpackage.n90;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class BankClientVerificationDialog extends BaseDialogFragment<DialogAlfaClientVerificationBinding> implements BankVerificationView {
    public static final a d;
    public static final /* synthetic */ ze4<Object>[] e;
    public final gl4 c;
    public BankVerificationPresenter presenter;

    public static final class a {
    }

    static {
        bs6 bs6Var = new bs6(BankClientVerificationDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogAlfaClientVerificationBinding;", 0);
        x07.a.getClass();
        e = new ze4[]{bs6Var};
        d = new a();
    }

    public BankClientVerificationDialog() {
        super(R.layout.dialog_alfa_client_verification);
        this.c = new gl4(DialogAlfaClientVerificationBinding.class);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(1, R.style.DialogFragmentTransparent);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) throws BankClientVerificationNoArgumentException {
        view.getClass();
        super.onViewCreated(view, bundle);
        BankClientVerificationModel bankClientVerificationModel = (BankClientVerificationModel) BundleCompat.getParcelable(requireArguments(), "ALFA_CLIENT_VERIFICATION_KEY", BankClientVerificationModel.class);
        if (bankClientVerificationModel == null) {
            throw new BankClientVerificationNoArgumentException();
        }
        DialogAlfaClientVerificationBinding dialogAlfaClientVerificationBinding = (DialogAlfaClientVerificationBinding) this.c.getValue(this, e[0]);
        dialogAlfaClientVerificationBinding.tvTitle.setText(bankClientVerificationModel.b);
        com.bumptech.glide.a.d(requireContext()).h(bankClientVerificationModel.c).L(dialogAlfaClientVerificationBinding.ivBanner);
        ImageView imageView = dialogAlfaClientVerificationBinding.btnClose;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new l90(this, 0)));
        TextView textView = dialogAlfaClientVerificationBinding.btnPrimary;
        textView.setText(bankClientVerificationModel.d.b);
        textView.setOnClickListener(new lb7(new m90(0, this, bankClientVerificationModel)));
        TextView textView2 = dialogAlfaClientVerificationBinding.btnSecondary;
        textView2.setText(bankClientVerificationModel.e.b);
        textView2.setOnClickListener(new lb7(new n90(0, this, bankClientVerificationModel)));
    }

    public final BankVerificationPresenter providePresenter() {
        return new BankVerificationPresenter();
    }
}
