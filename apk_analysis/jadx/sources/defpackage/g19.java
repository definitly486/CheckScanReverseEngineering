package defpackage;

import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemRvSbpTransferPrivacyPolicyBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class g19 extends vd9<h19, ItemRvSbpTransferPrivacyPolicyBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof h19;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, h19 h19Var) {
        ItemRvSbpTransferPrivacyPolicyBinding itemRvSbpTransferPrivacyPolicyBinding = (ItemRvSbpTransferPrivacyPolicyBinding) viewBinding;
        itemRvSbpTransferPrivacyPolicyBinding.getClass();
        TextView textView = itemRvSbpTransferPrivacyPolicyBinding.tvPrivacyPolicy;
        int i = sx3.a;
        textView.setText(sx3.a(h19Var.a));
        itemRvSbpTransferPrivacyPolicyBinding.tvPrivacyPolicy.setMovementMethod(x61.a);
    }
}
