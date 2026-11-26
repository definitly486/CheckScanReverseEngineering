package com.tapjoy.internal;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJError;
import com.tapjoy.TJOfferwallDiscoverRequestListener;
import com.tapjoy.TJPlacementData;
import com.tapjoy.TJPlacementManager;
import com.tapjoy.TJPlacementRequestListener;
import com.tapjoy.TapjoyCache;
import com.tapjoy.TapjoyConnectCore;
import com.tapjoy.TapjoyErrorMessage;
import com.tapjoy.TapjoyException;
import com.tapjoy.TapjoyLog;
import com.tapjoy.TapjoyUtil;
import defpackage.aa4;
import defpackage.b36;
import defpackage.cg;
import defpackage.j59;
import defpackage.jg;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.ni0;
import defpackage.p01;
import defpackage.p05;
import defpackage.ta8;
import defpackage.up0;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class p1 extends e1 {
    public List i;
    public final o1 j;

    public p1() {
        o1 o1Var = new o1();
        this.i = kx2.b;
        this.j = o1Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(String str, String str2, boolean z, String str3, HashMap map, com.tapjoy.a0 a0Var) {
        str.getClass();
        str2.getClass();
        map.getClass();
        a0Var.getClass();
        o1 o1Var = this.j;
        o1Var.a = str2;
        o1Var.d = z;
        o1Var.c = str3;
        List<b36> listO = p05.o(map);
        ArrayList arrayList = new ArrayList(kn1.q(listO, 10));
        for (b36 b36Var : listO) {
            String str4 = (String) b36Var.b;
            Integer num = (Integer) ((b36) b36Var.c).b;
            arrayList.add(new i1(str4, (num != null && num.intValue() == -9999) ? null : (Integer) ((b36) b36Var.c).b, (Integer) ((b36) b36Var.c).c));
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            i1 i1Var = (i1) obj;
            if (i1Var.b != null || i1Var.c != null) {
                arrayList2.add(obj);
            }
        }
        this.i = arrayList2;
        s2 s2VarA = r2.a(a(), c(), b().toString());
        TJPlacementData tJPlacementData = new TJPlacementData(c(), str, str2, s2VarA.b, UUID.randomUUID().toString());
        if (!aa4.e(s2VarA.a("x-tapjoy-prerender"), CommonUrlParts.Values.FALSE_INTEGER)) {
            tJPlacementData.setPrerenderingRequested(true);
        }
        TapjoyLog.d("Tapjoy-Server-Debug: " + s2VarA.a("X-Tapjoy-Debug"));
        if (!aa4.e(s2VarA.a("x-tapjoy-handle-dismiss-on-pause"), CommonUrlParts.Values.FALSE_INTEGER)) {
            tJPlacementData.setHandleDismissOnPause(true);
        }
        long j = s2VarA.e;
        if (j > 0) {
            long jElapsedRealtime = s2VarA.d;
            if (jElapsedRealtime <= 0) {
                int i2 = u2.d;
                jElapsedRealtime = SystemClock.elapsedRealtime() + u2.c;
            }
            long j2 = j - jElapsedRealtime;
            if (j2 > 0) {
                tJPlacementData.setRequestExpiration(Long.valueOf(SystemClock.elapsedRealtime() + j2));
            }
        } else {
            tJPlacementData.setRequestExpiration(0L);
        }
        int i3 = s2VarA.a;
        if (i3 == 0) {
            String str5 = s2VarA.b;
            if (str5 == null) {
                str5 = TapjoyErrorMessage.NETWORK_ERROR;
            }
            a0Var.b.a(a0Var.a, new TJError(i3, str5));
            return;
        }
        if (i3 != 200) {
            a0Var.b.a(a0Var.a);
            return;
        }
        String strA = s2VarA.a("Content-Type");
        if (!TextUtils.isEmpty(strA) && ta8.D(strA, "json", false)) {
            if (aa4.e(s2VarA.a("X-Tapjoy-Disable-Preload"), "1")) {
                try {
                    if (s2VarA.b == null) {
                        throw new TapjoyException("PlacementRequest request failed due to null response");
                    }
                    try {
                        TapjoyLog.d("Disable preload flag is set for placement " + tJPlacementData.getPlacementName());
                        String str6 = s2VarA.b;
                        if (str6 == null) {
                            str6 = "{}";
                        }
                        tJPlacementData.setRedirectURL(new JSONObject(str6).getString("redirect_url"));
                        tJPlacementData.setPreloadDisabled(true);
                        tJPlacementData.setHasProgressSpinner(true);
                        TapjoyLog.d("redirect_url:" + tJPlacementData.getRedirectURL());
                        a0Var.onContentRequestSuccess(tJPlacementData);
                        a0Var.b.a();
                        return;
                    } catch (JSONException unused) {
                        throw new TapjoyException("PlacementRequest request failed, malformed server response");
                    }
                } catch (TapjoyException e) {
                    a0Var.b.a(a0Var.a, new TJError(s2VarA.a, cg.d(e.getMessage(), " for placement ", tJPlacementData.getPlacementName())));
                    return;
                }
            }
            return;
        }
        a0Var.onContentRequestSuccess(tJPlacementData);
        String strA2 = s2VarA.a("x-tapjoy-cacheable-assets");
        try {
            if (!TJPlacementManager.canCachePlacement()) {
                TapjoyLog.i("Placement caching limit reached. No content will be cached for placement " + tJPlacementData.getPlacementName());
                a0Var.onCachingCompleted();
                j59 j59Var = j59.a;
                return;
            }
            JSONArray jSONArray = new JSONArray(strA2);
            if (jSONArray.length() <= 0) {
                a0Var.onCachingCompleted();
                j59 j59Var2 = j59.a;
                return;
            }
            TapjoyLog.i("Begin caching content for placement " + tJPlacementData.getPlacementName());
            TJPlacementManager.incrementPlacementCacheCount();
            tJPlacementData.setDidIncrementCache(true);
            Context context = TapjoyConnectCore.getInstance().getContext();
            if (context != null) {
                new TapjoyCache(context).cacheUrlGroup(jSONArray, new up0(a0Var, 6));
                j59 j59Var3 = j59.a;
            }
        } catch (Exception e2) {
            a0Var.onCachingCompleted();
            jg.f("Error while handling placement cache: ", e2.getMessage());
            j59 j59Var4 = j59.a;
        }
    }

    @Override // com.tapjoy.internal.e1
    public final JSONObject b() throws JSONException {
        JSONObject jSONObjectB = super.b();
        o1 o1Var = this.j;
        o1Var.getClass();
        JSONObject jSONObject = new JSONObject();
        u.a(jSONObject, "name", o1Var.a);
        u.a(jSONObject, "entry_point", o1Var.c);
        u.a(jSONObject, "system_placement", Boolean.valueOf(o1Var.d));
        u.a(jSONObject, "offerwall_discover", Boolean.valueOf(o1Var.b));
        u.a(jSONObjectB, "placement", jSONObject);
        JSONArray jSONArray = new JSONArray();
        for (i1 i1Var : this.i) {
            i1Var.getClass();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(TtmlNode.ATTR_ID, i1Var.a);
            Integer num = i1Var.b;
            if (num != null) {
                u.a(jSONObject2, "balance", Integer.valueOf(num.intValue()));
            }
            Integer num2 = i1Var.c;
            if (num2 != null) {
                u.a(jSONObject2, "amount_required", Integer.valueOf(num2.intValue()));
            }
            jSONArray.put(jSONObject2);
        }
        j59 j59Var = j59.a;
        u.a(jSONObjectB, "currencies", jSONArray);
        u.a(jSONObjectB, "retry", null);
        return jSONObjectB;
    }

    public final String c() {
        return ni0.c(TapjoyConnectCore.getInstance().getPlacementURL(), "v2/content?");
    }

    @Override // com.tapjoy.internal.e1
    public final Map a() {
        HashMap map = new HashMap();
        map.put("Content-Type", "application/json");
        return map;
    }

    public static final void a(s2 s2Var, TJOfferwallDiscoverRequestListener tJOfferwallDiscoverRequestListener) {
        int i = s2Var.a;
        if (i == 200) {
            tJOfferwallDiscoverRequestListener.onContentRequestSuccess(s2Var);
        } else {
            tJOfferwallDiscoverRequestListener.onContentRequestFailure(new TJError(i, "Unknown Error"));
        }
    }

    public static final void a(TJPlacementRequestListener tJPlacementRequestListener, Boolean bool) {
        tJPlacementRequestListener.onCachingCompleted();
    }

    public final void a(String str, com.tapjoy.b0 b0Var) {
        str.getClass();
        b0Var.getClass();
        o1 o1Var = this.j;
        o1Var.a = str;
        o1Var.b = true;
        TapjoyUtil.runOnMainThread(new p01(6, r2.a(a(), c(), b().toString()), b0Var));
    }
}
