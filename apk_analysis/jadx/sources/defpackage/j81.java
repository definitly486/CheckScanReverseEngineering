package defpackage;

import android.view.View;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemCategoryInChequeBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class j81 extends vd9<k81, ItemCategoryInChequeBinding> {
    public final ne1 b;

    public j81(ne1 ne1Var) {
        super(i81.c);
        this.b = ne1Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof k81;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, k81 k81Var) {
        ItemCategoryInChequeBinding itemCategoryInChequeBinding = (ItemCategoryInChequeBinding) viewBinding;
        final k81 k81Var2 = k81Var;
        itemCategoryInChequeBinding.getClass();
        TextView textView = itemCategoryInChequeBinding.tvCategoryName;
        c81 c81Var = k81Var2.a;
        textView.setText(c81Var.a().b());
        itemCategoryInChequeBinding.tvCategorySum.setText(itemCategoryInChequeBinding.getRoot().getContext().getString(R.string.placeholder_ruble_price, Float.valueOf(c81Var.b() / 100.0f)));
        itemCategoryInChequeBinding.getRoot().setOnLongClickListener(new View.OnLongClickListener() { // from class: h81
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                this.b.b.invoke(k81Var2.a);
                return true;
            }
        });
        itemCategoryInChequeBinding.getRoot().setTag(k81Var2);
    }
}
