package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.products.databinding.ItemCashbacksProgressBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class gh6 extends vd9<ih6, ItemCashbacksProgressBinding> {

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemCashbacksProgressBinding> {
        public static final a c = new a(3, ItemCashbacksProgressBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/products/databinding/ItemCashbacksProgressBinding;", 0);

        @Override // defpackage.dm3
        public final ItemCashbacksProgressBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemCashbacksProgressBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public gh6() {
        super(a.c);
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ih6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ih6 ih6Var) {
        ItemCashbacksProgressBinding itemCashbacksProgressBinding = (ItemCashbacksProgressBinding) viewBinding;
        ih6 ih6Var2 = ih6Var;
        itemCashbacksProgressBinding.getClass();
        itemCashbacksProgressBinding.tvTitle.setText(ih6Var2.a);
        RecyclerView.Adapter adapter = itemCashbacksProgressBinding.rvCashback.getAdapter();
        eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
        if (eu1Var != null) {
            eu1Var.submitList(ih6Var2.c);
        }
        itemCashbacksProgressBinding.tvSubtitle.setText(ih6Var2.b);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemCashbacksProgressBinding itemCashbacksProgressBinding = (ItemCashbacksProgressBinding) viewBinding;
        itemCashbacksProgressBinding.getClass();
        RecyclerView recyclerView = itemCashbacksProgressBinding.rvCashback;
        recyclerView.setAdapter(new eu1(new zg6(yg6.c)));
        recyclerView.setLayoutManager(new GridLayoutManager(itemCashbacksProgressBinding.getRoot().getContext(), 3));
        recyclerView.addItemDecoration(new hh6());
    }
}
