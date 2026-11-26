package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.scannerml.databinding.ItemRvScannerInfoTitleBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class ae7 extends vd9<be7, ItemRvScannerInfoTitleBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof be7;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, be7 be7Var) {
        ItemRvScannerInfoTitleBinding itemRvScannerInfoTitleBinding = (ItemRvScannerInfoTitleBinding) viewBinding;
        itemRvScannerInfoTitleBinding.getClass();
        itemRvScannerInfoTitleBinding.tvTitle.setText(be7Var.a);
    }
}
