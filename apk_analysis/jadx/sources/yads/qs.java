package yads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes6.dex */
public abstract class qs extends WebView {
    public final LinkedHashMap a;

    public qs(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new LinkedHashMap();
        WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        if (za.a(11)) {
            settings.setAllowContentAccess(false);
            if (za.a(16)) {
                settings.setAllowFileAccessFromFileURLs(false);
                settings.setAllowUniversalAccessFromFileURLs(false);
            }
        }
    }

    public final String a(String str) {
        return defpackage.cg.d(str, b(), "<body style='margin:0; padding:0;'>");
    }

    @Override // android.webkit.WebView
    public final void addJavascriptInterface(Object obj, String str) {
        super.addJavascriptInterface(obj, str);
        this.a.put(str, obj);
    }

    public String b() {
        return "";
    }

    public void c() {
        eh6.a((ViewGroup) this);
        Iterator it = this.a.keySet().iterator();
        while (it.hasNext()) {
            removeJavascriptInterface((String) it.next());
        }
        this.a.clear();
        destroy();
        getClass().toString();
    }

    @Override // android.webkit.WebView
    public final void removeJavascriptInterface(String str) {
        if (za.a(11)) {
            super.removeJavascriptInterface(str);
        }
    }

    public final void setDisplayZoomControls(boolean z) {
        if (za.a(11)) {
            getSettings().setDisplayZoomControls(z);
        }
    }
}
