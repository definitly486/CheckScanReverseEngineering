package defpackage;

import android.view.View;
import com.my.target.kg;
import com.warefly.checkscan.presentation.flows.promotions.registration.view.dialog.PromoResultDialog;
import com.warefly.checkscan.presentation.upridWeb.veiw.UpridWebFullScreenDialog;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class co6 implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ co6(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ze4<Object>[] ze4VarArr = PromoResultDialog.i;
                ((PromoResultDialog) obj).dismiss();
                break;
            case 1:
                UpridWebFullScreenDialog.a aVar = UpridWebFullScreenDialog.f;
                ((UpridWebFullScreenDialog) obj).dismiss();
                break;
            default:
                kg kgVar = (kg) obj;
                int i2 = kg.T;
                kgVar.g.b(kgVar.Q);
                break;
        }
    }
}
