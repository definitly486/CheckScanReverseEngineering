package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.databinding.VerticalCategoryItemBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class yc9 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, VerticalCategoryItemBinding> {
    public static final yc9 c = new yc9(3, VerticalCategoryItemBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/VerticalCategoryItemBinding;", 0);

    @Override // defpackage.dm3
    public final VerticalCategoryItemBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return VerticalCategoryItemBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
