package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.warefly.checkscan.databinding.ItemRvRecyclerViewBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class vv7 extends vd9<wu7, ItemRvRecyclerViewBinding> {
    public final eu1 b;
    public eu1 c;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvRecyclerViewBinding> {
        public static final a c = new a(3, ItemRvRecyclerViewBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemRvRecyclerViewBinding;", 0);

        @Override // defpackage.dm3
        public final ItemRvRecyclerViewBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemRvRecyclerViewBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public vv7(eu1 eu1Var) {
        super(a.c);
        this.b = eu1Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof wu7;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, wu7 wu7Var) {
        wu7 wu7Var2 = wu7Var;
        ((ItemRvRecyclerViewBinding) viewBinding).getClass();
        eu1 eu1Var = this.c;
        if (eu1Var != null) {
            eu1Var.submitList(wu7Var2.a);
        }
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvRecyclerViewBinding itemRvRecyclerViewBinding = (ItemRvRecyclerViewBinding) viewBinding;
        itemRvRecyclerViewBinding.getClass();
        RecyclerView recyclerView = itemRvRecyclerViewBinding.rvContent;
        FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(recyclerView.getContext());
        flexboxLayoutManager.B(0);
        flexboxLayoutManager.D(0);
        recyclerView.setLayoutManager(flexboxLayoutManager);
        eu1 eu1Var = this.b;
        recyclerView.setAdapter(eu1Var);
        this.c = eu1Var;
    }
}
