package defpackage;

import android.graphics.Bitmap;
import com.bumptech.glide.a;
import com.google.firebase.inappmessaging.internal.RateLimitProto;
import com.google.firebase.inappmessaging.internal.RateLimiterClient;
import com.google.firebase.inappmessaging.model.RateLimit;
import com.warefly.checkscan.presentation.balance.transferCashback.card.view.TransferCardDialog;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class nx6 implements xl3, v75 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ nx6(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.v75
    public void a(c75.a aVar) {
        TransferCardDialog transferCardDialog = (TransferCardDialog) this.b;
        String str = (String) this.c;
        TransferCardDialog.a aVar2 = TransferCardDialog.d;
        h37<Bitmap> h37VarN = a.e(transferCardDialog.e().etTransferDestination).b().N(str);
        h37VarN.K(new yy8(aVar), h37VarN);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return ((RateLimiterClient) this.b).lambda$isRateLimited$5((RateLimit) this.c, (RateLimitProto.RateLimit) obj);
    }
}
