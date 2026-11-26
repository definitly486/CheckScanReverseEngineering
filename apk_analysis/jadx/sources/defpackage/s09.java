package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.databinding.ItemRvSbpTransferButtonBinding;
import com.warefly.checkscan.presentation.balance.transferCashback.sbp.presenter.TransferSBPPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class s09 extends vd9<t09, ItemRvSbpTransferButtonBinding> {
    public final TransferSBPPresenter b;

    /* JADX INFO: loaded from: classes.dex */
    public interface a {
        void onButtonClicked();
    }

    public s09(TransferSBPPresenter transferSBPPresenter) {
        super(r09.c);
        this.b = transferSBPPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof t09;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, t09 t09Var) {
        ItemRvSbpTransferButtonBinding itemRvSbpTransferButtonBinding = (ItemRvSbpTransferButtonBinding) viewBinding;
        itemRvSbpTransferButtonBinding.getClass();
        itemRvSbpTransferButtonBinding.btnTransfer.setText(itemRvSbpTransferButtonBinding.getRoot().getContext().getString(R.string.sbp_withdraw_button));
        LoadingButton loadingButton = itemRvSbpTransferButtonBinding.btnTransfer;
        loadingButton.getClass();
        loadingButton.setOnClickListener(new lb7(new il8(this)));
        itemRvSbpTransferButtonBinding.btnTransfer.setEnabled(t09Var.a);
    }
}
