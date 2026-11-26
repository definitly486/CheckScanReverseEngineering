package defpackage;

import android.view.KeyEvent;
import android.view.View;
import com.my.target.kg;
import com.warefly.checkscan.presentation.flows.promotions.registration.view.dialog.PromoResultDialog;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class bo6 implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ KeyEvent.Callback c;

    public /* synthetic */ bo6(KeyEvent.Callback callback, int i) {
        this.b = i;
        this.c = callback;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.b;
        KeyEvent.Callback callback = this.c;
        switch (i) {
            case 0:
                ze4<Object>[] ze4VarArr = PromoResultDialog.i;
                ((PromoResultDialog) callback).dismiss();
                break;
            default:
                int i2 = kg.T;
                ((kg) callback).g.k();
                break;
        }
    }
}
