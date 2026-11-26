package defpackage;

import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemRvSbpTransferDescriptionBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class w09 extends vd9<x09, ItemRvSbpTransferDescriptionBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof x09;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, x09 x09Var) {
        ItemRvSbpTransferDescriptionBinding itemRvSbpTransferDescriptionBinding = (ItemRvSbpTransferDescriptionBinding) viewBinding;
        itemRvSbpTransferDescriptionBinding.getClass();
        TextView textView = itemRvSbpTransferDescriptionBinding.tvDescription;
        int i = sx3.a;
        textView.setText(sx3.a(x09Var.a));
        itemRvSbpTransferDescriptionBinding.tvDescription.setMovementMethod(x61.a);
    }
}
