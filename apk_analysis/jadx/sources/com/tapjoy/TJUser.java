package com.tapjoy;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import com.tapjoy.TJUser;
import com.tapjoy.internal.m1;
import com.tapjoy.internal.r2;
import defpackage.b36;
import defpackage.cl4;
import defpackage.fh8;
import defpackage.fp;
import defpackage.gi8;
import defpackage.gp;
import defpackage.ha1;
import defpackage.iq2;
import defpackage.ka;
import defpackage.kx2;
import defpackage.n05;
import defpackage.ni0;
import defpackage.qn1;
import defpackage.ra8;
import defpackage.ta8;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.w3c.dom.Document;

/* JADX INFO: loaded from: classes4.dex */
public final class TJUser {
    public static final TJUser INSTANCE = new TJUser();
    public static String a = null;
    public static int b = -1;
    public static int c = -1;
    public static int d = -1;
    public static TJSegment e;
    public static final HashSet f;
    public static final TJKeyValueStorage g;
    public static final cl4 h;

    static {
        TJKeyValueStorage tJKeyValueStorage;
        TJKeyValueStorage tJKeyValueStorage2;
        TJKeyValueStorage tJKeyValueStorage3;
        String string;
        HashSet hashSet = new HashSet();
        f = hashSet;
        h = new fh8(new gi8(0));
        Context context = TapjoyConnectCore.getInstance().getContext();
        if (context != null) {
            TJKeyValueStorage tJKeyValueStorage4 = new TJKeyValueStorage(context, TapjoyConstants.TJC_PREFERENCE);
            g = tJKeyValueStorage4;
            SharedPreferences sharedPreferences = context.getSharedPreferences("fiverocks", 0);
            sharedPreferences.getClass();
            new TJPreferencesMigration(tJKeyValueStorage4, sharedPreferences, n05.e(new b36("ui", "pref_user_id"), new b36("ul", "pref_user_level"), new b36("utags", "pref_user_tags")), kx2.b).migrateAllKeysIfExists();
            if (c < 0 && tJKeyValueStorage4.contains("pref_max_level")) {
                c = tJKeyValueStorage4.getInt("pref_max_level", -1);
            }
            if (e == null && tJKeyValueStorage4.contains("pref_user_segment")) {
                e = TJSegment.valueOf(tJKeyValueStorage4.getInt("pref_user_segment", TJSegment.UNKNOWN.getValue()));
            }
            String str = a;
            if ((str == null || str.length() == 0) && tJKeyValueStorage4.contains("pref_user_id")) {
                a = tJKeyValueStorage4.getString("pref_user_id", null);
            }
            if (tJKeyValueStorage4.contains("pref_user_level")) {
                b = tJKeyValueStorage4.getInt("pref_user_level", -1);
            }
            if (hashSet.isEmpty() && tJKeyValueStorage4.contains("pref_user_tags") && (string = tJKeyValueStorage4.getString("pref_user_tags", null)) != null && string.length() != 0) {
                try {
                    byte[] bArrDecode = Base64.decode(string, 2);
                    bArrDecode.getClass();
                    JSONArray jSONArray = new JSONArray(new String(bArrDecode, ha1.b));
                    ArrayList arrayList = new ArrayList();
                    int length = jSONArray.length();
                    for (int i = 0; i < length; i++) {
                        String string2 = jSONArray.getString(i);
                        string2.getClass();
                        arrayList.add(string2);
                    }
                    HashSet hashSet2 = f;
                    hashSet2.clear();
                    hashSet2.addAll(qn1.t0(arrayList));
                } catch (IOException unused) {
                    tJKeyValueStorage4.remove("pref_user_tags");
                } catch (IllegalArgumentException unused2) {
                    tJKeyValueStorage4.remove("pref_user_tags");
                } catch (JSONException unused3) {
                }
            }
            INSTANCE.getClass();
            int i2 = c;
            if (i2 >= -1 && (tJKeyValueStorage3 = g) != null) {
                tJKeyValueStorage3.setValue("pref_max_level", Integer.valueOf(i2));
            }
            TJSegment tJSegment = e;
            if (tJSegment != null) {
                if (tJSegment == TJSegment.UNKNOWN) {
                    TJKeyValueStorage tJKeyValueStorage5 = g;
                    if (tJKeyValueStorage5 != null) {
                        tJKeyValueStorage5.remove("pref_user_segment");
                    }
                } else {
                    TJKeyValueStorage tJKeyValueStorage6 = g;
                    if (tJKeyValueStorage6 != null) {
                        tJKeyValueStorage6.setValue("pref_user_segment", Integer.valueOf(tJSegment.getValue()));
                    }
                }
            }
            int i3 = b;
            if (i3 >= -1 && (tJKeyValueStorage2 = g) != null) {
                tJKeyValueStorage2.setValue("pref_user_level", Integer.valueOf(i3));
            }
            String str2 = a;
            if (str2 != null && str2.length() != 0 && (tJKeyValueStorage = g) != null) {
                tJKeyValueStorage.setValue("pref_user_id", a);
            }
            a();
        }
    }

