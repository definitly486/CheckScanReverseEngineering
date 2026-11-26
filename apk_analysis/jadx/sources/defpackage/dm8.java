package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.tasks.databinding.ItemRvTaskCardLoadingBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class dm8 extends vd9<em8, ItemRvTaskCardLoadingBinding> {

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvTaskCardLoadingBinding> {
        public static final a c = new a(3, ItemRvTaskCardLoadingBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardLoadingBinding;", 0);

        @Override // defpackage.dm3
        public final ItemRvTaskCardLoadingBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemRvTaskCardLoadingBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public dm8() {
        super(a.c);
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof em8;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, em8 em8Var) {
        ((ItemRvTaskCardLoadingBinding) viewBinding).getClass();
    }
}
