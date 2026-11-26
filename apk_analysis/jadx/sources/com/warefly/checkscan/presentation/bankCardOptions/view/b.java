package com.warefly.checkscan.presentation.bankCardOptions.view;

import android.widget.TextView;
import com.warefly.checkscan.databinding.ItemBankCardTermsBinding;
import defpackage.dm3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.sx3;
import defpackage.t90;

/* JADX INFO: loaded from: classes5.dex */
public final class b extends gh4 implements dm3<ItemBankCardTermsBinding, t90.a.c, Integer, j59> {
    public static final b f = new b(3);

    @Override // defpackage.dm3
    public final j59 invoke(ItemBankCardTermsBinding itemBankCardTermsBinding, t90.a.c cVar, Integer num) {
        ItemBankCardTermsBinding itemBankCardTermsBinding2 = itemBankCardTermsBinding;
        t90.a.c cVar2 = cVar;
        num.intValue();
        itemBankCardTermsBinding2.getClass();
        cVar2.getClass();
        TextView textView = itemBankCardTermsBinding2.tvCardTermTitle;
        int i = sx3.a;
        String strB = cVar2.b();
        if (strB == null) {
            strB = "";
        }
        textView.setText(sx3.a(strB));
        TextView textView2 = itemBankCardTermsBinding2.tvCardTermText;
        String strA = cVar2.a();
        textView2.setText(sx3.a(strA != null ? strA : ""));
        return j59.a;
    }
}
