package defpackage;

import androidx.webkit.WebViewOutcomeReceiver;
import androidx.webkit.internal.WebViewStartupResultImpl;
import io.appmetrica.analytics.impl.Sb;
import io.appmetrica.analytics.impl.Y;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class fd7 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ fd7(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                Sb.a((Sb) obj2, (Y) obj);
                break;
            default:
                ((WebViewOutcomeReceiver) obj2).onResult((WebViewStartupResultImpl) obj);
                break;
        }
    }
}
