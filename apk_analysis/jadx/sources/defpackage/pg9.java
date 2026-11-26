package defpackage;

import android.content.Context;
import android.net.Uri;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.webkit.ProxyConfig;
import com.warefly.checkscan.R;
import com.warefly.checkscan.presentation.electrocheque.view.CongratulationDialog;
import com.warefly.checkscan.presentation.electrocheque.view.WebViewFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class pg9 extends WebViewClient {
    public final /* synthetic */ WebViewFragment a;

    public pg9(WebViewFragment webViewFragment) {
        this.a = webViewFragment;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        WebViewFragment webViewFragment = this.a;
        if (webViewFragment.isResumed()) {
            webViewFragment.workWithScript();
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        Uri url = webResourceRequest != null ? webResourceRequest.getUrl() : null;
        if (url != null) {
            String string = url.toString();
            string.getClass();
            boolean zC = ra8.C(string, "intent", false);
            WebViewFragment webViewFragment = this.a;
            if (zC) {
                webViewFragment.o().openBonuses();
                return true;
            }
            String string2 = url.toString();
            string2.getClass();
            if (!ra8.C(string2, ProxyConfig.MATCH_HTTPS, false)) {
                String string3 = url.toString();
                string3.getClass();
                if (!ra8.C(string3, ProxyConfig.MATCH_HTTP, false)) {
                    return super.shouldOverrideUrlLoading(webView, webResourceRequest);
                }
            }
            String string4 = url.toString();
            string4.getClass();
            ze4<Object>[] ze4VarArr = WebViewFragment.h;
            if (ta8.D(string4, "/successCheckscan", false)) {
                Context contextRequireContext = webViewFragment.requireContext();
                contextRequireContext.getClass();
                String string5 = webViewFragment.getString(R.string.electrocheque_now_you_will);
                string5.getClass();
                new CongratulationDialog(contextRequireContext, string5).show();
                webViewFragment.workWithScript();
                webViewFragment.o().sendIsElectroUser(true);
                webViewFragment.o().setUserRegistered(true);
                return false;
            }
            if (ta8.D(string4, "/denyCheckscan", false)) {
                webViewFragment.o().sendIsElectroUser(false);
            }
        }
        return false;
    }
}
