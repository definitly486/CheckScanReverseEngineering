package defpackage;

import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemChipButtonBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class oi1 extends vd9<jk7, ItemChipButtonBinding> {
    public final tr0 b;

    public oi1(tr0 tr0Var) {
        super(ni1.c);
        this.b = tr0Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof jk7;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, jk7 jk7Var) {
        ItemChipButtonBinding itemChipButtonBinding = (ItemChipButtonBinding) viewBinding;
        itemChipButtonBinding.getClass();
        itemChipButtonBinding.tvChip.setText((CharSequence) null);
        TextView root = itemChipButtonBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new t11(this, 1)));
    }
}
