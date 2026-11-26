package defpackage;

import android.content.Context;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewStartUpConfig;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.utils.CancelWorkRunnable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class r21 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ r21(Object obj, Object obj2, Object obj3, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.e;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                CancelWorkRunnable.forNameInline$lambda$5((WorkDatabase) obj3, (String) obj2, (WorkManagerImpl) obj);
                break;
            default:
                WebViewCompat.lambda$startUpWebView$3((WebViewStartUpConfig) obj3, (WebViewCompat.WebViewStartUpCallback) obj2, (Context) obj);
                break;
        }
    }
}
