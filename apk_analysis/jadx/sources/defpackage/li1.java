package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemChipBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class li1 extends vd9<la8, ItemChipBinding> {
    public final nl3<String, j59> b;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemChipBinding> {
        public static final a c = new a(3, ItemChipBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemChipBinding;", 0);

        @Override // defpackage.dm3
        public final ItemChipBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemChipBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public li1(nl3<? super String, j59> nl3Var) {
        super(a.c);
        this.b = nl3Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof la8;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, la8 la8Var) {
        ItemChipBinding itemChipBinding = (ItemChipBinding) viewBinding;
        la8 la8Var2 = la8Var;
        itemChipBinding.getClass();
        itemChipBinding.tvChip.setText(la8Var2.a);
        FrameLayout root = itemChipBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new mi1(this, la8Var2)));
    }
}
