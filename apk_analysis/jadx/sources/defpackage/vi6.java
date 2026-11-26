package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemRvProductFromChequeBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class vi6 extends vd9<ui6, ItemRvProductFromChequeBinding> {
    public final nl3<Integer, j59> b;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvProductFromChequeBinding> {
        public static final a c = new a(3, ItemRvProductFromChequeBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemRvProductFromChequeBinding;", 0);

        @Override // defpackage.dm3
        public final ItemRvProductFromChequeBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemRvProductFromChequeBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public vi6(nl3<? super Integer, j59> nl3Var) {
        super(a.c);
        this.b = nl3Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ui6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ui6 ui6Var) {
        ItemRvProductFromChequeBinding itemRvProductFromChequeBinding = (ItemRvProductFromChequeBinding) viewBinding;
        ui6 ui6Var2 = ui6Var;
        itemRvProductFromChequeBinding.getClass();
        ConstraintLayout root = itemRvProductFromChequeBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new so0(1, this, ui6Var2)));
        itemRvProductFromChequeBinding.tvDescription.setText(ui6Var2.b);
        itemRvProductFromChequeBinding.tvPrice.setText(itemRvProductFromChequeBinding.getRoot().getContext().getString(R.string.placeholder_ruble_price, Float.valueOf(ui6Var2.c / 100.0f)));
    }
}