    public static void a() {
        HashSet hashSet = f;
        if (hashSet.isEmpty()) {
            TJKeyValueStorage tJKeyValueStorage = g;
            if (tJKeyValueStorage != null) {
                tJKeyValueStorage.remove("pref_user_tags");
            }
            hashSet.clear();
            return;
        }
        JSONArray jSONArray = new JSONArray();
        try {
            Iterator it = qn1.t0(hashSet).iterator();
            while (it.hasNext()) {
                jSONArray.put((String) it.next());
            }
        } catch (JSONException unused) {
        }
        String string = jSONArray.toString();
        string.getClass();
        byte[] bytes = string.getBytes(ha1.b);
        bytes.getClass();
        String strEncodeToString = Base64.encodeToString(bytes, 2);
        TJKeyValueStorage tJKeyValueStorage2 = g;
        if (tJKeyValueStorage2 != null) {
            tJKeyValueStorage2.setValue("pref_user_tags", strEncodeToString);
        }
    }

    public static final void b(TJSetUserIDListener tJSetUserIDListener) {
        if (tJSetUserIDListener != null) {
            tJSetUserIDListener.onSetUserIDFailure(TJUserKt.USER_ID_MAX_LENGTH_ERROR);
        }
        if (tJSetUserIDListener != null) {
            tJSetUserIDListener.onSetUserIDFailure(-1, TJUserKt.USER_ID_MAX_LENGTH_ERROR);
        }
    }

    public static final void c(TJSetUserIDListener tJSetUserIDListener) {
        if (tJSetUserIDListener != null) {
            tJSetUserIDListener.onSetUserIDSuccess();
        }
    }

    public static final void d(TJSetUserIDListener tJSetUserIDListener) {
        if (tJSetUserIDListener != null) {
            tJSetUserIDListener.onSetUserIDFailure("Failed to set userID");
        }
        if (tJSetUserIDListener != null) {
            tJSetUserIDListener.onSetUserIDFailure(-1, "Failed to set userID");
        }
    }

    public static final void e(TJSetUserIDListener tJSetUserIDListener) {
        if (tJSetUserIDListener != null) {
            tJSetUserIDListener.onSetUserIDSuccess();
        }
    }

