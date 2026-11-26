package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.databinding.BonusesTitleItemBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class aw8 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, BonusesTitleItemBinding> {
    public static final aw8 c = new aw8(3, BonusesTitleItemBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/BonusesTitleItemBinding;", 0);

    @Override // defpackage.dm3
    public final BonusesTitleItemBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return BonusesTitleItemBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
