package yads;

import android.content.Context;
import defpackage.ll3;
import yads.eg;

/* JADX INFO: loaded from: classes6.dex */
public final class eg {
    public static final /* synthetic */ defpackage.ze4[] b = {cb.a(eg.class, "proxyAdapter", "getProxyAdapter()Lcom/yandex/mobile/ads/common/analytics/varioqub/proxy/VarioqubProxyAdapter;", 0)};
    public final j95 a;

    public eg(final lg lgVar, final Context context) {
        this.a = new j95(new ll3() { // from class: lu9
            @Override // defpackage.ll3
            public final Object invoke() {
                return eg.a(lgVar, context);
            }
        });
    }

    public static final wm0 a(lg lgVar, Context context) {
        if (lgVar.c()) {
            try {
                return xm0.a(context);
            } catch (Throwable th) {
                th.toString();
            }
        }
        return null;
    }
}
