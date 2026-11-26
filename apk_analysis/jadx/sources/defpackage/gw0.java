package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.bonuses.databinding.ItemRvButtonsBinding;

/* JADX INFO: loaded from: classes.dex */
public final class gw0 extends vd9<kw0, ItemRvButtonsBinding> {
    public final eu1 b;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvButtonsBinding> {
        public static final a c = new a(3, ItemRvButtonsBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/bonuses/databinding/ItemRvButtonsBinding;", 0);

        @Override // defpackage.dm3
        public final ItemRvButtonsBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemRvButtonsBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public gw0(eu1 eu1Var) {
        super(a.c);
        this.b = eu1Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof kw0;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, kw0 kw0Var) {
        ((ItemRvButtonsBinding) viewBinding).getClass();
        this.b.submitList(kw0Var.a);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvButtonsBinding itemRvButtonsBinding = (ItemRvButtonsBinding) viewBinding;
        itemRvButtonsBinding.getClass();
        itemRvButtonsBinding.rvButtons.setAdapter(this.b);
    }
}
