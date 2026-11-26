package defpackage;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import androidx.core.content.ContextCompat;

/* JADX INFO: loaded from: classes5.dex */
public final class pz4 {
    public final /* synthetic */ WebView a;

    public pz4(WebView webView) {
        this.a = webView;
    }

    @JavascriptInterface
    public final void androidCopy(String str) {
        try {
            ClipboardManager clipboardManager = (ClipboardManager) ContextCompat.getSystemService(this.a.getContext(), ClipboardManager.class);
            ClipData clipDataNewPlainText = ClipData.newPlainText("requisites", str);
            if (clipboardManager != null) {
                clipboardManager.setPrimaryClip(clipDataNewPlainText);
                j59 j59Var = j59.a;
            }
        } catch (Throwable unused) {
        }
    }
}