    public final void checkIfMaxLevelRequired() {
        String string;
        String appVersion = TJAppInfo.INSTANCE.getAppVersion();
        if (appVersion != null && c >= 0) {
            TJKeyValueStorage tJKeyValueStorage = g;
            Integer numValueOf = tJKeyValueStorage != null ? Integer.valueOf(tJKeyValueStorage.getInt("pref_max_level_cache", -1)) : null;
            if (tJKeyValueStorage == null || !tJKeyValueStorage.contains("pref_app_version")) {
                if (tJKeyValueStorage != null) {
                    tJKeyValueStorage.setValue("pref_app_version", appVersion);
                }
                string = appVersion;
            } else {
                string = tJKeyValueStorage.getString("pref_app_version", null);
            }
            if (appVersion.equals(string)) {
                int i = c;
                if (numValueOf != null && numValueOf.intValue() == i) {
                    return;
                }
            }
            if (c <= -1 || appVersion.length() <= 0) {
                return;
            }
            if (tJKeyValueStorage != null) {
                tJKeyValueStorage.setValue("pref_max_level_cache", Integer.valueOf(c));
            }
            if (tJKeyValueStorage != null) {
                tJKeyValueStorage.setValue("pref_app_version", appVersion);
            }
            d = c;
        }
    }

    public final Integer getMaxLevelParam() {
        int i = d;
        if (i > 0) {
            return Integer.valueOf(i);
        }
        return null;
    }

    public final String getUserID() {
        return a;
    }

    public final String getUserIdIfNotEmpty() {
        String string;
        String str = a;
        if (str == null || (string = ta8.f0(str).toString()) == null || string.length() <= 0) {
            return null;
        }
        return a;
    }

    public final int getUserLevel() {
        return b;
    }

    public final Integer getUserLevelIfNeeded() {
        int i = b;
        if (i > -1) {
            return Integer.valueOf(i);
        }
        return null;
    }

    public final int getUserMaxLevel() {
        return c;
    }

    public final void getUserRevenue(TJGetUserRevenueListener tJGetUserRevenueListener) {
        new m1().a(tJGetUserRevenueListener);
    }

    public final TJSegment getUserSegment() {
        TJSegment tJSegment = e;
        return tJSegment == null ? TJSegment.UNKNOWN : tJSegment;
    }

    public final Integer getUserSegmentInt() {
        TJSegment tJSegment = e;
        if (tJSegment == null || tJSegment == TJSegment.UNKNOWN) {
            return null;
        }
        return Integer.valueOf(tJSegment.getValue());
    }

    public final String getUserSegmentString() {
        TJSegment tJSegment = e;
        if (tJSegment == null || tJSegment == TJSegment.UNKNOWN) {
            return null;
        }
        return String.valueOf(tJSegment);
    }

    public final Set<String> getUserTags() {
        return f;
    }

    public final void setUserId(String str) {
        TJKeyValueStorage tJKeyValueStorage;
        if (str == null) {
            a = null;
            TJKeyValueStorage tJKeyValueStorage2 = g;
            if (tJKeyValueStorage2 != null) {
                tJKeyValueStorage2.remove("pref_user_id");
                return;
            }
            return;
        }
        String string = ta8.f0(str).toString();
        a = string;
        if (string == null || string.length() == 0 || (tJKeyValueStorage = g) == null) {
            return;
        }
        tJKeyValueStorage.setValue("pref_user_id", a);
    }

