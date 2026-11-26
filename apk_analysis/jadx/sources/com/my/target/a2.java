package com.my.target;

import android.app.Activity;
import android.graphics.Rect;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.my.tracker.ads.AdFormat;
import com.tapjoy.TJAdUnitConstants;
import defpackage.bea;
import defpackage.jfa;
import defpackage.me0;
import defpackage.oha;
import defpackage.wv9;
import defpackage.y14;
import defpackage.yy9;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.lang.ref.WeakReference;
import java.net.URI;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class a2 {
    public w0 c;
    public yc d;
    public boolean e;
    public boolean f;
    public final a b = new a();
    public final String a = AdFormat.INTERSTITIAL;

    public class b extends WebChromeClient {
        public b() {
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            y14.r(null, "MraidBridge: JS console message - " + consoleMessage.message() + " - at line " + consoleMessage.lineNumber());
            if (a2.this.c == null) {
                return super.onConsoleMessage(consoleMessage);
            }
            y14.r(null, "InterstitialMraidPresenter: Console message - " + consoleMessage.message());
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            if (a2.this.c == null) {
                return super.onJsAlert(webView, str, str2, jsResult);
            }
            y14.r(null, "InterstitialMraidPresenter: JS Alert - " + str2);
            jsResult.confirm();
            return true;
        }
    }

    public class c implements yc.a {
        public c() {
        }
    }

    public static String a(Rect rect) {
        return rect.left + StringUtils.COMMA + rect.top + StringUtils.COMMA + rect.width() + StringUtils.COMMA + rect.height();
    }

    public static String g(Rect rect) {
        return rect.width() + StringUtils.COMMA + rect.height();
    }

    public final void b(Uri uri) {
        w0 w0Var;
        String scheme = uri.getScheme();
        String host = uri.getHost();
        JSONObject jSONObject = null;
        if ("mytarget".equals(scheme)) {
            if ("onloadmraidjs".equals(host)) {
                y14.r(null, "MraidBridge: JS call onLoad");
            }
            y14.r(null, "MraidBridge: Got mytarget scheme - " + uri);
            return;
        }
        if (!"mraid".equals(scheme)) {
            try {
                new URI(uri.toString());
                yc ycVar = this.d;
                if (ycVar == null || !ycVar.g || (w0Var = this.c) == null) {
                    return;
                }
                w0Var.b(uri);
                return;
            } catch (Throwable unused) {
                y14.r(null, "MraidBridge: Invalid MRAID URL - " + uri);
                d("", "Mraid command sent an invalid URL");
                return;
            }
        }
        if (host.contains(StringUtils.COMMA)) {
            host = host.substring(0, host.indexOf(StringUtils.COMMA)).trim();
        }
        y14.r(null, "MraidBridge: Got mraid command - " + uri);
        String string = uri.toString();
        bea beaVar = new bea(host, this.a);
        StringBuilder sb = new StringBuilder("mraidbridge.nativeComplete(");
        String str = beaVar.b;
        sb.append(JSONObject.quote(str));
        sb.append(")");
        c(sb.toString());
        int iIndexOf = string.indexOf("{");
        int iLastIndexOf = string.lastIndexOf("}") + 1;
        if (iIndexOf >= 0 && iLastIndexOf > 0 && iIndexOf < iLastIndexOf) {
            try {
                if (iLastIndexOf <= string.length()) {
                    jSONObject = new JSONObject(string.substring(iIndexOf, iLastIndexOf));
                }
            } catch (Throwable th) {
                d(str, th.getMessage());
                return;
            }
        }
        e(beaVar, jSONObject);
    }

    public final void c(String str) {
        if (this.d == null) {
            y14.r(null, "MraidBridge: Attempted to inject Javascript into MRAID WebView while was not attached - \n\t".concat(str));
            return;
        }
        String strC = me0.c("javascript:window.", str, ";");
        y14.r(null, "MraidBridge: Injecting Javascript into MRAID WebView " + hashCode() + " - " + strC);
        this.d.b(strC);
    }

    public final void d(String str, String str2) {
        c("mraidbridge.fireErrorEvent(" + JSONObject.quote(str2) + ", " + JSONObject.quote(str) + ")");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void e(bea beaVar, JSONObject jSONObject) throws JSONException {
        jfa jfaVar;
        int i;
        Integer num;
        String str;
        g1.a aVar;
        yc ycVar;
        String str2 = beaVar.b;
        if (beaVar.a && (ycVar = this.d) != null && !ycVar.g) {
            d(str2, "Cannot execute this command unless the user clicks");
        }
        if (this.c == null) {
            d(str2, "Invalid state to execute this command");
            return;
        }
        if (this.d == null) {
            d(str2, "The current WebView is being destroyed");
            return;
        }
        str2.getClass();
        int i2 = -1;
        switch (str2) {
            case "vpaidInit":
                this.c.s = true;
                break;
            case "playVideo":
                y14.r(null, "MraidBridge: playVideo is currently unsupported");
                break;
            case "expand":
                if (jSONObject != null) {
                    Uri.parse(jSONObject.getString("url"));
                }
                this.c.getClass();
                y14.r(null, "InterstitialMraidPresenter: Expand method not used with interstitials");
                break;
            case "resize":
                this.c.getClass();
                y14.r(null, "InterstitialMraidPresenter: Resize method not used with interstitials");
                break;
            case "createCalendarEvent":
                y14.r(null, "MraidBridge: createCalendarEvent is currently unsupported");
                break;
            case "":
                d(str2, "Unspecified MRAID Javascript command");
                break;
            case "open":
                if (jSONObject == null) {
                    d(str2, "open params cannot be null");
                    break;
                } else {
                    this.c.b(Uri.parse(jSONObject.getString("url")));
                    break;
                }
                break;
            case "close":
                this.c.h();
                break;
            case "setOrientationProperties":
                if (jSONObject == null) {
                    d(str2, "setOrientationProperties params cannot be null");
                    break;
                } else {
                    boolean z = jSONObject.getBoolean("allowOrientationChange");
                    String string = jSONObject.getString("forceOrientation");
                    string.getClass();
                    switch (string) {
                        case "none":
                            jfaVar = new jfa(string, i2);
                            break;
                        case "portrait":
                            i2 = 1;
                            jfaVar = new jfa(string, i2);
                            break;
                        case "landscape":
                            i2 = 0;
                            jfaVar = new jfa(string, i2);
                            break;
                        default:
                            jfaVar = null;
                            break;
                    }
                    if (jfaVar != null) {
                        w0 w0Var = this.c;
                        a2 a2Var = w0Var.f;
                        if (!w0Var.c(jfaVar)) {
                            a2Var.d("setOrientationProperties", "Unable to force orientation to " + jfaVar);
                        } else {
                            w0Var.t = z;
                            w0Var.u = jfaVar;
                            if (!"none".equals(jfaVar.b)) {
                                w0Var.d(w0Var.u.a);
                            } else {
                                boolean z2 = w0Var.t;
                                WeakReference weakReference = w0Var.g;
                                if (!z2) {
                                    Activity activity = (Activity) weakReference.get();
                                    if (activity != null) {
                                        int rotation = activity.getWindowManager().getDefaultDisplay().getRotation();
                                        int i3 = activity.getResources().getConfiguration().orientation;
                                        if (1 == i3) {
                                            i = (rotation == 1 || rotation == 2) ? 9 : 1;
                                        } else if (2 == i3) {
                                            i = (rotation == 2 || rotation == 3) ? 8 : 0;
                                        } else {
                                            y14.r(null, "UiUtils: Unknown screen orientation. Defaulting to portrait");
                                        }
                                        w0Var.d(i);
                                    } else {
                                        a2Var.d("setOrientationProperties", "Unable to set MRAID expand orientation to 'none'; expected passed in Activity Context.");
                                    }
                                } else {
                                    Activity activity2 = (Activity) weakReference.get();
                                    if (activity2 != null && (num = w0Var.k) != null) {
                                        activity2.setRequestedOrientation(num.intValue());
                                    }
                                    w0Var.k = null;
                                }
                            }
                        }
                    } else {
                        d(str2, "wrong orientation ".concat(string));
                    }
                    break;
                }
                break;
            case "storePicture":
                y14.r(null, "MraidBridge: storePicture is currently unsupported");
                break;
            case "setResizeProperties":
                if (jSONObject == null) {
                    d(str2, "setResizeProperties params cannot be null");
                    break;
                } else {
                    jSONObject.getInt(TJAdUnitConstants.String.WIDTH);
                    jSONObject.getInt(TJAdUnitConstants.String.HEIGHT);
                    jSONObject.getInt("offsetX");
                    jSONObject.getInt("offsetY");
                    jSONObject.optBoolean("allowOffscreen", false);
                    String strOptString = jSONObject.optString("customClosePosition");
                    if (strOptString != null) {
                        switch (strOptString.hashCode()) {
                            case -1364013995:
                                str = TtmlNode.CENTER;
                                strOptString.equals(str);
                                break;
                            case -1314880604:
                                strOptString.equals("top-right");
                                break;
                            case -1012429441:
                                str = "top-left";
                                strOptString.equals(str);
                                break;
                            case -655373719:
                                str = "bottom-left";
                                strOptString.equals(str);
                                break;
                            case 1163912186:
                                str = "bottom-right";
                                strOptString.equals(str);
                                break;
                            case 1288627767:
                                str = "bottom-center";
                                strOptString.equals(str);
                                break;
                            case 1755462605:
                                str = "top-center";
                                strOptString.equals(str);
                                break;
                        }
                    }
                    this.c.getClass();
                    y14.r(null, "InterstitialMraidPresenter: SetResizeProperties method not used with interstitials");
                    break;
                }
                break;
            case "vpaidEvent":
                if (jSONObject == null) {
                    d(str2, "vpaidEvent params cannot be null");
                    break;
                } else {
                    String string2 = jSONObject.getString(NotificationCompat.CATEGORY_EVENT);
                    w0 w0Var2 = this.c;
                    if (!w0Var2.s) {
                        w0Var2.f.d("vpaidEvent", "Calling VPAID command before VPAID init");
                    } else {
                        g1.a aVar2 = w0Var2.n;
                        boolean z3 = aVar2 != null;
                        wv9 wv9Var = w0Var2.o;
                        if (z3 & (wv9Var != null)) {
                            aVar2.l(wv9Var, string2);
                        }
                    }
                    break;
                }
                break;
            case "playheadEvent":
                if (jSONObject == null) {
                    d(str2, "playheadEvent params cannot be null");
                    break;
                } else {
                    float f = (float) jSONObject.getDouble("remain");
                    float f2 = (float) jSONObject.getDouble(TypedValues.TransitionType.S_DURATION);
                    w0 w0Var3 = this.c;
                    if (!w0Var3.s) {
                        w0Var3.f.d("playheadEvent", "Calling VPAID command before VPAID init");
                        break;
                    } else if (f >= 0.0f && f2 >= 0.0f && (aVar = w0Var3.n) != null && w0Var3.o != null) {
                        aVar.d(f, f2);
                        break;
                    }
                }
                break;
        }
    }

    public final void f(boolean z) {
        if (z != this.f) {
            c("mraidbridge.setIsViewable(" + z + ")");
        }
        this.f = z;
    }

    public class a extends yy9 {
        public a() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            yc ycVar;
            wv9 wv9Var;
            View view;
            a2 a2Var = a2.this;
            if (a2Var.e || (ycVar = a2Var.d) == null) {
                return;
            }
            a2Var.e = true;
            w0 w0Var = a2Var.c;
            if (w0Var != null) {
                WebView webView2 = ycVar.getWebView();
                w0Var.j = "default";
                w0Var.j();
                ArrayList arrayList = new ArrayList();
                Activity activity = (Activity) w0Var.g.get();
                if (activity != null && (view = w0Var.m) != null) {
                    for (view = w0Var.m; view.isHardwareAccelerated() && (view.getLayerType() & 1) == 0; view = (View) view.getParent()) {
                        if (!(view.getParent() instanceof View)) {
                            Window window = activity.getWindow();
                            if (window != null && (window.getAttributes().flags & 16777216) != 0) {
                                arrayList.add("'inlineVideo'");
                                break;
                            } else {
                                break;
                                break;
                            }
                        }
                    }
                }
                arrayList.add("'vpaid'");
                a2Var.c("mraidbridge.setSupports(" + TextUtils.join(StringUtils.COMMA, arrayList) + ")");
                a2Var.c("mraidbridge.setPlacementType(" + JSONObject.quote(AdFormat.INTERSTITIAL) + ")");
                yc ycVar2 = a2Var.d;
                a2Var.f(ycVar2 != null && ycVar2.f);
                w0Var.g("default");
                a2Var.c("mraidbridge.fireReadyEvent()");
                oha ohaVar = w0Var.e;
                StringBuilder sb = new StringBuilder("mraidbridge.setScreenSize(");
                sb.append(a2.g(ohaVar.b));
                sb.append(");window.mraidbridge.setMaxSize(");
                sb.append(a2.g(ohaVar.h));
                sb.append(");window.mraidbridge.setCurrentPosition(");
                Rect rect = ohaVar.d;
                sb.append(a2.a(rect));
                sb.append(");window.mraidbridge.setDefaultPosition(");
                sb.append(a2.a(ohaVar.f));
                sb.append(")");
                a2Var.c(sb.toString());
                a2Var.c("mraidbridge.fireSizeChangeEvent(" + a2.g(rect) + ")");
                g1.a aVar = w0Var.n;
                if (aVar == null || (wv9Var = w0Var.o) == null) {
                    return;
                }
                aVar.o(wv9Var, w0Var.d);
                w0Var.n.c(webView2);
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            y14.r(null, "MraidBridge: Error - " + str);
            super.onReceivedError(webView, i, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            a2.this.b(Uri.parse(str));
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            a2.this.b(webResourceRequest.getUrl());
            return true;
        }
    }
}
