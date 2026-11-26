package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.warefly.checkscan.support.databinding.ItemSupportSectionsHeaderBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class yk7 extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemSupportSectionsHeaderBinding> {
    public static final yk7 c = new yk7(3, ItemSupportSectionsHeaderBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/support/databinding/ItemSupportSectionsHeaderBinding;", 0);

    @Override // defpackage.dm3
    public final ItemSupportSectionsHeaderBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
        LayoutInflater layoutInflater2 = layoutInflater;
        boolean zBooleanValue = bool.booleanValue();
        layoutInflater2.getClass();
        return ItemSupportSectionsHeaderBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
    }
}
