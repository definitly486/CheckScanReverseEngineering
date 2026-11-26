package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.products.databinding.ItemProductsFilterChipBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class ia3 extends vd9<oa3, ItemProductsFilterChipBinding> {
    public final b b;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemProductsFilterChipBinding> {
        public static final a c = new a(3, ItemProductsFilterChipBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/products/databinding/ItemProductsFilterChipBinding;", 0);

        @Override // defpackage.dm3
        public final ItemProductsFilterChipBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemProductsFilterChipBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public interface b {
        void onFilterClicked(int i);
    }

    public ia3(b bVar) {
        super(a.c);
        this.b = bVar;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof oa3;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, oa3 oa3Var) {
        ItemProductsFilterChipBinding itemProductsFilterChipBinding = (ItemProductsFilterChipBinding) viewBinding;
        oa3 oa3Var2 = oa3Var;
        itemProductsFilterChipBinding.getClass();
        itemProductsFilterChipBinding.tvChip.setText(oa3Var2.b);
        boolean z = oa3Var2.c;
        TextView textView = itemProductsFilterChipBinding.tvChip;
        if (z) {
            textView.setSelected(true);
            itemProductsFilterChipBinding.getRoot().setBackground(ContextCompat.getDrawable(itemProductsFilterChipBinding.getRoot().getContext(), R.drawable.background_blue60_120));
        } else {
            textView.setSelected(false);
            itemProductsFilterChipBinding.getRoot().setBackground(ContextCompat.getDrawable(itemProductsFilterChipBinding.getRoot().getContext(), R.drawable.background_primary10_120));
        }
        FrameLayout root = itemProductsFilterChipBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new ja3(this, oa3Var2, 0)));
    }
}
