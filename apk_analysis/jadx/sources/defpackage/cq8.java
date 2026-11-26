package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemRewardTermNewBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class cq8 extends vd9<ux5, ItemRewardTermNewBinding> {
    public final v05 b;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRewardTermNewBinding> {
        public static final a c = new a(3, ItemRewardTermNewBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemRewardTermNewBinding;", 0);

        @Override // defpackage.dm3
        public final ItemRewardTermNewBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemRewardTermNewBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cq8(v05 v05Var) {
        super(a.c);
        v05Var.getClass();
        this.b = v05Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ux5;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ux5 ux5Var) {
        ItemRewardTermNewBinding itemRewardTermNewBinding = (ItemRewardTermNewBinding) viewBinding;
        ux5 ux5Var2 = ux5Var;
        itemRewardTermNewBinding.getClass();
        this.b.a(itemRewardTermNewBinding.tvTitle, ux5Var2.a);
        itemRewardTermNewBinding.tvBonus.setText(ux5Var2.b);
    }
}