    public final void setUserIdRequest(String str, final TJSetUserIDListener tJSetUserIDListener) {
        Document documentBuildDocument;
        String nodeTrimValue;
        if (str != null && str.length() > 200) {
            setUserId(null);
            TapjoyLog.e(TJUserKt.USER_ID_MAX_LENGTH_ERROR);
            TapjoyUtil.runOnMainThread(new iq2(tJSetUserIDListener, 4));
            return;
        }
        if (str != null && str.length() != 0 && str.equals(a)) {
            TapjoyUtil.runOnMainThread(new Runnable() { // from class: hi8
                @Override // java.lang.Runnable
                public final void run() {
                    TJUser.c(tJSetUserIDListener);
                }
            });
            return;
        }
        if (str == null || str.length() == 0) {
            setUserId(null);
            TapjoyLog.e("Failed to set userID");
            TapjoyUtil.runOnMainThread(new gp(tJSetUserIDListener, 3));
            return;
        }
        setUserId(str);
        TapjoyLog.d("URL parameters: " + TapjoyConnectCore.getInstance().getBaseURLParams());
        TapjoyLog.i("Setting userID to ".concat(str));
        String hostURL = TapjoyConnectCore.getInstance().getHostURL();
        r2 r2Var = (r2) h.getValue();
        String strC = ni0.c(hostURL, TapjoyConstants.TJC_USER_ID_URL_PATH);
        Map<String, String> baseURLParams = TapjoyConnectCore.getInstance().getBaseURLParams();
        r2Var.getClass();
        String str2 = r2.a(strC, r2.a(baseURLParams), null, null, null).b;
        boolean z = false;
        if (str2 != null && (documentBuildDocument = TapjoyUtil.buildDocument(str2)) != null && (nodeTrimValue = TapjoyUtil.getNodeTrimValue(documentBuildDocument.getElementsByTagName("Success"))) != null && nodeTrimValue.equals(TJAdUnitConstants.String.TRUE)) {
            z = true;
        }
        if (!z && !ra8.v(hostURL, TapjoyConnectCore.getInstance().getHostURL(), true)) {
            setUserIdRequest(str, tJSetUserIDListener);
            return;
        }
        if (z) {
            TapjoyLog.i("Set userID is successful");
            TapjoyUtil.runOnMainThread(new ka(tJSetUserIDListener, 4));
        } else {
            setUserId(null);
            TapjoyLog.e("Failed to set userID");
            TapjoyUtil.runOnMainThread(new fp(tJSetUserIDListener, 1));
        }
    }

    public final void setUserLevel(int i) {
        TJKeyValueStorage tJKeyValueStorage;
        b = i;
        if (i >= -1 && (tJKeyValueStorage = g) != null) {
            tJKeyValueStorage.setValue("pref_user_level", Integer.valueOf(i));
        }
    }

    public final void setUserMaxLevel(int i) {
        TJKeyValueStorage tJKeyValueStorage;
        c = i;
        if (i >= -1 && (tJKeyValueStorage = g) != null) {
            tJKeyValueStorage.setValue("pref_max_level", Integer.valueOf(i));
        }
    }

    public final void setUserSegment(TJSegment tJSegment) {
        e = tJSegment;
        if (tJSegment == null) {
            return;
        }
        if (tJSegment == TJSegment.UNKNOWN) {
            TJKeyValueStorage tJKeyValueStorage = g;
            if (tJKeyValueStorage != null) {
                tJKeyValueStorage.remove("pref_user_segment");
                return;
            }
            return;
        }
        TJKeyValueStorage tJKeyValueStorage2 = g;
        if (tJKeyValueStorage2 != null) {
            tJKeyValueStorage2.setValue("pref_user_segment", Integer.valueOf(tJSegment.getValue()));
        }
    }

    public final void setUserTags(Set<String> set) {
        HashSet hashSet = new HashSet();
        if (set != null) {
            Iterator<T> it = set.iterator();
            while (it.hasNext()) {
                String string = ta8.f0((String) it.next()).toString();
                if (string.length() > 0 && string.length() <= 200) {
                    hashSet.add(string);
                    hashSet.size();
                }
            }
        }
        HashSet hashSet2 = f;
        hashSet2.clear();
        hashSet2.addAll(hashSet);
        a();
    }

    public static final r2 b() {
        return new r2();
    }

    public static final void a(TJSetUserIDListener tJSetUserIDListener) {
        if (tJSetUserIDListener != null) {
            tJSetUserIDListener.onSetUserIDFailure(TJUserKt.USER_ID_FAILED_ERROR);
        }
        if (tJSetUserIDListener != null) {
            tJSetUserIDListener.onSetUserIDFailure(-1, TJUserKt.USER_ID_FAILED_ERROR);
        }
    }
}
