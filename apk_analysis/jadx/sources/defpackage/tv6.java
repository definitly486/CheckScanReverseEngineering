package defpackage;

import android.view.View;
import com.warefly.checkscan.databinding.ItemQuestionBinding;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class tv6 implements View.OnClickListener {
    public final /* synthetic */ int b = 1;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ tv6(wv6 wv6Var, rv6 rv6Var, ItemQuestionBinding itemQuestionBinding) {
        this.c = rv6Var;
        this.d = itemQuestionBinding;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                wv6.m((rv6) obj2, (ItemQuestionBinding) obj);
                break;
            default:
                ((dv7) obj2).b.onShopClick(((dn1) obj).a);
                break;
        }
    }

    public /* synthetic */ tv6(dv7 dv7Var, dn1 dn1Var) {
        this.c = dv7Var;
        this.d = dn1Var;
    }
}
