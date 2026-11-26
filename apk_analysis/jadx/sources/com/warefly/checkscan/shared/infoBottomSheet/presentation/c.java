package com.warefly.checkscan.shared.infoBottomSheet.presentation;

import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.shared.infoBottomSheet.databinding.ItemInfoTextBlockBinding;
import defpackage.sx3;
import defpackage.ta8;
import defpackage.vd9;
import defpackage.x61;

/* JADX INFO: loaded from: classes5.dex */
public final class c extends vd9<b.a, ItemInfoTextBlockBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof b.a;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, b.a aVar) {
        ItemInfoTextBlockBinding itemInfoTextBlockBinding = (ItemInfoTextBlockBinding) viewBinding;
        itemInfoTextBlockBinding.getClass();
        TextView textView = itemInfoTextBlockBinding.tvTextBlock;
        int i = sx3.a;
        textView.setText(ta8.f0(sx3.a(aVar.a)));
        itemInfoTextBlockBinding.tvTextBlock.setMovementMethod(x61.a);
    }
}
