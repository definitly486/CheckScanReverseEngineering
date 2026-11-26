package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemWithdrawalRegisterBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class ak9 extends vd9<ck9, ItemWithdrawalRegisterBinding> {
    public final rj9 b;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemWithdrawalRegisterBinding> {
        public static final a c = new a(3, ItemWithdrawalRegisterBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemWithdrawalRegisterBinding;", 0);

        @Override // defpackage.dm3
        public final ItemWithdrawalRegisterBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemWithdrawalRegisterBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public ak9(rj9 rj9Var) {
        super(a.c);
        this.b = rj9Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ck9;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ck9 ck9Var) {
        ItemWithdrawalRegisterBinding itemWithdrawalRegisterBinding = (ItemWithdrawalRegisterBinding) viewBinding;
        ck9 ck9Var2 = ck9Var;
        itemWithdrawalRegisterBinding.getClass();
        itemWithdrawalRegisterBinding.getRoot().setTag(ck9Var2.d);
        itemWithdrawalRegisterBinding.tvTitle.setText(ck9Var2.b);
        com.bumptech.glide.a.e(itemWithdrawalRegisterBinding.ivIcon).h(ck9Var2.c).L(itemWithdrawalRegisterBinding.ivIcon);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemWithdrawalRegisterBinding itemWithdrawalRegisterBinding = (ItemWithdrawalRegisterBinding) viewBinding;
        itemWithdrawalRegisterBinding.getClass();
        LinearLayout root = itemWithdrawalRegisterBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new bk9(this, itemWithdrawalRegisterBinding)));
    }
}
