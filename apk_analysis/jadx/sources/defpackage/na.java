package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemCatalogPreviewAdultCardBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class na extends vd9<pa, ItemCatalogPreviewAdultCardBinding> {
    public final bv7 b;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemCatalogPreviewAdultCardBinding> {
        public static final a c = new a(3, ItemCatalogPreviewAdultCardBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemCatalogPreviewAdultCardBinding;", 0);

        @Override // defpackage.dm3
        public final ItemCatalogPreviewAdultCardBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemCatalogPreviewAdultCardBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public na(bv7 bv7Var) {
        super(a.c);
        this.b = bv7Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof pa;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, pa paVar) {
        ItemCatalogPreviewAdultCardBinding itemCatalogPreviewAdultCardBinding = (ItemCatalogPreviewAdultCardBinding) viewBinding;
        itemCatalogPreviewAdultCardBinding.getClass();
        TextView textView = itemCatalogPreviewAdultCardBinding.btnShow;
        textView.getClass();
        textView.setOnClickListener(new lb7(new oa(this, 0)));
    }
}
