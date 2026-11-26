package defpackage;

import android.net.Uri;
import android.view.View;
import com.warefly.checkscan.R;
import com.warefly.checkscan.presentation.flows.promotions.registration.view.dialog.PromoResultDialog;

/* JADX INFO: loaded from: classes5.dex */
public final class eo6 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ PromoResultDialog f;
    public final /* synthetic */ ur6.c g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public eo6(PromoResultDialog promoResultDialog, ur6.c cVar) {
        super(1);
        this.f = promoResultDialog;
        this.g = cVar;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        Object aVar;
        view.getClass();
        PromoResultDialog promoResultDialog = this.f;
        String str = this.g.d;
        ze4<Object>[] ze4VarArr = PromoResultDialog.i;
        try {
            if (aa4.e(Uri.parse(str).getHost(), promoResultDialog.getContext().getString(R.string.deeplink_page_sign_up))) {
                aVar = str + "?after_event=checkscan://landing?id=" + promoResultDialog.f;
            } else {
                aVar = str;
            }
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Object obj = str;
        if (!(aVar instanceof k57.a)) {
            obj = aVar;
        }
        promoResultDialog.openUrl((String) obj);
        promoResultDialog.dismiss();
        return j59.a;
    }
}
