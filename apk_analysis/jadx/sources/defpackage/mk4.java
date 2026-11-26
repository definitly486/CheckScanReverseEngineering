package defpackage;

import androidx.viewbinding.ViewBinding;
import com.google.android.material.textfield.TextInputEditText;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemRvLandingTitleBinding;
import com.warefly.checkscan.databinding.ItemRvSbpTransferPhoneBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class mk4 extends vd9 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ mk4(dm3 dm3Var, int i) {
        super(dm3Var);
        this.b = i;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        int i = this.b;
        obj.getClass();
        switch (i) {
            case 0:
                return obj instanceof nk4;
            default:
                return obj instanceof e19;
        }
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, Object obj) {
        switch (this.b) {
            case 0:
                ItemRvLandingTitleBinding itemRvLandingTitleBinding = (ItemRvLandingTitleBinding) viewBinding;
                itemRvLandingTitleBinding.getClass();
                itemRvLandingTitleBinding.tvTitle.setText(((nk4) obj).a);
                break;
            default:
                ItemRvSbpTransferPhoneBinding itemRvSbpTransferPhoneBinding = (ItemRvSbpTransferPhoneBinding) viewBinding;
                itemRvSbpTransferPhoneBinding.getClass();
                itemRvSbpTransferPhoneBinding.tvTitle.setText(itemRvSbpTransferPhoneBinding.getRoot().getContext().getString(R.string.sbp_phone_number_hint));
                TextInputEditText textInputEditText = itemRvSbpTransferPhoneBinding.etField;
                g17 g17Var = o76.a;
                String str = ((e19) obj).a;
                str.getClass();
                textInputEditText.setText(o76.a.g("$1 ($2) $3 $4 $5", str));
                break;
        }
    }
}
