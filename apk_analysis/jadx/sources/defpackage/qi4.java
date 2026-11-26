package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemRvLandingTermBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class qi4 extends vd9<yj4, ItemRvLandingTermBinding> {
    public final s05 b;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemRvLandingTermBinding> {
        public static final a c = new a(3, ItemRvLandingTermBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemRvLandingTermBinding;", 0);

        @Override // defpackage.dm3
        public final ItemRvLandingTermBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemRvLandingTermBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qi4(s05 s05Var) {
        super(a.c);
        s05Var.getClass();
        this.b = s05Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof yj4;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, yj4 yj4Var) {
        ItemRvLandingTermBinding itemRvLandingTermBinding = (ItemRvLandingTermBinding) viewBinding;
        itemRvLandingTermBinding.getClass();
        String str = yj4Var.a;
        AppCompatTextView appCompatTextView = itemRvLandingTermBinding.tvOption;
        appCompatTextView.getClass();
        this.b.a(str, appCompatTextView, g58.a);
    }
}
