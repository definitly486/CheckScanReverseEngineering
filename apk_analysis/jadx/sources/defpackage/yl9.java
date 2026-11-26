package defpackage;

import android.net.Uri;
import io.appmetrica.analytics.AppMetrica;

/* JADX INFO: loaded from: classes5.dex */
public final class yl9 extends gh4 implements nl3<b08<Uri>, j59> {
    public final /* synthetic */ nl3<String, j59> f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public yl9(nl3<? super String, j59> nl3Var) {
        super(1);
        this.f = nl3Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(b08<Uri> b08Var) {
        b08<Uri> b08Var2 = b08Var;
        b08Var2.getClass();
        AppMetrica.requestDeferredDeeplink(new xl9(this.f, b08Var2));
        return j59.a;
    }
}
