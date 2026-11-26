package defpackage;

import android.view.View;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemChequeProductBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class th6 extends vd9<uh6, ItemChequeProductBinding> {
    public final q61 b;

    public th6(q61 q61Var) {
        super(sh6.c);
        this.b = q61Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof uh6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, uh6 uh6Var) {
        ItemChequeProductBinding itemChequeProductBinding = (ItemChequeProductBinding) viewBinding;
        final uh6 uh6Var2 = uh6Var;
        itemChequeProductBinding.getClass();
        TextView textView = itemChequeProductBinding.tvName;
        vg6 vg6Var = uh6Var2.a;
        textView.setText(vg6Var.d());
        itemChequeProductBinding.tvSumWord.setText(itemChequeProductBinding.getRoot().getContext().getString(R.string.placeholder_ruble_price, Float.valueOf(vg6Var.h() / 100.0f)));
        itemChequeProductBinding.tvPriceUnits.setText(itemChequeProductBinding.getRoot().getContext().getString(R.string.placeholder_cheque_price_units, Float.valueOf(vg6Var.g()), Float.valueOf(vg6Var.e() / 100.0f)));
        itemChequeProductBinding.getRoot().setOnLongClickListener(new View.OnLongClickListener() { // from class: rh6
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                this.b.b.invoke(uh6Var2.a);
                return true;
            }
        });
        itemChequeProductBinding.getRoot().setTag(uh6Var2);
    }
}
