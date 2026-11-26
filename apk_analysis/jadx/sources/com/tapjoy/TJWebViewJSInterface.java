package com.tapjoy;

import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import defpackage.jg;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class TJWebViewJSInterface {
    public final ConcurrentLinkedQueue a = new ConcurrentLinkedQueue();
    public WebView b;
    public final TJWebViewJSInterfaceListener c;
    public boolean d;

    public TJWebViewJSInterface(WebView webView, TJWebViewJSInterfaceListener tJWebViewJSInterfaceListener) {
        this.b = webView;
        this.c = tJWebViewJSInterfaceListener;
    }

    public void callback(Map<?, ?> map, String str, String str2) {
        try {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(new JSONObject(map));
            callbackToJavaScript(jSONArray, str, str2);
        } catch (Exception e) {
            TapjoyLog.w("Exception in callback to JS: " + e.toString());
        }
    }

    public void callbackToJavaScript(Object obj, String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(TJAdUnitConstants.String.ARGUMENTS, obj);
            if (str != null && str.length() > 0) {
                jSONObject.put("method", str);
            }
            JSONObject jSONObject2 = new JSONObject();
            if (str2 != null && str2.length() > 0) {
                jSONObject2.put(TJAdUnitConstants.String.CALLBACK_ID, str2);
            }
            jSONObject2.put("data", jSONObject);
            String str3 = "javascript:if(window.AndroidWebViewJavascriptBridge) AndroidWebViewJavascriptBridge._handleMessageFromAndroid('" + jSONObject2 + "');";
            if (!this.d) {
                this.a.add(str3);
                return;
            }
            WebView webView = this.b;
            if (webView != null) {
                TapjoyUtil.runOnMainThread(new r0(webView, str3));
            } else {
                TapjoyLog.w("No available webview to execute js");
            }
        } catch (Exception e) {
            TapjoyLog.w("Exception in callback to JS: " + e);
        }
    }

    @JavascriptInterface
    public void dispatchMethod(String str) {
        jg.f("dispatchMethod params: ", str);
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getJSONObject("data").getString("method");
            TJWebViewJSInterfaceListener tJWebViewJSInterfaceListener = this.c;
            if (tJWebViewJSInterfaceListener == null || this.b == null) {
                return;
            }
            tJWebViewJSInterfaceListener.onDispatchMethod(string, jSONObject);
        } catch (Exception e) {
            TapjoyLog.w(e.getMessage());
        }
    }

    public void flushMessageQueue() {
        if (this.d) {
            return;
        }
        while (true) {
            String str = (String) this.a.poll();
            if (str == null) {
                this.d = true;
                return;
            } else {
                WebView webView = this.b;
                if (webView != null) {
                    TapjoyUtil.runOnMainThread(new r0(webView, str));
                }
            }
        }
    }

    public void callback(ArrayList<?> arrayList, String str, String str2) {
        try {
            callbackToJavaScript(new JSONArray((Collection) arrayList), str, str2);
        } catch (Exception e) {
            TapjoyLog.w(e.getMessage());
        }
    }
}
