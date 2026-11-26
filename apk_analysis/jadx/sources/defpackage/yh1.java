package defpackage;

import android.content.Context;
import com.warefly.checkscan.R;
import com.warefly.checkscan.presentation.cheques.view.ChequesFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class yh1 extends gh4 implements fm3<Integer, String, Integer, String, j59> {
    public final /* synthetic */ ChequesFragment f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yh1(ChequesFragment chequesFragment) {
        super(4);
        this.f = chequesFragment;
    }

    @Override // defpackage.fm3
    public final j59 invoke(Integer num, String str, Integer num2, String str2) {
        int iIntValue = num.intValue();
        String str3 = str;
        int iIntValue2 = num2.intValue();
        String str4 = str2;
        str3.getClass();
        ze4<Object>[] ze4VarArr = ChequesFragment.q;
        ChequesFragment chequesFragment = this.f;
        Context context = chequesFragment.getContext();
        if (context != null) {
            String string = chequesFragment.getString(R.string.cheques_fragment_dialog_delete_cheque_text, str3, Float.valueOf(iIntValue2 / 100.0f));
            string.getClass();
            fw1.a(context, string, new zh1(chequesFragment, iIntValue));
        }
        if (str4 != null) {
            chequesFragment.o().removeReceiptFromQueue(str4);
        }
        return j59.a;
    }
}
