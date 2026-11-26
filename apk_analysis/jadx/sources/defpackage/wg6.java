package defpackage;

import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.products.databinding.ItemProductBigPreviewBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class wg6 extends vd9<ti6, ItemProductBigPreviewBinding> {
    public final b b;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemProductBigPreviewBinding> {
        public static final a c = new a(3, ItemProductBigPreviewBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/products/databinding/ItemProductBigPreviewBinding;", 0);

        @Override // defpackage.dm3
        public final ItemProductBigPreviewBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemProductBigPreviewBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public interface b {
        void onProductClicked(int i);
    }

    public wg6(b bVar) {
        super(a.c);
        this.b = bVar;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ti6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ti6 ti6Var) {
        ItemProductBigPreviewBinding itemProductBigPreviewBinding = (ItemProductBigPreviewBinding) viewBinding;
        ti6 ti6Var2 = ti6Var;
        itemProductBigPreviewBinding.getClass();
        TextView textView = itemProductBigPreviewBinding.tvBadge;
        int i = sx3.a;
        textView.setText(sx3.a(ti6Var2.c));
        itemProductBigPreviewBinding.tvTitle.setText(ti6Var2.d);
        com.bumptech.glide.a.e(itemProductBigPreviewBinding.getRoot()).h(ti6Var2.b).L(itemProductBigPreviewBinding.ivProduct);
        MaterialCardView materialCardView = itemProductBigPreviewBinding.mcBadge;
        String str = ti6Var2.e;
        materialCardView.setCardBackgroundColor(str != null ? Color.parseColor(str) : ContextCompat.getColor(itemProductBigPreviewBinding.getRoot().getContext(), R.color.primary_60));
        ConstraintLayout root = itemProductBigPreviewBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new xg6(this, ti6Var2)));
    }
}
