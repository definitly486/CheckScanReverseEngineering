package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemWithdrawalTitleBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class dk9 extends vd9<ek9, ItemWithdrawalTitleBinding> {

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemWithdrawalTitleBinding> {
        public static final a c = new a(3, ItemWithdrawalTitleBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemWithdrawalTitleBinding;", 0);

        @Override // defpackage.dm3
        public final ItemWithdrawalTitleBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemWithdrawalTitleBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public dk9() {
        super(a.c);
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ek9;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ek9 ek9Var) {
        ItemWithdrawalTitleBinding itemWithdrawalTitleBinding = (ItemWithdrawalTitleBinding) viewBinding;
        itemWithdrawalTitleBinding.getClass();
        itemWithdrawalTitleBinding.tvTitle.setText(ek9Var.a);
    }
}
