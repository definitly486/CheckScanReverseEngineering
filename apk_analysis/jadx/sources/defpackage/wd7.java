package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.scannerml.databinding.ItemRvScannerInfoDescriptionBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class wd7 extends vd9<xd7, ItemRvScannerInfoDescriptionBinding> {
    public final v05 b;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvScannerInfoDescriptionBinding> {
        public static final a c = new a(3, ItemRvScannerInfoDescriptionBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/scannerml/databinding/ItemRvScannerInfoDescriptionBinding;", 0);

        @Override // defpackage.dm3
        public final ItemRvScannerInfoDescriptionBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemRvScannerInfoDescriptionBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wd7(v05 v05Var) {
        super(a.c);
        v05Var.getClass();
        this.b = v05Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof xd7;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, xd7 xd7Var) {
        ItemRvScannerInfoDescriptionBinding itemRvScannerInfoDescriptionBinding = (ItemRvScannerInfoDescriptionBinding) viewBinding;
        xd7 xd7Var2 = xd7Var;
        itemRvScannerInfoDescriptionBinding.getClass();
        itemRvScannerInfoDescriptionBinding.ivPlaceholder.setImageDrawable(xd7Var2.c);
        AppCompatTextView appCompatTextView = itemRvScannerInfoDescriptionBinding.tvTitle;
        appCompatTextView.getClass();
        String str = xd7Var2.a;
        appCompatTextView.setVisibility(!ta8.M(str) ? 0 : 8);
        itemRvScannerInfoDescriptionBinding.tvTitle.setText(str);
        this.b.a(itemRvScannerInfoDescriptionBinding.tvDescription, xd7Var2.b);
    }
}
