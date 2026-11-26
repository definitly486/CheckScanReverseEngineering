package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemRvShopsButtonMoreBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class wv7 extends vd9<av7, ItemRvShopsButtonMoreBinding> {
    public final iv7 b;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvShopsButtonMoreBinding> {
        public static final a c = new a(3, ItemRvShopsButtonMoreBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemRvShopsButtonMoreBinding;", 0);

        @Override // defpackage.dm3
        public final ItemRvShopsButtonMoreBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemRvShopsButtonMoreBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public wv7(iv7 iv7Var) {
        super(a.c);
        this.b = iv7Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof av7;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, av7 av7Var) {
        ItemRvShopsButtonMoreBinding itemRvShopsButtonMoreBinding = (ItemRvShopsButtonMoreBinding) viewBinding;
        itemRvShopsButtonMoreBinding.getClass();
        AppCompatTextView appCompatTextView = itemRvShopsButtonMoreBinding.btnMorePromocodes;
        appCompatTextView.setText(av7Var.a);
        appCompatTextView.setOnClickListener(new lb7(new n4(this, 2)));
    }
}
