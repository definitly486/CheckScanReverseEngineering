package defpackage;

import com.google.firebase.inappmessaging.internal.RateLimitProto;
import com.google.firebase.inappmessaging.internal.RateLimiterClient;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class zd0 implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ zd0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ((nl3) obj2).invoke(obj);
                break;
            case 1:
                ((ju4.b) obj2).invoke(obj);
                break;
            default:
                ((RateLimiterClient) obj2).lambda$increment$2((RateLimitProto.RateLimit) obj);
                break;
        }
    }
}
