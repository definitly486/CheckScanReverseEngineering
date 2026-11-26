package defpackage;

import android.webkit.WebView;
import androidx.camera.core.SafeCloseImageReaderProxy;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import com.my.target.h1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class y99 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ y99(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((UserMetadata) obj).serializeUserDataIfNeeded();
                break;
            case 1:
                ((SafeCloseImageReaderProxy) obj).safeClose();
                break;
            default:
                int i2 = h1.d;
                WebView webView = ((h1) obj).b;
                if (webView != null) {
                    try {
                        webView.destroy();
                    } catch (Throwable th) {
                        h1.c(th);
                    }
                    break;
                }
                break;
        }
    }
}
