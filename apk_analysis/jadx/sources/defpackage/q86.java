package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.core.ui.databinding.ItemRvPlaceholderDelegateBinding;
import com.warefly.checkscan.shimmer.ShimmerFrameLayout;

/* JADX INFO: loaded from: classes.dex */
public final class q86 extends vd9<s86, ItemRvPlaceholderDelegateBinding> {

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvPlaceholderDelegateBinding> {
        public static final a c = new a(3, ItemRvPlaceholderDelegateBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/core/ui/databinding/ItemRvPlaceholderDelegateBinding;", 0);

        @Override // defpackage.dm3
        public final ItemRvPlaceholderDelegateBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemRvPlaceholderDelegateBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public q86() {
        super(a.c);
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof s86;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, s86 s86Var) {
        ItemRvPlaceholderDelegateBinding itemRvPlaceholderDelegateBinding = (ItemRvPlaceholderDelegateBinding) viewBinding;
        itemRvPlaceholderDelegateBinding.getClass();
        ShimmerFrameLayout root = itemRvPlaceholderDelegateBinding.getRoot();
        root.getClass();
        le9.c(0, root);
        ShimmerFrameLayout root2 = itemRvPlaceholderDelegateBinding.getRoot();
        root2.getClass();
        root2.setPadding(0, 0, 0, 0);
        FrameLayout frameLayout = itemRvPlaceholderDelegateBinding.placeholder;
        frameLayout.getClass();
        ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
        if (layoutParams == null) {
            o2.d("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
        } else {
            layoutParams.height = pl2.e(0);
            frameLayout.setLayoutParams(layoutParams);
        }
    }
}
