package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.products.databinding.ItemFiltersHolderBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class qa3 extends vd9<ka3, ItemFiltersHolderBinding> {
    public final ia3.b b;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemFiltersHolderBinding> {
        public static final a c = new a(3, ItemFiltersHolderBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/products/databinding/ItemFiltersHolderBinding;", 0);

        @Override // defpackage.dm3
        public final ItemFiltersHolderBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemFiltersHolderBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public qa3(ia3.b bVar) {
        super(a.c);
        this.b = bVar;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ka3;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ka3 ka3Var) {
        ItemFiltersHolderBinding itemFiltersHolderBinding = (ItemFiltersHolderBinding) viewBinding;
        ka3 ka3Var2 = ka3Var;
        itemFiltersHolderBinding.getClass();
        RecyclerView.Adapter adapter = itemFiltersHolderBinding.rvFilters.getAdapter();
        eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
        if (eu1Var != null) {
            eu1Var.submitList(ka3Var2.a);
        }
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemFiltersHolderBinding itemFiltersHolderBinding = (ItemFiltersHolderBinding) viewBinding;
        itemFiltersHolderBinding.getClass();
        itemFiltersHolderBinding.rvFilters.setAdapter(new eu1(new ia3(this.b)));
    }
}
