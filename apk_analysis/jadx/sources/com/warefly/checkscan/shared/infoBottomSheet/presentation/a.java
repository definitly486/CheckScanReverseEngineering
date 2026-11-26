package com.warefly.checkscan.shared.infoBottomSheet.presentation;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.shared.infoBottomSheet.databinding.ItemInfoBadgeBinding;
import defpackage.c54;
import defpackage.dm3;
import defpackage.lb7;
import defpackage.qm3;
import defpackage.vd9;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends vd9<com.warefly.checkscan.shared.infoBottomSheet.presentation.b, ItemInfoBadgeBinding> {
    public final b b;

    /* JADX INFO: renamed from: com.warefly.checkscan.shared.infoBottomSheet.presentation.a$a, reason: collision with other inner class name */
    public static final /* synthetic */ class C0173a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemInfoBadgeBinding> {
        public static final C0173a c = new C0173a(3, ItemInfoBadgeBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/shared/infoBottomSheet/databinding/ItemInfoBadgeBinding;", 0);

        @Override // defpackage.dm3
        public final ItemInfoBadgeBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return ItemInfoBadgeBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    public interface b {
        void onConditionsClicked(List<com.warefly.checkscan.shared.infoBottomSheet.presentation.b.a> list);
    }

    public a(b bVar) {
        super(C0173a.c);
        this.b = bVar;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof com.warefly.checkscan.shared.infoBottomSheet.presentation.b;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, com.warefly.checkscan.shared.infoBottomSheet.presentation.b bVar) {
        ItemInfoBadgeBinding itemInfoBadgeBinding = (ItemInfoBadgeBinding) viewBinding;
        com.warefly.checkscan.shared.infoBottomSheet.presentation.b bVar2 = bVar;
        itemInfoBadgeBinding.getClass();
        itemInfoBadgeBinding.tvTitle.setText(bVar2.a);
        MaterialCardView root = itemInfoBadgeBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new c54(0, this, bVar2)));
    }
}
