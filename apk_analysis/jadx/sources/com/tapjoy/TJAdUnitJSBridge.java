package com.tapjoy;

import android.R;
import android.app.Activity;
import android.app.AlarmManager;
import android.app.AlertDialog;
import android.app.AppOpsManager;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Pair;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import com.tapjoy.internal.r2;
import com.tapjoy.internal.s2;
import defpackage.j59;
import defpackage.qh8;
import defpackage.sh8;
import defpackage.ti0;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class TJAdUnitJSBridge implements TJWebViewJSInterfaceListener {
    public static Object i;
    public TJWebViewJSInterface a;
    public final TJJSBridgeDelegate b;
    public TJSplitWebView c;
    public ProgressDialog d;
    public boolean e;
    public final TapjoyCache f;
    public boolean didLaunchOtherActivity = false;
    public boolean allowRedirect = true;
    public String otherActivityCallbackID = null;
    public boolean customClose = false;
    public boolean closeRequested = false;
    public String splitWebViewCallbackID = null;
    public final ConcurrentLinkedQueue g = new ConcurrentLinkedQueue();
    public final ExecutorService h = Executors.newSingleThreadExecutor();

    public TJAdUnitJSBridge(TJJSBridgeDelegate tJJSBridgeDelegate) {
        this.b = tJJSBridgeDelegate;
        TapjoyLog.i("creating AdUnit/JS Bridge");
        WebView webView = tJJSBridgeDelegate.getWebView();
        if (webView == null) {
            TapjoyLog.e("Cannot create AdUnitJSBridge -- webview is NULL");
            return;
        }
        TJWebViewJSInterface tJWebViewJSInterface = new TJWebViewJSInterface(webView, this);
        this.a = tJWebViewJSInterface;
        webView.addJavascriptInterface(tJWebViewJSInterface, TJAdUnitConstants.JAVASCRIPT_INTERFACE_ID);
        setEnabled(true);
        try {
            Context context = tJJSBridgeDelegate.getContext();
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            this.f = new TapjoyCache(context);
            if (bundle.containsKey("appJSMessageHandler")) {
                if (i == null) {
                    i = Class.forName(bundle.getString("appJSMessageHandler")).newInstance();
                }
                i.getClass().getDeclaredMethod("setHandler", Object.class, String.class).invoke(i, new u(this), u.class.getDeclaredMethods()[0].getName());
            }
        } catch (PackageManager.NameNotFoundException e) {
            e = e;
            ti0.f(e);
            throw null;
        } catch (ClassNotFoundException unused) {
            TapjoyLog.d("No app-provided support for JS handler");
        } catch (IllegalAccessException e2) {
            e = e2;
            ti0.f(e);
            throw null;
        } catch (InstantiationException e3) {
            e = e3;
            ti0.f(e);
            throw null;
        } catch (NoSuchMethodException e4) {
            e = e4;
            ti0.f(e);
            throw null;
        } catch (InvocationTargetException e5) {
            e = e5;
            ti0.f(e);
            throw null;
        }
    }

    public final void a(String str, final String str2) throws Throwable {
        int i2 = 0;
        try {
            str.getClass();
            s2 s2VarA = r2.a(str, r2.a(null), null, null, null);
            String str3 = s2VarA.b;
            TapjoyLog.d("fireUrl response: " + str3);
            HashMap map = new HashMap();
            map.put(NotificationCompat.CATEGORY_STATUS, Integer.valueOf(s2VarA.a));
            map.put("redirectURL", s2VarA.c);
            map.put("response", "");
            if (str3 != null && !str3.isEmpty()) {
                String strTrim = str3.trim();
                if (strTrim.startsWith("{") || strTrim.startsWith("[")) {
                    try {
                        if (strTrim.startsWith("{")) {
                            map.put("response", new JSONObject(strTrim));
                        } else {
                            map.put("response", new JSONArray(strTrim));
                        }
                    } catch (JSONException unused) {
                        TapjoyLog.d("Response content is not valid JSON.");
                    }
                }
            }
            new Handler(Looper.getMainLooper()).post(new sh8(this, str2, map, i2));
        } catch (Exception e) {
            TapjoyLog.e("fireURL failed: " + e.getMessage());
            final HashMap map2 = new HashMap();
            map2.put(NotificationCompat.CATEGORY_STATUS, 0);
            map2.put("redirectURL", null);
            map2.put("response", "");
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: th8
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.b(str2, map2);
                }
            });
        }
    }

    public void alert(JSONObject jSONObject, String str) {
        String str2;
        JSONArray jSONArray;
        String string;
        int i2;
        TapjoyLog.d("alert_method: " + jSONObject);
        String string2 = "";
        try {
            string = jSONObject.getString(TJAdUnitConstants.String.TITLE);
            try {
                string2 = jSONObject.getString(TJAdUnitConstants.String.MESSAGE);
                jSONArray = jSONObject.getJSONArray(TJAdUnitConstants.String.BUTTONS);
            } catch (Exception e) {
                e = e;
                str2 = string2;
                string2 = string;
                invokeJSCallback(str, Boolean.FALSE);
                TapjoyLog.w(e.getMessage());
                jSONArray = null;
                String str3 = str2;
                string = string2;
                string2 = str3;
            }
        } catch (Exception e2) {
            e = e2;
            str2 = "";
        }
        Context context = this.b.getContext();
        if (context == null) {
            TapjoyLog.d("Cannot alert -- TJAdUnitActivity is null");
            return;
        }
        AlertDialog alertDialogCreate = new AlertDialog.Builder(context, R.style.Theme.Material.Light.Dialog.Alert).setTitle(string).setMessage(string2).create();
        if (jSONArray == null || jSONArray.length() == 0) {
            invokeJSCallback(str, Boolean.FALSE);
            return;
        }
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        while (i3 < jSONArray.length()) {
            if (i3 != 0) {
                i2 = i3 != 1 ? -1 : -3;
            } else {
                i2 = -2;
            }
            try {
                arrayList.add(jSONArray.getString(i3));
            } catch (Exception e3) {
                TapjoyLog.e(e3.getMessage());
            }
            alertDialogCreate.setButton(i2, (CharSequence) arrayList.get(i3), new m(this, str));
            i3++;
        }
        alertDialogCreate.setCancelable(false);
        alertDialogCreate.setCanceledOnTouchOutside(false);
        alertDialogCreate.show();
    }

    public void cacheAsset(JSONObject jSONObject, String str) {
        String string;
        Long lValueOf = 0L;
        try {
            String string2 = jSONObject.getString("url");
            try {
                string = jSONObject.getString(TapjoyConstants.TJC_PLACEMENT_OFFER_ID);
            } catch (Exception unused) {
                string = "";
            }
            String str2 = string;
            try {
                lValueOf = Long.valueOf(jSONObject.getLong(TapjoyConstants.TJC_TIME_TO_LIVE));
            } catch (Exception unused2) {
            }
            TapjoyCache tapjoyCache = this.f;
            if (tapjoyCache != null) {
                tapjoyCache.cacheUrl(string2, str2, lValueOf.longValue(), new qh8(0, this, str));
            } else {
                invokeJSCallback(str, Boolean.FALSE);
            }
        } catch (Exception unused3) {
            TapjoyLog.w("Unable to cache asset. Invalid parameters.");
            invokeJSCallback(str, Boolean.FALSE);
        }
    }

    public void cachePathForURL(JSONObject jSONObject, String str) {
        try {
            String string = jSONObject.getString("url");
            TapjoyCache tapjoyCache = this.f;
            if (tapjoyCache != null) {
                invokeJSCallback(str, tapjoyCache.getPathOfCachedURL(string));
            } else {
                invokeJSCallback(str, "");
            }
        } catch (Exception unused) {
            invokeJSCallback(str, "");
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ad A[Catch: Exception -> 0x00c6, TryCatch #0 {Exception -> 0x00c6, blocks: (B:2:0x0000, B:4:0x000a, B:6:0x0014, B:40:0x00ad, B:43:0x00ba, B:15:0x0034, B:17:0x003c, B:19:0x0042, B:20:0x0055, B:22:0x005d, B:24:0x0067, B:27:0x006f, B:28:0x007c, B:31:0x008b, B:33:0x0093, B:34:0x0098, B:36:0x00a0, B:38:0x00a6), top: B:47:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x00b9  */
    public void checkPermission(JSONObject jSONObject, String str) {
        boolean zIsExternalStorageManager;
        try {
            Context context = this.b.getContext();
            if (context == null) {
                invokeJSCallback(str, Boolean.FALSE);
                return;
            }
            String string = jSONObject.getString(TJAdUnitConstants.String.PERMISSION);
            int iHashCode = string.hashCode();
            if (iHashCode == -1813079487) {
                if (string.equals("android.permission.MANAGE_EXTERNAL_STORAGE")) {
                    if (Build.VERSION.SDK_INT >= 30) {
                        zIsExternalStorageManager = Environment.isExternalStorageManager();
                    }
                } else if (ContextCompat.checkSelfPermission(this.b.getContext(), string) == 0) {
                    zIsExternalStorageManager = true;
                }
                zIsExternalStorageManager = false;
            } else if (iHashCode != -1561629405) {
                if (iHashCode != -162862488) {
                    if (iHashCode == 970694249 && string.equals("android.permission.SCHEDULE_EXACT_ALARM")) {
                        if (Build.VERSION.SDK_INT >= 31) {
                            zIsExternalStorageManager = ((AlarmManager) this.b.getContext().getSystemService(NotificationCompat.CATEGORY_ALARM)).canScheduleExactAlarms();
                        }
                    } else if (ContextCompat.checkSelfPermission(this.b.getContext(), string) == 0) {
                        zIsExternalStorageManager = true;
                    }
                    zIsExternalStorageManager = false;
                } else if (string.equals("android.permission.PACKAGE_USAGE_STATS")) {
                    AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
                    if (appOpsManager != null) {
                        if ((Build.VERSION.SDK_INT >= 29 ? appOpsManager.unsafeCheckOpNoThrow("android:get_usage_stats", Process.myUid(), context.getPackageName()) : appOpsManager.checkOpNoThrow("android:get_usage_stats", Process.myUid(), context.getPackageName())) == 0) {
                            zIsExternalStorageManager = true;
                        }
                    }
                    zIsExternalStorageManager = false;
                } else if (ContextCompat.checkSelfPermission(this.b.getContext(), string) == 0) {
                    zIsExternalStorageManager = true;
                } else {
                    zIsExternalStorageManager = false;
                }
            } else if (string.equals("android.permission.SYSTEM_ALERT_WINDOW")) {
                zIsExternalStorageManager = Settings.canDrawOverlays(context);
            } else if (ContextCompat.checkSelfPermission(this.b.getContext(), string) == 0) {
                zIsExternalStorageManager = true;
            } else {
                zIsExternalStorageManager = false;
            }
            invokeJSCallback(str, Boolean.valueOf(zIsExternalStorageManager));
        } catch (Exception unused) {
            invokeJSCallback(str, Boolean.FALSE);
        }
    }

    public void cleanUpJSBridge() {
        TJWebViewJSInterface tJWebViewJSInterface = this.a;
        if (tJWebViewJSInterface != null) {
            WebView webView = tJWebViewJSInterface.b;
            if (webView != null) {
                webView.removeAllViews();
                this.a.b.destroy();
                this.a.b = null;
            }
            this.a = null;
        }
    }

    public void clearCache(JSONObject jSONObject, String str) {
        TapjoyCache tapjoyCache = this.f;
        if (tapjoyCache == null) {
            invokeJSCallback(str, Boolean.FALSE);
        } else {
            tapjoyCache.clearUrlCache();
            invokeJSCallback(str, Boolean.TRUE);
        }
    }

    public void closeRequested(Boolean bool) {
        TJSplitWebView tJSplitWebView = this.c;
        if (tJSplitWebView != null) {
            if (tJSplitWebView.goBack()) {
                return;
            }
            this.c.j.dismissSplitView(null, null);
        } else {
            this.closeRequested = true;
            HashMap map = new HashMap();
            map.put(TJAdUnitConstants.String.FORCE_CLOSE, bool);
            invokeJSAdunitMethod(TJAdUnitConstants.String.CLOSE_REQUESTED, map);
        }
    }

    public void contentError(JSONObject jSONObject, String str) {
        int i2;
        String string;
        try {
            i2 = jSONObject.getInt("code");
        } catch (JSONException e) {
            TapjoyLog.e(e.getLocalizedMessage());
            i2 = -1;
        }
        try {
            string = jSONObject.getString(TJAdUnitConstants.String.MESSAGE);
        } catch (JSONException e2) {
            TapjoyLog.e(e2.getLocalizedMessage());
            string = "Unknown Content Error";
        }
        TJJSBridgeDelegate tJJSBridgeDelegate = this.b;
        if (tJJSBridgeDelegate == null) {
            invokeJSCallback(str, Boolean.FALSE);
        } else {
            tJJSBridgeDelegate.fireContentError(new TJError(i2, string));
            invokeJSCallback(str, Boolean.TRUE);
        }
    }

    public void contentReady(JSONObject jSONObject, String str) {
        invokeJSCallback(str, Boolean.valueOf(this.b.fireContentReady()));
    }

    public void destroy() {
        if (this.h.isShutdown()) {
            return;
        }
        this.h.shutdown();
    }

    public void dismiss(JSONObject jSONObject, String str) {
        invokeJSCallback(str, Boolean.TRUE);
        this.b.dismiss();
    }

    public void dismissSplitView(JSONObject jSONObject, String str) {
        TapjoyUtil.runOnMainThread(new s(this, str));
    }

    public void dismissStoreView(JSONObject jSONObject, String str) {
        dismissSplitView(jSONObject, str);
    }

    public void display() {
        invokeJSAdunitMethod("display", new Object[0]);
    }

    public void displayFullscreenWebview(JSONObject jSONObject, String str) {
        String string;
        Boolean boolValueOf = null;
        try {
            string = jSONObject.getString("url");
        } catch (JSONException unused) {
            string = null;
        }
        try {
            if (jSONObject.has(TJAdUnitConstants.String.REUSE_HTML)) {
                boolValueOf = Boolean.valueOf(jSONObject.getBoolean(TJAdUnitConstants.String.REUSE_HTML));
            }
        } catch (JSONException unused2) {
        }
        if ((string == null || string.length() == 0) && boolValueOf == null) {
            invokeJSCallback(str, Boolean.FALSE);
            return;
        }
        Intent intent = new Intent(this.b.getContext(), (Class<?>) TJWebViewActivity.class);
        intent.setAction("android.intent.action.VIEW");
        intent.setPackage(this.b.getContext().getPackageName());
        intent.putExtra("url", string);
        intent.putExtra(TJAdUnitConstants.String.REUSE_HTML, boolValueOf);
        String str2 = (String) this.b.getData(TJAdUnitConstants.String.HTML, String.class);
        if (str2 != null) {
            intent.putExtra(TJAdUnitConstants.String.HTML, str2);
        }
        this.b.getContext().startActivity(intent);
        invokeJSCallback(str, Boolean.TRUE);
    }

    public void displayStoreURL(JSONObject jSONObject, String str) {
        displayURL(jSONObject, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void displayURL(final JSONObject jSONObject, final String str) {
        Object obj;
        Exception exc;
        TJAdUnitJSBridge tJAdUnitJSBridge;
        final String str2;
        final String str3;
        try {
            String strOptString = jSONObject.optString("style");
            final String strOptString2 = jSONObject.optString("url");
            String strOptString3 = jSONObject.optString("deeplink");
            final JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(TJAdUnitConstants.String.SPLIT_VIEW_LAYOUT);
            final JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(TJAdUnitConstants.String.SPLIT_VIEW_EXIT_HOSTS);
            obj = null;
            final String strOptString4 = jSONObject.optString(TJAdUnitConstants.String.USER_AGENT, null);
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(TJAdUnitConstants.String.SPLIT_VIEW_TRIGGER);
            if (jSONObjectOptJSONObject2 != null) {
                try {
                    String strOptString5 = jSONObjectOptJSONObject2.optString(TJAdUnitConstants.String.SPLIT_VIEW_TRIGGER_ON, null);
                    String strOptString6 = jSONObjectOptJSONObject2.optString("to", null);
                    str2 = strOptString6;
                    str3 = strOptString5;
                    obj = strOptString6;
                } catch (Exception e) {
                    exc = e;
                    tJAdUnitJSBridge = this;
                }
            } else {
                str3 = null;
                str2 = null;
            }
            try {
                if (TJAdUnitConstants.String.STYLE_SPLIT.equals(strOptString)) {
                    TapjoyUtil.runOnMainThread(new Runnable() { // from class: rh8
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.b.a(jSONObject, jSONArrayOptJSONArray, jSONObjectOptJSONObject, strOptString4, str3, str2, str, strOptString2);
                        }
                    });
                    return;
                }
                this.didLaunchOtherActivity = true;
                this.otherActivityCallbackID = str;
                if (strOptString3.isEmpty()) {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(strOptString2));
                    if (jSONObject.optBoolean(TJAdUnitConstants.String.USE_ACTIVITY_NEW_TASK, true)) {
                        intent.addFlags(268435456);
                    }
                    this.b.getContext().startActivity(intent);
                    return;
                }
                JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject(TJAdUnitConstants.String.EXTRAS);
                Intent data = new Intent("android.intent.action.VIEW").setPackage("com.android.vending").setData(Uri.parse(strOptString3));
                if (jSONObjectOptJSONObject3 != null) {
                    Iterator<String> itKeys = jSONObjectOptJSONObject3.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        Object objOpt = jSONObjectOptJSONObject3.opt(next);
                        if (objOpt instanceof String) {
                            data.putExtra(next, (String) objOpt);
                        } else if (objOpt instanceof Boolean) {
                            data.putExtra(next, (Boolean) objOpt);
                        } else if (objOpt instanceof Integer) {
                            data.putExtra(next, (Integer) objOpt);
                        } else if (objOpt instanceof Long) {
                            data.putExtra(next, (Long) objOpt);
                        } else if (objOpt instanceof Double) {
                            data.putExtra(next, (Double) objOpt);
                        } else if (objOpt instanceof Float) {
                            data.putExtra(next, (Float) objOpt);
                        }
                    }
                }
                if (!data.hasExtra(TJAdUnitConstants.String.CALLERID)) {
                    data.putExtra(TJAdUnitConstants.String.CALLERID, this.b.getContext().getPackageName());
                }
                Activity activity = (Activity) this.b.getContext();
                if (activity == null) {
                    invokeJSCallback(str, Boolean.FALSE);
                    return;
                } else {
                    activity.startActivityForResult(data, 0);
                    invokeJSCallback(str, Boolean.TRUE);
                    return;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Exception e3) {
            e = e3;
            obj = this;
        }
        exc = e;
        tJAdUnitJSBridge = obj;
        tJAdUnitJSBridge.invokeJSCallback(str, Boolean.FALSE);
        TapjoyLog.e(exc.getMessage());
    }

    public void fetchData(JSONObject jSONObject, String str) {
        try {
            invokeJSCallback(str, new TJDataFetcher().a(jSONObject.getJSONArray("values")));
        } catch (Exception e) {
            invokeJSCallback(str, Boolean.FALSE);
            TapjoyLog.e("Exception: " + e);
        }
    }

    public void fireURL(JSONObject jSONObject, final String str) {
        final String strOptString = jSONObject.optString("url");
        if (!strOptString.isEmpty()) {
            this.h.execute(new Runnable() { // from class: uh8
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    this.b.a(strOptString, str);
                }
            });
            return;
        }
        TapjoyLog.d("URL is empty, aborting.");
        HashMap map = new HashMap();
        map.put(NotificationCompat.CATEGORY_STATUS, 0);
        map.put("redirectURL", null);
        map.put("response", "");
        b(str, map);
    }

    public void flushBacklogMessageQueue() {
        while (true) {
            Pair pair = (Pair) this.g.poll();
            if (pair == null) {
                return;
            } else {
                onDispatchMethod((String) pair.first, (JSONObject) pair.second);
            }
        }
    }

    public void flushMessageQueue() {
        TJWebViewJSInterface tJWebViewJSInterface = this.a;
        if (tJWebViewJSInterface == null) {
            return;
        }
        tJWebViewJSInterface.flushMessageQueue();
    }

    public void getCachedAssets(JSONObject jSONObject, String str) {
        TapjoyCache tapjoyCache = this.f;
        if (tapjoyCache != null) {
            invokeJSCallback(str, tapjoyCache.cachedAssetsToJSON());
        } else {
            invokeJSCallback(str, "");
        }
    }

    public void getDeviceTheme(JSONObject jSONObject, String str) {
        try {
            if (this.b.getContext() == null) {
                invokeJSCallback(str, TapjoyConstants.TJC_THEME_LIGHT);
            } else {
                invokeJSCallback(str, (this.b.getContext().getResources().getConfiguration().uiMode & 48) == 32 ? TapjoyConstants.TJC_THEME_DARK : TapjoyConstants.TJC_THEME_LIGHT);
            }
        } catch (Exception unused) {
            invokeJSCallback(str, TapjoyConstants.TJC_THEME_LIGHT);
        }
    }

    public void getKeyValue(JSONObject jSONObject, String str) {
        try {
            invokeJSCallback(str, new TJKeyValueStorage(this.b.getContext()).getValue(jSONObject.getString(TJKeyValueStorageKt.KEY)));
        } catch (Exception e) {
            invokeJSCallback(str, Boolean.FALSE);
            TapjoyLog.w("Exception: " + e);
        }
    }

    public void getOrientation(JSONObject jSONObject, String str) {
        b(str, this.b.getOrientation());
    }

    public void getSplitViewURL(JSONObject jSONObject, String str) {
        TapjoyUtil.runOnMainThread(new t(this, str));
    }

    public void getStatusBarHeight(JSONObject jSONObject, String str) {
        try {
            invokeJSCallback(str, Integer.valueOf(this.b.getStatusBarHeight()));
        } catch (Exception unused) {
        }
    }

    public void getTextZoom(JSONObject jSONObject, String str) {
        TapjoyUtil.runOnMainThread(new o(this, str));
    }

    public void hasSplitView(JSONObject jSONObject, String str) {
        TapjoyUtil.runOnMainThread(new r(this, str));
    }

    public void invokeJSAdunitMethod(String str, Object... objArr) {
        ArrayList<?> arrayList = new ArrayList<>(Arrays.asList(objArr));
        TJWebViewJSInterface tJWebViewJSInterface = this.a;
        if (tJWebViewJSInterface != null) {
            tJWebViewJSInterface.callback(arrayList, str, (String) null);
        }
    }

    public void invokeJSCallback(String str, Object... objArr) {
        if (TextUtils.isEmpty(str)) {
            TapjoyLog.d("invokeJSCallback -- no callbackID provided");
            return;
        }
        ArrayList<?> arrayList = new ArrayList<>(Arrays.asList(objArr));
        TJWebViewJSInterface tJWebViewJSInterface = this.a;
        if (tJWebViewJSInterface != null) {
            tJWebViewJSInterface.callback(arrayList, "", str);
        }
    }

    public void isNetworkAvailable(JSONObject jSONObject, String str) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.b.getContext().getSystemService("connectivity")).getActiveNetworkInfo();
            invokeJSCallback(str, Boolean.valueOf(activeNetworkInfo != null && activeNetworkInfo.isAvailable() && activeNetworkInfo.isConnected()));
        } catch (Exception unused) {
            invokeJSCallback(str, Boolean.FALSE);
        }
    }

    public void isPackageInstalled(JSONObject jSONObject, String str) {
        try {
            Context context = this.b.getContext();
            if (context == null) {
                invokeJSCallback(str, Boolean.FALSE);
                return;
            }
            String string = jSONObject.getString(TJAdUnitConstants.String.BUNDLE);
            PackageManager packageManager = context.getPackageManager();
            try {
                if (Build.VERSION.SDK_INT >= 33) {
                    packageManager.getPackageInfo(string, PackageManager.PackageInfoFlags.of(0L));
                } else {
                    packageManager.getPackageInfo(string, 0);
                }
                invokeJSCallback(str, Boolean.TRUE);
            } catch (PackageManager.NameNotFoundException unused) {
                invokeJSCallback(str, Boolean.FALSE);
            }
        } catch (JSONException e) {
            invokeJSCallback(str, Boolean.FALSE);
            TapjoyLog.w("Unable to check package installation. Invalid parameters: " + e.getMessage());
        } catch (Exception e2) {
            invokeJSCallback(str, Boolean.FALSE);
            TapjoyLog.e("Exception checking package installation: " + e2.getMessage());
        }
    }

    public void log(JSONObject jSONObject, String str) {
        try {
            TapjoyLog.d("Logging message=" + jSONObject.getString(TJAdUnitConstants.String.MESSAGE));
            invokeJSCallback(str, Boolean.TRUE);
        } catch (Exception e) {
            invokeJSCallback(str, Boolean.FALSE);
            TapjoyLog.e(e.getMessage());
        }
    }

    public void notifyOrientationChanged(String str, int i2, int i3) {
        HashMap map = new HashMap();
        map.put(TJAdUnitConstants.String.ORIENTATION, str);
        map.put(TJAdUnitConstants.String.WIDTH, Integer.valueOf(i2));
        map.put(TJAdUnitConstants.String.HEIGHT, Integer.valueOf(i3));
        invokeJSAdunitMethod(TJAdUnitConstants.String.ORIENTATION_CHANGED_EVENT, map);
    }

    public void notifyThemeChanged(String str) {
        invokeJSAdunitMethod(TJAdUnitConstants.String.THEME_CHANGED_EVENT, str);
    }

    @Override // com.tapjoy.TJWebViewJSInterfaceListener
    public void onDispatchMethod(String str, JSONObject jSONObject) {
        if (!this.e) {
            TapjoyLog.d("Bridge currently disabled. Adding " + str + " to message queue");
            this.g.add(new Pair(str, jSONObject));
            return;
        }
        String strOptString = null;
        try {
            strOptString = jSONObject.optString(TJAdUnitConstants.String.CALLBACK_ID, null);
            JSONObject jSONObject2 = jSONObject.getJSONObject("data");
            Method method = TJAdUnitJSBridge.class.getMethod(str, JSONObject.class, String.class);
            TapjoyLog.d("Dispatching method: " + method + " with data=" + jSONObject2 + "; callbackID=" + strOptString);
            if (this.a == null) {
                return;
            }
            method.invoke(this, jSONObject2, strOptString);
        } catch (Exception unused) {
            TapjoyLog.w("API unavailable, please update to latest SDK");
            invokeJSCallback(strOptString, Boolean.FALSE);
        }
    }

    public void openApp(JSONObject jSONObject, String str) {
        try {
            Context context = this.b.getContext();
            context.startActivity(context.getPackageManager().getLaunchIntentForPackage(jSONObject.getString(TJAdUnitConstants.String.BUNDLE)));
            invokeJSCallback(str, Boolean.TRUE);
        } catch (Exception e) {
            invokeJSCallback(str, Boolean.FALSE);
            e.printStackTrace();
        }
    }

    public void openSettingsByAction(JSONObject jSONObject, String str) {
        if (this.b.getContext() == null) {
            invokeJSCallback(str, Boolean.FALSE);
            return;
        }
        try {
            String string = jSONObject.getString("action");
            Intent intent = new Intent(string);
            if (jSONObject.has("uri")) {
                intent.setData(Uri.parse(jSONObject.getString("uri")));
            } else if ("android.settings.APP_NOTIFICATION_SETTINGS".equals(string) && jSONObject.optBoolean("includePackage", false)) {
                String packageName = this.b.getContext().getPackageName();
                int i2 = this.b.getContext().getApplicationInfo().uid;
                intent.putExtra("android.provider.extra.APP_PACKAGE", packageName);
            } else if (jSONObject.has("includePackage") && jSONObject.getBoolean("includePackage")) {
                intent.setData(Uri.parse("package:" + this.b.getContext().getPackageName()));
            }
            this.b.getContext().startActivity(intent);
            invokeJSCallback(str, Boolean.TRUE);
        } catch (Exception e) {
            TapjoyLog.e(e.getMessage());
            invokeJSCallback(str, Boolean.FALSE);
        }
    }

    public void pause() {
        try {
            invokeJSAdunitMethod("onVisibilityStateChange", TJAdUnitConstants.String.HIDDEN);
        } catch (Exception e) {
            TapjoyLog.e("Exception: " + e);
        }
    }

    public void present(JSONObject jSONObject, String str) {
        try {
            Boolean boolValueOf = Boolean.FALSE;
            Boolean boolValueOf2 = Boolean.valueOf(jSONObject.getString(TJAdUnitConstants.String.VISIBLE));
            try {
                boolValueOf = Boolean.valueOf(jSONObject.getString(TJAdUnitConstants.String.TRANSPARENT));
            } catch (Exception unused) {
            }
            try {
                this.customClose = Boolean.valueOf(jSONObject.getString(TJAdUnitConstants.String.CUSTOM_CLOSE)).booleanValue();
            } catch (Exception unused2) {
            }
            final boolean zBooleanValue = boolValueOf2.booleanValue();
            final boolean zBooleanValue2 = boolValueOf.booleanValue();
            final WebView webView = this.b.getWebView();
            TapjoyUtil.runOnMainThread(new Runnable() { // from class: vh8
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.a(webView, zBooleanValue, zBooleanValue2);
                }
            });
            invokeJSCallback(str, Boolean.TRUE);
        } catch (Exception e) {
            invokeJSCallback(str, Boolean.FALSE);
            TapjoyLog.e(e.getMessage());
        }
    }

    public void removeAssetFromCache(JSONObject jSONObject, String str) {
        try {
            String string = jSONObject.getString("url");
            TapjoyCache tapjoyCache = this.f;
            if (tapjoyCache != null) {
                invokeJSCallback(str, Boolean.valueOf(tapjoyCache.removeUrlCache(string)));
            } else {
                invokeJSCallback(str, Boolean.FALSE);
            }
        } catch (Exception unused) {
            TapjoyLog.w("Unable to cache asset. Invalid parameters.");
            invokeJSCallback(str, Boolean.FALSE);
        }
    }

    public void resume() {
        try {
            invokeJSAdunitMethod("onVisibilityStateChange", TJAdUnitConstants.String.VISIBLE);
        } catch (Exception e) {
            TapjoyLog.e("Exception: " + e);
        }
    }

    public void sendMessageToApp(JSONObject jSONObject, String str) {
        try {
            Object obj = i;
            if (obj != null) {
                obj.getClass().getDeclaredMethod("onMessage", String.class, Object.class).invoke(i, TJAdUnitConstants.String.MESSAGE, jSONObject.get(TJAdUnitConstants.String.MESSAGE));
                invokeJSCallback(str, Boolean.TRUE);
            }
        } catch (Exception e) {
            invokeJSCallback(str, Boolean.FALSE);
            TapjoyLog.e("Exception: " + e);
        }
    }

    public void setAllowRedirect(JSONObject jSONObject, String str) {
        boolean z;
        try {
            z = jSONObject.getBoolean(TJAdUnitConstants.String.ENABLED);
        } catch (Exception unused) {
            z = true;
        }
        this.allowRedirect = z;
        invokeJSCallback(str, Boolean.TRUE);
    }

    public void setBackgroundColor(JSONObject jSONObject, String str) {
        try {
            this.b.setBackgroundColor(jSONObject.getString("backgroundColor"), new p(this, str));
        } catch (Exception unused) {
            TapjoyLog.w("Unable to set background color. Invalid parameters.");
            invokeJSCallback(str, Boolean.FALSE);
        }
    }

    public void setCloseButtonClickable(JSONObject jSONObject, String str) {
        try {
            this.b.setCloseButtonClickable(jSONObject.optBoolean(TJAdUnitConstants.String.CLICKABLE));
            invokeJSCallback(str, Boolean.TRUE);
        } catch (Exception e) {
            invokeJSCallback(str, Boolean.FALSE);
            TapjoyLog.e(e.getMessage());
        }
    }

    public void setCloseButtonVisible(JSONObject jSONObject, String str) {
        try {
            this.b.setCloseButtonVisible(jSONObject.getBoolean(TJAdUnitConstants.String.VISIBLE));
            invokeJSCallback(str, Boolean.TRUE);
        } catch (Exception e) {
            invokeJSCallback(str, Boolean.FALSE);
            e.printStackTrace();
        }
    }

    public void setEnabled(boolean z) {
        this.e = z;
        if (z) {
            flushBacklogMessageQueue();
        }
    }

    public void setEventPreloadLimit(JSONObject jSONObject, String str) {
        if (this.f == null) {
            invokeJSCallback(str, Boolean.FALSE);
            return;
        }
        try {
            TJPlacementManager.setCachedPlacementLimit(jSONObject.getInt(TJAdUnitConstants.String.TJC_PLACEMENT_CACHE_LIMIT));
            invokeJSCallback(str, Boolean.TRUE);
        } catch (Exception unused) {
            TapjoyLog.w("Unable to set Tapjoy cache's event preload limit. Invalid parameters.");
            invokeJSCallback(str, Boolean.FALSE);
        }
    }

    public void setKeyValue(JSONObject jSONObject, String str) {
        try {
            new TJKeyValueStorage(this.b.getContext()).setValue(jSONObject.getString(TJKeyValueStorageKt.KEY), jSONObject.get("value"));
            invokeJSCallback(str, Boolean.TRUE);
        } catch (Exception e) {
            invokeJSCallback(str, Boolean.FALSE);
            TapjoyLog.e("Exception: " + e);
        }
    }

    public void setNavigationEventBlocker(JSONObject jSONObject, String str) {
        invokeJSCallback(str, Boolean.FALSE);
    }

    public void setOrientation(JSONObject jSONObject, String str) {
        int i2;
        try {
            String string = jSONObject.getString(TJAdUnitConstants.String.ORIENTATION);
            if (string.equals(TJAdUnitConstants.String.LANDSCAPE) || string.equals(TJAdUnitConstants.String.LANDSCAPE_LEFT)) {
                i2 = 8;
            } else {
                i2 = string.equals(TJAdUnitConstants.String.LANDSCAPE_RIGHT) ? 0 : 1;
            }
            invokeJSCallback(str, Boolean.valueOf(this.b.setOrientation(i2)));
        } catch (Exception unused) {
            invokeJSCallback(str, Boolean.FALSE);
        }
    }

    public void setPrerenderLimit(JSONObject jSONObject, String str) {
        try {
            TJPlacementManager.setPreRenderedPlacementLimit(jSONObject.getInt(TJAdUnitConstants.String.TJC_PLACEMENT_PRE_RENDERED_LIMIT));
            invokeJSCallback(str, Boolean.TRUE);
        } catch (Exception unused) {
            TapjoyLog.w("Unable to set Tapjoy placement pre-render limit. Invalid parameters.");
            invokeJSCallback(str, Boolean.FALSE);
        }
    }

    public void setScrollable(JSONObject jSONObject, String str) {
        invokeJSCallback(str, Boolean.FALSE);
    }

    public void setSpinnerVisible(JSONObject jSONObject, String str) {
        try {
            boolean z = jSONObject.getBoolean(TJAdUnitConstants.String.VISIBLE);
            String strOptString = jSONObject.optString(TJAdUnitConstants.String.TITLE);
            String strOptString2 = jSONObject.optString(TJAdUnitConstants.String.MESSAGE);
            Context context = this.b.getContext();
            try {
                if (context != null) {
                    TapjoyUtil.runOnMainThread(new q(this, z, context, strOptString, strOptString2, str));
                    return;
                } else {
                    TapjoyLog.d("Cannot setSpinnerVisible -- Context is null");
                    invokeJSCallback(str, Boolean.FALSE);
                    return;
                }
            } catch (Exception e) {
                e = e;
            }
        } catch (Exception e2) {
            e = e2;
        }
        Exception exc = e;
        invokeJSCallback(str, Boolean.FALSE);
        TapjoyLog.e(exc.getMessage());
    }

    public void setTextZoom(JSONObject jSONObject, String str) {
        try {
            float f = (float) jSONObject.getDouble(TJAdUnitConstants.String.TEXT_ZOOM);
            this.b.setTextZoom(f);
            invokeJSAdunitMethod(str, Float.valueOf(f));
        } catch (JSONException e) {
            ti0.f(e);
        }
    }

    public void setupSdkBeacons(JSONObject jSONObject, String str) {
        TapjoyLog.d("setupSdkBeacons_method: " + jSONObject);
        try {
            this.b.setupSdkBeacons(new com.tapjoy.internal.l0(jSONObject.getString("url"), jSONObject.getJSONObject(TJAdUnitConstants.String.BEACON_PARAMS), jSONObject.getJSONObject(TJAdUnitConstants.String.BEACON_PATH_MAP)));
            HashMap map = new HashMap();
            map.put(NotificationCompat.CATEGORY_STATUS, TJAdUnitConstants.String.TRUE);
            invokeJSCallback(str, map);
        } catch (Exception e) {
            invokeJSCallback(str, Boolean.FALSE);
            TapjoyLog.w(e.getMessage());
        }
    }

    public void shouldClose(JSONObject jSONObject, String str) {
        try {
            this.b.shouldClose(Boolean.valueOf(jSONObject.getString(TJAdUnitConstants.String.CLOSE)).booleanValue());
            invokeJSCallback(str, Boolean.TRUE);
        } catch (Exception e) {
            invokeJSCallback(str, Boolean.FALSE);
            this.b.shouldClose(true);
            TapjoyLog.e(e.getMessage());
        }
        this.closeRequested = false;
    }

    public void unsetOrientation(JSONObject jSONObject, String str) {
        invokeJSCallback(str, Boolean.valueOf(this.b.unsetOrientation()));
    }

    public void invokeJSAdunitMethod(String str, Map<String, Object> map) {
        TJWebViewJSInterface tJWebViewJSInterface = this.a;
        if (tJWebViewJSInterface != null) {
            tJWebViewJSInterface.callback(map, str, (String) null);
        }
    }

    /* JADX INFO: renamed from: invokeJSCallback, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void b(String str, Map<String, Object> map) {
        this.a.callback(map, "", str);
    }

    public final /* synthetic */ void a(JSONObject jSONObject, JSONArray jSONArray, JSONObject jSONObject2, String str, String str2, String str3, String str4, String str5) {
        WebView webView = this.b.getWebView();
        if (webView != null) {
            TJSplitWebView tJSplitWebView = this.c;
            if (tJSplitWebView == null) {
                ViewParent parent = webView.getParent();
                if (parent instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) parent;
                    TJSplitWebView tJSplitWebView2 = new TJSplitWebView(this.b.getContext(), jSONObject, this.b.getStatusBarHeight(), this);
                    this.c = tJSplitWebView2;
                    viewGroup.addView(tJSplitWebView2, new RelativeLayout.LayoutParams(-1, -1));
                    this.c.animateOpen(viewGroup);
                }
            } else {
                tJSplitWebView.setExitHosts(jSONArray);
                this.c.applyLayoutOption(jSONObject2);
            }
            TJSplitWebView tJSplitWebView3 = this.c;
            if (tJSplitWebView3 != null) {
                tJSplitWebView3.setUserAgent(str);
                this.c.setTrigger(str2, str3);
                this.splitWebViewCallbackID = str4;
                try {
                    this.c.loadUrl(str5);
                    return;
                } catch (Exception e) {
                    TapjoyLog.w(e.getMessage());
                    return;
                }
            }
        }
        this.c = null;
        this.splitWebViewCallbackID = null;
        invokeJSCallback(str4, Boolean.FALSE);
    }

    public final /* synthetic */ j59 a(String str, Boolean bool) {
        invokeJSCallback(str, Boolean.TRUE);
        return j59.a;
    }

    public final /* synthetic */ void a(WebView webView, boolean z, boolean z2) {
        if (webView != null) {
            webView.post(new v(this, webView, z, z2));
        }
    }
}
