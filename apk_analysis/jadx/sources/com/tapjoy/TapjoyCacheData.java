package com.tapjoy;

import defpackage.aa4;
import defpackage.ad2;
import defpackage.jh2;
import defpackage.ra8;
import defpackage.rg;
import defpackage.ta8;
import defpackage.vg;
import defpackage.zg;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class TapjoyCacheData {
    public static final Companion Companion = new Companion(null);
    public final String a;
    public final String b;
    public final long c;
    public final String d;

    public static final class Companion {
        public Companion(jh2 jh2Var) {
        }

        public final TapjoyCacheData fromJson(String str) {
            str.getClass();
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("url", jSONObject.optString("assetURL", ""));
            strOptString.getClass();
            String strOptString2 = jSONObject.optString("localFilePath", "");
            strOptString2.getClass();
            return new TapjoyCacheData(strOptString, strOptString2, (jSONObject.optLong(TapjoyConstants.TJC_TIME_TO_LIVE, TapjoyCacheKt.DEFAULT_TIME_TO_LIVE) * 1000) + System.currentTimeMillis(), jSONObject.optString(TapjoyConstants.TJC_PLACEMENT_OFFER_ID, ""));
        }
    }

    public TapjoyCacheData(String str, String str2, long j, String str3) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
        this.c = j;
        this.d = str3;
    }

    public static /* synthetic */ TapjoyCacheData copy$default(TapjoyCacheData tapjoyCacheData, String str, String str2, long j, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = tapjoyCacheData.a;
        }
        if ((i & 2) != 0) {
            str2 = tapjoyCacheData.b;
        }
        if ((i & 4) != 0) {
            j = tapjoyCacheData.c;
        }
        if ((i & 8) != 0) {
            str3 = tapjoyCacheData.d;
        }
        String str4 = str3;
        return tapjoyCacheData.copy(str, str2, j, str4);
    }

    public final String component1() {
        return this.a;
    }

    public final String component2() {
        return this.b;
    }

    public final long component3() {
        return this.c;
    }

    public final String component4() {
        return this.d;
    }

    public final TapjoyCacheData copy(String str, String str2, long j, String str3) {
        str.getClass();
        str2.getClass();
        return new TapjoyCacheData(str, str2, j, str3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TapjoyCacheData)) {
            return false;
        }
        TapjoyCacheData tapjoyCacheData = (TapjoyCacheData) obj;
        return aa4.e(this.a, tapjoyCacheData.a) && aa4.e(this.b, tapjoyCacheData.b) && this.c == tapjoyCacheData.c && aa4.e(this.d, tapjoyCacheData.d);
    }

    public final long getExpiresAt() {
        return this.c;
    }

    public final String getLocalFilePath() {
        return this.b;
    }

    public final String getMimeType() {
        String strF = this.a;
        if (ra8.u(strF, ".", false)) {
            strF = rg.f(1, 0, strF);
        }
        String strSubstring = ta8.O(strF, '.', 0, 6) != -1 ? strF.substring(ta8.O(strF, '.', 0, 6) + 1) : "";
        int iHashCode = strSubstring.hashCode();
        if (iHashCode == 3401) {
            return !strSubstring.equals("js") ? "application/octet-stream" : "text/javascript";
        }
        if (iHashCode != 98819) {
            return (iHashCode == 3213227 && strSubstring.equals(TJAdUnitConstants.String.HTML)) ? "text/html" : "application/octet-stream";
        }
        return !strSubstring.equals("css") ? "application/octet-stream" : "text/css";
    }

    public final String getOfferId() {
        return this.d;
    }

    public final String getUrl() {
        return this.a;
    }

    public int hashCode() {
        int iB = vg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        String str = this.d;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final boolean isExpired() {
        return this.c <= System.currentTimeMillis();
    }

    public final String toJson() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("url", this.a);
        jSONObject.put("localFilePath", this.b);
        jSONObject.put(TapjoyConstants.TJC_TIME_TO_LIVE, (this.c - System.currentTimeMillis()) / 1000);
        String str = this.d;
        if (str != null) {
            jSONObject.put(TapjoyConstants.TJC_PLACEMENT_OFFER_ID, str);
        }
        String string = jSONObject.toString();
        string.getClass();
        return string;
    }

    public String toString() {
        String str = this.a;
        String str2 = this.b;
        long j = this.c;
        String str3 = this.d;
        StringBuilder sbD = ad2.d("TapjoyCacheData(url=", str, ", localFilePath=", str2, ", expiresAt=");
        sbD.append(j);
        sbD.append(", offerId=");
        sbD.append(str3);
        sbD.append(")");
        return sbD.toString();
    }

    public /* synthetic */ TapjoyCacheData(String str, String str2, long j, String str3, int i, jh2 jh2Var) {
        this(str, str2, j, (i & 8) != 0 ? null : str3);
    }
}
