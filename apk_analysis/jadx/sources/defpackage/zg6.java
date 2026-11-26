package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.products.databinding.ItemCashbackProgressBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class zg6 extends vd9<fh6, ItemCashbackProgressBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof fh6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, fh6 fh6Var) {
        ItemCashbackProgressBinding itemCashbackProgressBinding = (ItemCashbackProgressBinding) viewBinding;
        fh6 fh6Var2 = fh6Var;
        itemCashbackProgressBinding.getClass();
        itemCashbackProgressBinding.tvTitle.setText(fh6Var2.a);
        itemCashbackProgressBinding.tvSubtitle.setText(fh6Var2.b);
        itemCashbackProgressBinding.pbCounter.setProgress(fh6Var2.c);
    }
}
