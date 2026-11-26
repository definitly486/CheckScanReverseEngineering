package defpackage;

import android.net.Uri;
import com.warefly.checkscan.core.analytics.dynamicLinks.exception.NoUriFoundException;
import io.appmetrica.analytics.AppMetrica;
import io.appmetrica.analytics.DeferredDeeplinkListener;

/* JADX INFO: loaded from: classes5.dex */
public final class xl9 implements DeferredDeeplinkListener {
    public final /* synthetic */ nl3<String, j59> a;
    public final /* synthetic */ b08<Uri> b;

    /* JADX WARN: Multi-variable type inference failed */
    public xl9(nl3<? super String, j59> nl3Var, b08<Uri> b08Var) {
        this.a = nl3Var;
        this.b = b08Var;
    }

    @Override // io.appmetrica.analytics.DeferredDeeplinkListener
    public final void onDeeplinkLoaded(String str) {
        str.getClass();
        AppMetrica.reportEvent("DynamicLinks", na8.i("\n                        {\n                            \"Yandex\": { \n                                \"deeplink\": \"" + str + "\"\n                            }\n                        }\n                    "));
        this.a.invoke(str);
        j59 j59Var = null;
        if (ta8.M(str)) {
            str = null;
        }
        b08<Uri> b08Var = this.b;
        if (str != null) {
            b08Var.onSuccess(Uri.parse(str));
            j59Var = j59.a;
        }
        if (j59Var == null) {
            b08Var.onError(new NoUriFoundException());
        }
    }

    @Override // io.appmetrica.analytics.DeferredDeeplinkListener
    public final void onError(DeferredDeeplinkListener.Error error, String str) {
        error.getClass();
        this.b.onError(new NoUriFoundException());
    }
}
