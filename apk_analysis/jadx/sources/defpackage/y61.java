package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.bonuses.databinding.ItemRvCategoriesBinding;

/* JADX INFO: loaded from: classes.dex */
public final class y61 extends vd9<o71, ItemRvCategoriesBinding> {
    public final eu1 b;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvCategoriesBinding> {
        public static final a c = new a(3, ItemRvCategoriesBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/bonuses/databinding/ItemRvCategoriesBinding;", 0);

        @Override // defpackage.dm3
        public final ItemRvCategoriesBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemRvCategoriesBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public y61(eu1 eu1Var) {
        super(a.c);
        this.b = eu1Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof o71;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, o71 o71Var) {
        ((ItemRvCategoriesBinding) viewBinding).getClass();
        this.b.submitList(o71Var.a);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvCategoriesBinding itemRvCategoriesBinding = (ItemRvCategoriesBinding) viewBinding;
        itemRvCategoriesBinding.getClass();
        itemRvCategoriesBinding.rvCategories.setAdapter(this.b);
    }
}
