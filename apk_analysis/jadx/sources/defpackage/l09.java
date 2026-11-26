package defpackage;

import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemRvSbpTransferBankBinding;
import com.warefly.checkscan.presentation.balance.transferCashback.sbp.presenter.TransferSBPPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class l09 extends vd9<m09, ItemRvSbpTransferBankBinding> {
    public final TransferSBPPresenter b;

    public interface a {
        void onBankSelected(String str);
    }

    public l09(TransferSBPPresenter transferSBPPresenter) {
        super(k09.c);
        this.b = transferSBPPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof m09;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, m09 m09Var) {
        ItemRvSbpTransferBankBinding itemRvSbpTransferBankBinding = (ItemRvSbpTransferBankBinding) viewBinding;
        m09 m09Var2 = m09Var;
        itemRvSbpTransferBankBinding.getClass();
        itemRvSbpTransferBankBinding.tvTitle.setText(m09Var2.b);
        boolean z = m09Var2.d;
        ImageView imageView = itemRvSbpTransferBankBinding.ivSelected;
        if (z) {
            imageView.getClass();
            imageView.setVisibility(0);
            itemRvSbpTransferBankBinding.getRoot().setBackground(ContextCompat.getDrawable(itemRvSbpTransferBankBinding.getRoot().getContext(), R.drawable.background_blue_alice_16_stroke));
        } else {
            imageView.getClass();
            imageView.setVisibility(8);
            itemRvSbpTransferBankBinding.getRoot().setBackground(ContextCompat.getDrawable(itemRvSbpTransferBankBinding.getRoot().getContext(), R.drawable.background_gray10_16));
        }
        com.bumptech.glide.a.e(itemRvSbpTransferBankBinding.getRoot()).h(m09Var2.c).L(itemRvSbpTransferBankBinding.ivLogo);
        ConstraintLayout root = itemRvSbpTransferBankBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new n90(2, this, m09Var2)));
    }
}
