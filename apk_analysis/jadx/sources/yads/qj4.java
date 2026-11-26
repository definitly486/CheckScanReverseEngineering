package yads;

import android.content.Context;
import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.dynamiclinks.DynamicLink;
import com.tapjoy.TJAdUnitConstants;
import com.tapjoy.TapjoyConstants;
import defpackage.dp7;
import defpackage.k57;
import defpackage.kx6;
import defpackage.ta8;
import defpackage.zo7;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class qj4 {
    public final pt3 a;
    public final wk b;
    public final v46 c;
    public final ue3 d;
    public final jo1 e;
    public final sn0 f;
    public final ik4 g;
    public final ek5 h;
    public final hy3 i;
    public final rb j;
    public final qe k;

    public qj4(Context context, q84 q84Var) {
        pt3 pt3Var = new pt3(context, q84Var);
        wk wkVar = new wk(context, q84Var, pt3Var, 8);
        v46 v46Var = new v46();
        ue3 ue3Var = new ue3();
        jo1 jo1Var = new jo1(q84Var);
        sn0 sn0Var = new sn0();
        ik4 ik4Var = new ik4();
        ek5 ek5Var = new ek5();
        hy3 hy3Var = new hy3();
        rb rbVar = new rb(q84Var);
        qe qeVar = new qe();
        this.a = pt3Var;
        this.b = wkVar;
        this.c = v46Var;
        this.d = ue3Var;
        this.e = jo1Var;
        this.f = sn0Var;
        this.g = ik4Var;
        this.h = ek5Var;
        this.i = hy3Var;
        this.j = rbVar;
        this.k = qeVar;
    }

    /* JADX WARN: Code duplicated, block: B:70:0x0167  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v15 */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v19 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v36 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v15 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v6, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r16v10 */
    /* JADX WARN: Type inference failed for: r16v11 */
    /* JADX WARN: Type inference failed for: r16v12 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Type inference failed for: r16v8 */
    /* JADX WARN: Type inference failed for: r16v9 */
    /* JADX WARN: Type inference failed for: r22v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v10 */
    /* JADX WARN: Type inference failed for: r22v11 */
    /* JADX WARN: Type inference failed for: r22v12 */
    /* JADX WARN: Type inference failed for: r22v13 */
    /* JADX WARN: Type inference failed for: r22v14 */
    /* JADX WARN: Type inference failed for: r22v15 */
    /* JADX WARN: Type inference failed for: r22v16 */
    /* JADX WARN: Type inference failed for: r22v17 */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Type inference failed for: r22v5 */
    /* JADX WARN: Type inference failed for: r22v6 */
    /* JADX WARN: Type inference failed for: r22v7 */
    /* JADX WARN: Type inference failed for: r22v8 */
    /* JADX WARN: Type inference failed for: r22v9 */
    /* JADX WARN: Type inference failed for: r28v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r28v1 */
    /* JADX WARN: Type inference failed for: r28v10 */
    /* JADX WARN: Type inference failed for: r28v15 */
    /* JADX WARN: Type inference failed for: r28v16 */
    /* JADX WARN: Type inference failed for: r28v17 */
    /* JADX WARN: Type inference failed for: r28v18 */
    /* JADX WARN: Type inference failed for: r28v19 */
    /* JADX WARN: Type inference failed for: r28v2 */
    /* JADX WARN: Type inference failed for: r28v20 */
    /* JADX WARN: Type inference failed for: r28v21 */
    /* JADX WARN: Type inference failed for: r28v22 */
    /* JADX WARN: Type inference failed for: r28v23 */
    /* JADX WARN: Type inference failed for: r28v24 */
    /* JADX WARN: Type inference failed for: r28v25 */
    /* JADX WARN: Type inference failed for: r28v26 */
    /* JADX WARN: Type inference failed for: r28v3 */
    /* JADX WARN: Type inference failed for: r28v4 */
    /* JADX WARN: Type inference failed for: r28v5 */
    /* JADX WARN: Type inference failed for: r28v6 */
    /* JADX WARN: Type inference failed for: r28v7 */
    /* JADX WARN: Type inference failed for: r28v8 */
    /* JADX WARN: Type inference failed for: r28v9 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v12, types: [java.util.ArrayList] */
    public final vg4 a(String str, yo yoVar) throws JSONException, rg4 {
        String str2;
        String str3;
        Iterator<String> it;
        defpackage.kx2 kx2Var;
        List list;
        List list2;
        ?? r22;
        j5 j5Var;
        ?? r28;
        ?? r29;
        ?? r210;
        ?? r16;
        ?? r12;
        ?? r211;
        ?? r23;
        ?? r17;
        ?? arrayList;
        JSONArray jSONArray;
        int i;
        v6 v6Var;
        w6 w6Var;
        fm5 fm5Var;
        hm5 hm5Var;
        f95 f95Var;
        String str4;
        String str5;
        String str6;
        String str7;
        qb qbVar;
        String str8;
        JSONObject jSONObjectOptJSONObject;
        ql5 ql5Var;
        yoVar = yoVar;
        JSONObject jSONObject = new JSONObject(str).getJSONObject("native");
        String str9 = "ads";
        String str10 = "Native Ad json has not required attributes";
        if (!rj4.a(jSONObject, "ads")) {
            defpackage.qg.g("Native Ad json has not required attributes");
            return null;
        }
        Iterator<String> itKeys = jSONObject.keys();
        defpackage.kx2 kx2Var2 = defpackage.kx2.b;
        List list3 = kx2Var2;
        List listA = list3;
        ?? arrayList2 = listA;
        ?? arrayList3 = arrayList2;
        ?? r18 = arrayList3;
        j5 j5Var2 = null;
        String str11 = null;
        uj5 uj5Var = null;
        n6 n6Var = null;
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (next != null) {
                it = itKeys;
                String str12 = "assets";
                kx2Var = kx2Var2;
                String str13 = "showNotices";
                list = list3;
                String str14 = "renderTrackingUrls";
                list2 = listA;
                switch (next.hashCode()) {
                    case -1777460514:
                        str2 = str9;
                        str3 = str10;
                        ?? r24 = arrayList2;
                        j5Var = j5Var2;
                        ?? r212 = arrayList3;
                        r22 = r24;
                        r28 = r212;
                        if (next.equals("showNotices")) {
                            ArrayList arrayList4 = new ArrayList();
                            JSONArray jSONArray2 = jSONObject.getJSONArray("showNotices");
                            int length = jSONArray2.length();
                            for (int i2 = 0; i2 < length; i2++) {
                                arrayList4.add(a(jSONArray2.getJSONObject(i2)));
                            }
                            r17 = arrayList4;
                            r23 = r24;
                            r211 = r212;
                        }
                        itKeys = it;
                        kx2Var2 = kx2Var;
                        r12 = r23;
                        list3 = list;
                        listA = list2;
                        r16 = r17;
                        r210 = r211;
                        j5Var2 = j5Var;
                        arrayList2 = r12;
                        r18 = r16;
                        r29 = r210;
                        str9 = str2;
                        arrayList3 = r29;
                        str10 = str3;
                        break;
                    case -1422646231:
                        str2 = str9;
                        str3 = str10;
                        ?? r25 = arrayList2;
                        j5Var = j5Var2;
                        ?? r213 = arrayList3;
                        r22 = r25;
                        r28 = r213;
                        if (next.equals("ad_pod")) {
                            JSONObject jSONObject2 = jSONObject.getJSONObject("ad_pod");
                            JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray(FirebaseAnalytics.Param.ITEMS);
                            if (jSONArrayOptJSONArray != null) {
                                int length2 = jSONArrayOptJSONArray.length();
                                arrayList = new ArrayList(length2);
                                int i3 = 0;
                                while (i3 < length2) {
                                    JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i3);
                                    long jOptLong = jSONObjectOptJSONObject2.optLong(TypedValues.TransitionType.S_DURATION);
                                    JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("skip");
                                    if (jSONObjectOptJSONObject3 != null) {
                                        String strOptString = jSONObjectOptJSONObject3.optString("transition_strategy");
                                        fm5[] fm5VarArrValues = fm5.values();
                                        int length3 = fm5VarArrValues.length;
                                        int i4 = 0;
                                        while (true) {
                                            if (i4 < length3) {
                                                fm5Var = fm5VarArrValues[i4];
                                                jSONArray = jSONArrayOptJSONArray;
                                                if (!defpackage.aa4.e(fm5Var.b, strOptString)) {
                                                    i4++;
                                                    jSONArrayOptJSONArray = jSONArray;
                                                }
                                            } else {
                                                jSONArray = jSONArrayOptJSONArray;
                                                fm5Var = null;
                                            }
                                        }
                                        String strOptString2 = jSONObjectOptJSONObject3.optString("visibility");
                                        hm5[] hm5VarArrValues = hm5.values();
                                        int length4 = hm5VarArrValues.length;
                                        int i5 = 0;
                                        while (true) {
                                            if (i5 < length4) {
                                                hm5Var = hm5VarArrValues[i5];
                                                i = length2;
                                                if (!defpackage.aa4.e(hm5Var.b, strOptString2)) {
                                                    i5++;
                                                    length2 = i;
                                                }
                                            } else {
                                                i = length2;
                                                hm5Var = null;
                                            }
                                        }
                                        v6Var = new v6(fm5Var, hm5Var, jSONObjectOptJSONObject3.optLong("delay"));
                                    } else {
                                        jSONArray = jSONArrayOptJSONArray;
                                        i = length2;
                                        v6Var = null;
                                    }
                                    String strOptString3 = jSONObjectOptJSONObject2.optString("transition_policy");
                                    w6[] w6VarArrValues = w6.values();
                                    int length5 = w6VarArrValues.length;
                                    int i6 = 0;
                                    while (true) {
                                        if (i6 >= length5) {
                                            w6Var = null;
                                        }
                                        w6Var = w6VarArrValues[i6];
                                        if (defpackage.aa4.e(w6Var.b, strOptString3)) {
                                        }
                                        i6++;
                                        break;
                                        break;
                                    }
                                    arrayList.add(new u6(jOptLong, v6Var, w6Var));
                                    i3++;
                                    jSONArrayOptJSONArray = jSONArray;
                                    length2 = i;
                                }
                            } else {
                                arrayList = kx2Var;
                            }
                            int iOptInt = jSONObject2.optInt("closable_ad_position");
                            int size = arrayList.size() - 1;
                            if (size < 0) {
                                size = 0;
                            }
                            n6Var = new n6(arrayList, iOptInt, jSONObject2.optInt("reward_ad_position", size));
                            r17 = r18;
                            r23 = r25;
                            r211 = r213;
                        }
                        itKeys = it;
                        kx2Var2 = kx2Var;
                        r12 = r23;
                        list3 = list;
                        listA = list2;
                        r16 = r17;
                        r210 = r211;
                        j5Var2 = j5Var;
                        arrayList2 = r12;
                        r18 = r16;
                        r29 = r210;
                        str9 = str2;
                        arrayList3 = r29;
                        str10 = str3;
                        break;
                    case -1408207997:
                        str2 = str9;
                        str3 = str10;
                        ?? r26 = arrayList2;
                        j5Var = j5Var2;
                        ?? r214 = arrayList3;
                        r22 = r26;
                        r28 = r214;
                        if (next.equals("assets")) {
                            listA = this.b.a(jSONObject, yoVar);
                            itKeys = it;
                            kx2Var2 = kx2Var;
                            r12 = r26;
                            list3 = list;
                            r16 = r18;
                            r210 = r214;
                        }
                        j5Var2 = j5Var;
                        arrayList2 = r12;
                        r18 = r16;
                        r29 = r210;
                        str9 = str2;
                        arrayList3 = r29;
                        str10 = str3;
                        break;
                    case -113850029:
                        JSONObject jSONObject3 = jSONObject;
                        str2 = str9;
                        str3 = str10;
                        ?? r27 = arrayList2;
                        j5Var = j5Var2;
                        ?? r215 = arrayList3;
                        if (!next.equals("impressionData")) {
                            jSONObject = jSONObject3;
                            r22 = r27;
                            r28 = r215;
                        } else {
                            this.d.getClass();
                            try {
                                defpackage.xb4 xb4Var = zq3.a;
                                jSONObject = jSONObject3;
                                try {
                                    String string = jSONObject.getString("impressionData");
                                    if (string.length() == 0 || "null".equals(string)) {
                                        throw new JSONException("Json has not required attributes");
                                    }
                                    j5Var2 = new j5(string);
                                } catch (Exception e) {
                                    e = e;
                                    Log.e("ImpressionDataParser", String.valueOf(e.getMessage()));
                                    j5Var2 = null;
                                }
                            } catch (Exception e2) {
                                e = e2;
                                jSONObject = jSONObject3;
                            }
                            itKeys = it;
                            kx2Var2 = kx2Var;
                            arrayList2 = r27;
                            list3 = list;
                            listA = list2;
                            r18 = r18;
                            r29 = r215;
                        }
                        str9 = str2;
                        arrayList3 = r29;
                        str10 = str3;
                        break;
                    case 96432:
                        if (!next.equals(str9)) {
                            str2 = str9;
                            str3 = str10;
                            r22 = arrayList2;
                            j5Var = j5Var2;
                            r28 = arrayList3;
                        } else {
                            ?? r216 = arrayList2;
                            ArrayList arrayList5 = new ArrayList();
                            j5 j5Var3 = j5Var2;
                            JSONArray jSONArray3 = jSONObject.getJSONArray(str9);
                            String str15 = str9;
                            int length6 = jSONArray3.length();
                            ?? r217 = arrayList3;
                            int i7 = 0;
                            while (i7 < length6) {
                                int i8 = length6;
                                JSONObject jSONObject4 = jSONArray3.getJSONObject(i7);
                                JSONArray jSONArray4 = jSONArray3;
                                int i9 = i7;
                                if (!rj4.a(jSONObject4, "adType", str12, DynamicLink.Builder.KEY_LINK)) {
                                    defpackage.qg.g(str10);
                                    return null;
                                }
                                this.g.getClass();
                                String strOptString4 = jSONObject4.optString("adType");
                                if (strOptString4 == null || strOptString4.length() == 0 || strOptString4.equals("null")) {
                                    defpackage.qg.g(str10);
                                    return null;
                                }
                                f95[] f95VarArrValues = f95.values();
                                String str16 = str12;
                                int length7 = f95VarArrValues.length;
                                int i10 = 0;
                                while (true) {
                                    if (i10 < length7) {
                                        int i11 = length7;
                                        f95Var = f95VarArrValues[i10];
                                        int i12 = i10;
                                        if (!defpackage.aa4.e(f95Var.b, strOptString4)) {
                                            i10 = i12 + 1;
                                            length7 = i11;
                                        }
                                    } else {
                                        f95Var = null;
                                    }
                                }
                                if (f95Var == null) {
                                    defpackage.qg.g(str10);
                                    return null;
                                }
                                ArrayList arrayListA = this.b.a(jSONObject4, yoVar);
                                HashSet hashSet = new HashSet();
                                JSONObject jSONObject5 = jSONObject;
                                HashSet hashSet2 = new HashSet();
                                Iterator<String> itKeys2 = jSONObject4.keys();
                                String strOptString5 = null;
                                String strOptString6 = null;
                                String strOptString7 = null;
                                String strOptString8 = null;
                                ot3 ot3VarA = null;
                                j5 j5Var4 = null;
                                LinkedHashMap linkedHashMap = null;
                                ArrayList arrayList6 = arrayList5;
                                qb qbVar2 = null;
                                while (itKeys2.hasNext()) {
                                    String next2 = itKeys2.next();
                                    if (next2 != null) {
                                        qbVar = qbVar2;
                                        switch (next2.hashCode()) {
                                            case -1777460514:
                                                str7 = str14;
                                                if (next2.equals(str13)) {
                                                    ArrayList arrayList7 = new ArrayList();
                                                    JSONArray jSONArray5 = jSONObject4.getJSONArray(str13);
                                                    int length8 = jSONArray5.length();
                                                    jSONObject4 = jSONObject4;
                                                    int i13 = 0;
                                                    while (i13 < length8) {
                                                        arrayList7.add(a(jSONArray5.getJSONObject(i13)));
                                                        i13++;
                                                        str10 = str10;
                                                    }
                                                    str6 = str10;
                                                    hashSet2.addAll(arrayList7);
                                                } else {
                                                    str6 = str10;
                                                }
                                                break;
                                            case -974297739:
                                                str8 = str13;
                                                str7 = str14;
                                                if (!next2.equals("additionalInfo")) {
                                                    str13 = str8;
                                                    str6 = str10;
                                                    break;
                                                } else {
                                                    rb rbVar = this.j;
                                                    rbVar.getClass();
                                                    try {
                                                        JSONObject jSONObject6 = jSONObject4.getJSONObject("additionalInfo");
                                                        String strA = br3.a(TapjoyConstants.TJC_PLACEMENT_OFFER_ID, jSONObject6);
                                                        if (f95Var == f95.f && strA == null) {
                                                            throw new rg4(str10);
                                                        }
                                                        String strA2 = br3.a("additionalText", jSONObject6);
                                                        String strA3 = br3.a("performanceOpeningUrl", jSONObject6);
                                                        String str17 = (strA3 == null || strA3.length() <= 0) ? null : strA3;
                                                        defpackage.xb4 xb4Var2 = zq3.a;
                                                        String strOptString9 = jSONObject6.has("attributes") ? jSONObject6.optString("attributes") : null;
                                                        JSONObject jSONObjectA = strOptString9 != null ? zq3.a(strOptString9) : null;
                                                        str14 = str7;
                                                        str13 = str8;
                                                        qbVar2 = new qb(jSONObjectA != null ? br3.a("bannerId", jSONObjectA) : null, jSONObjectA != null ? br3.a("campaignId", jSONObjectA) : null, jSONObjectA != null ? br3.a("placeId", jSONObjectA) : null, strA, strA2, str17);
                                                    } catch (Exception e3) {
                                                        rbVar.a.reportError("Failed to create AdInfo", e3);
                                                        qbVar2 = null;
                                                        str14 = str7;
                                                        str13 = str8;
                                                    }
                                                }
                                                break;
                                            case -113850029:
                                                str8 = str13;
                                                str7 = str14;
                                                if (next2.equals("impressionData")) {
                                                    this.d.getClass();
                                                    try {
                                                        defpackage.xb4 xb4Var3 = zq3.a;
                                                        String string2 = jSONObject4.getString("impressionData");
                                                        if (string2.length() == 0 || "null".equals(string2)) {
                                                            throw new JSONException("Json has not required attributes");
                                                        }
                                                        j5Var4 = new j5(string2);
                                                    } catch (Exception e4) {
                                                        Log.e("ImpressionDataParser", String.valueOf(e4.getMessage()));
                                                        j5Var4 = null;
                                                    }
                                                    qbVar2 = qbVar;
                                                    str14 = str7;
                                                    str13 = str8;
                                                } else {
                                                    str13 = str8;
                                                    str6 = str10;
                                                }
                                                break;
                                            case 3355:
                                                str8 = str13;
                                                str7 = str14;
                                                if (next2.equals(TtmlNode.ATTR_ID)) {
                                                    strOptString7 = jSONObject4.optString(TtmlNode.ATTR_ID, "");
                                                    if (strOptString7.length() <= 0) {
                                                        strOptString7 = null;
                                                    }
                                                    qbVar2 = qbVar;
                                                    str14 = str7;
                                                    str13 = str8;
                                                } else {
                                                    str13 = str8;
                                                    str6 = str10;
                                                }
                                                break;
                                            case 98494:
                                                str8 = str13;
                                                str7 = str14;
                                                if (next2.equals(CmcdConfiguration.KEY_CONTENT_ID)) {
                                                    strOptString6 = jSONObject4.optString(CmcdConfiguration.KEY_CONTENT_ID, "");
                                                    if (strOptString6.length() <= 0) {
                                                        strOptString6 = null;
                                                    }
                                                    qbVar2 = qbVar;
                                                    str14 = str7;
                                                    str13 = str8;
                                                } else {
                                                    str13 = str8;
                                                    str6 = str10;
                                                }
                                                break;
                                            case 3062218:
                                                str8 = str13;
                                                str7 = str14;
                                                if (next2.equals("crid")) {
                                                    strOptString5 = jSONObject4.optString("crid", "");
                                                    if (strOptString5.length() <= 0) {
                                                        strOptString5 = null;
                                                    }
                                                    qbVar2 = qbVar;
                                                    str14 = str7;
                                                    str13 = str8;
                                                } else {
                                                    str13 = str8;
                                                    str6 = str10;
                                                }
                                                break;
                                            case 3237038:
                                                str8 = str13;
                                                str7 = str14;
                                                if (next2.equals("info")) {
                                                    strOptString8 = jSONObject4.optString(next2, "");
                                                    if (strOptString8.length() <= 0) {
                                                        strOptString8 = null;
                                                    }
                                                    qbVar2 = qbVar;
                                                    str14 = str7;
                                                    str13 = str8;
                                                } else {
                                                    str13 = str8;
                                                    str6 = str10;
                                                }
                                                break;
                                            case 3321850:
                                                str8 = str13;
                                                str7 = str14;
                                                if (next2.equals(DynamicLink.Builder.KEY_LINK)) {
                                                    ot3VarA = this.a.a(jSONObject4.getJSONObject(next2), yoVar);
                                                    qbVar2 = qbVar;
                                                    str14 = str7;
                                                    str13 = str8;
                                                } else {
                                                    str13 = str8;
                                                    str6 = str10;
                                                }
                                                break;
                                            case 458247106:
                                                str8 = str13;
                                                str7 = str14;
                                                if (next2.equals("renderTrackingUrl")) {
                                                    this.c.getClass();
                                                    hashSet.add(v46.a(next2, jSONObject4));
                                                }
                                                str13 = str8;
                                                str6 = str10;
                                                break;
                                            case 635399221:
                                                str8 = str13;
                                                str7 = str14;
                                                if (next2.equals("showNotice")) {
                                                    hashSet2.add(a(jSONObject4.getJSONObject(next2)));
                                                }
                                                str13 = str8;
                                                str6 = str10;
                                                break;
                                            case 833620496:
                                                str8 = str13;
                                                str7 = str14;
                                                if (next2.equals("analyticsParameters") && (jSONObjectOptJSONObject = jSONObject4.optJSONObject(next2)) != null) {
                                                    this.k.getClass();
                                                    zo7 zo7VarF = dp7.f(jSONObjectOptJSONObject.keys());
                                                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                                                    for (Iterator it2 = ((defpackage.lx1) zo7VarF).iterator(); it2.hasNext(); it2 = it2) {
                                                        Object next3 = it2.next();
                                                        linkedHashMap2.put(next3, jSONObjectOptJSONObject.get((String) next3));
                                                    }
                                                    linkedHashMap = linkedHashMap2;
                                                    qbVar2 = qbVar;
                                                    str14 = str7;
                                                    str13 = str8;
                                                } else {
                                                    str13 = str8;
                                                    str6 = str10;
                                                }
                                                break;
                                            case 1320758513:
                                                if (next2.equals(str14)) {
                                                    ArrayList arrayList8 = new ArrayList();
                                                    JSONArray jSONArray6 = jSONObject4.getJSONArray(str14);
                                                    str7 = str14;
                                                    str8 = str13;
                                                    int i14 = 0;
                                                    for (int length9 = jSONArray6.length(); i14 < length9; length9 = length9) {
                                                        arrayList8.add(jSONArray6.getString(i14));
                                                        i14++;
                                                    }
                                                    hashSet.addAll(arrayList8);
                                                    str13 = str8;
                                                    str6 = str10;
                                                } else {
                                                    jSONObject4 = jSONObject4;
                                                    str6 = str10;
                                                    str7 = str14;
                                                }
                                                break;
                                            default:
                                                jSONObject4 = jSONObject4;
                                                str6 = str10;
                                                str7 = str14;
                                                break;
                                        }
                                    } else {
                                        jSONObject4 = jSONObject4;
                                        str6 = str10;
                                        str7 = str14;
                                        qbVar = qbVar2;
                                    }
                                    jSONObject4 = jSONObject4;
                                    qbVar2 = qbVar;
                                    str14 = str7;
                                    str10 = str6;
                                }
                                String str18 = str10;
                                String str19 = str14;
                                qb qbVar3 = qbVar2;
                                sd4 sd4Var = new sd4(f95Var, arrayListA, strOptString7, strOptString8, qbVar3 != null ? qbVar3.e : null, ot3VarA, j5Var4, defpackage.qn1.t0(hashSet), defpackage.qn1.t0(hashSet2), new s70((qbVar3 == null || (str5 = qbVar3.a) == null) ? strOptString5 : str5, (qbVar3 == null || (str4 = qbVar3.b) == null) ? strOptString6 : str4, qbVar3 != null ? qbVar3.c : null, qbVar3 != null ? qbVar3.d : null, qbVar3 != null ? qbVar3.f : null), new ai4(linkedHashMap));
                                if (arrayListA.isEmpty() || ot3VarA == null) {
                                    defpackage.qg.g(str18);
                                    return null;
                                }
                                arrayList6.add(sd4Var);
                                i7 = i9 + 1;
                                arrayList5 = arrayList6;
                                length6 = i8;
                                jSONArray3 = jSONArray4;
                                str12 = str16;
                                jSONObject = jSONObject5;
                                str14 = str19;
                                str10 = str18;
                            }
                            list3 = arrayList5;
                            itKeys = it;
                            kx2Var2 = kx2Var;
                            arrayList2 = r216;
                            listA = list2;
                            j5Var2 = j5Var3;
                            str9 = str15;
                            arrayList3 = r217;
                            jSONObject = jSONObject;
                        }
                        break;
                    case 116643:
                        if (!next.equals("ver")) {
                            str2 = str9;
                            str3 = str10;
                            r22 = arrayList2;
                            j5Var = j5Var2;
                            r28 = arrayList3;
                        } else {
                            String strOptString10 = jSONObject.optString(next);
                            if (strOptString10 == null || strOptString10.length() == 0 || strOptString10.equals("null")) {
                                defpackage.qg.g(str10);
                                return null;
                            }
                            str11 = strOptString10;
                            itKeys = it;
                            kx2Var2 = kx2Var;
                            list3 = list;
                            listA = list2;
                        }
                        break;
                    case 1320758513:
                        if (next.equals("renderTrackingUrls")) {
                            arrayList2 = new ArrayList();
                            JSONArray jSONArray7 = jSONObject.getJSONArray("renderTrackingUrls");
                            int length10 = jSONArray7.length();
                            for (int i15 = 0; i15 < length10; i15++) {
                                arrayList2.add(jSONArray7.getString(i15));
                            }
                            itKeys = it;
                            kx2Var2 = kx2Var;
                            list3 = list;
                            listA = list2;
                        } else {
                            str2 = str9;
                            str3 = str10;
                            r22 = arrayList2;
                            j5Var = j5Var2;
                            r28 = arrayList3;
                        }
                        break;
                    case 1434631203:
                        if (!next.equals("settings")) {
                            str2 = str9;
                            str3 = str10;
                            r22 = arrayList2;
                            j5Var = j5Var2;
                            r28 = arrayList3;
                        } else {
                            JSONObject jSONObject7 = jSONObject.getJSONObject("settings");
                            Iterator<String> itKeys3 = jSONObject7.keys();
                            JSONObject jSONObject8 = null;
                            String str20 = null;
                            Long lValueOf = null;
                            boolean z = false;
                            boolean zOptBoolean = false;
                            while (itKeys3.hasNext()) {
                                String next4 = itKeys3.next();
                                if (next4 != null) {
                                    switch (next4.hashCode()) {
                                        case -975961388:
                                            if (!next4.equals("templateType")) {
                                                continue;
                                            } else {
                                                String strOptString11 = jSONObject7.optString(next4);
                                                if (strOptString11 == null || strOptString11.length() == 0 || strOptString11.equals("null")) {
                                                    defpackage.qg.g(str10);
                                                    return null;
                                                }
                                                str20 = strOptString11;
                                            }
                                            break;
                                        case 370967731:
                                            if (next4.equals("highlightingEnabled")) {
                                                z = jSONObject7.getBoolean(next4);
                                            }
                                            break;
                                        case 1352271078:
                                            if (next4.equals("multiBannerAutoScrollInterval")) {
                                                lValueOf = Long.valueOf(jSONObject7.getLong(next4));
                                            }
                                            break;
                                        case 1971060391:
                                            if (next4.equals("isLoopingVideo")) {
                                                zOptBoolean = jSONObject7.optBoolean(next4);
                                            }
                                            break;
                                        case 2028941137:
                                            if (next4.equals("mediaAssetImageFallback")) {
                                                jSONObject8 = jSONObject7.getJSONObject(next4);
                                            }
                                            break;
                                    }
                                }
                            }
                            if (jSONObject8 != null) {
                                this.i.getClass();
                                if (jSONObject8.has(TJAdUnitConstants.String.WIDTH) && jSONObject8.has(TJAdUnitConstants.String.HEIGHT)) {
                                    ql5Var = new ql5(jSONObject8.getInt(TJAdUnitConstants.String.WIDTH), jSONObject8.getInt(TJAdUnitConstants.String.HEIGHT));
                                } else {
                                    ql5Var = null;
                                }
                            } else {
                                ql5Var = null;
                            }
                            itKeys = it;
                            kx2Var2 = kx2Var;
                            list3 = list;
                            listA = list2;
                            uj5Var = new uj5(str20, lValueOf, z, zOptBoolean, ql5Var);
                        }
                        break;
                    case 1557034613:
                        if (next.equals("designs")) {
                            boolean z2 = yoVar.b;
                            arrayList3 = new ArrayList();
                            JSONArray jSONArray8 = jSONObject.getJSONArray("designs");
                            int length11 = jSONArray8.length();
                            for (int i16 = 0; i16 < length11; i16++) {
                                mn0 mn0VarA = this.f.a(jSONArray8.getJSONObject(i16));
                                fo1 fo1VarA = mn0VarA != null ? this.e.a(mn0VarA, z2) : null;
                                if (fo1VarA != null) {
                                    arrayList3.add(fo1VarA);
                                }
                            }
                            itKeys = it;
                            kx2Var2 = kx2Var;
                            list3 = list;
                            listA = list2;
                        } else {
                            str2 = str9;
                            str3 = str10;
                            r22 = arrayList2;
                            j5Var = j5Var2;
                            r28 = arrayList3;
                        }
                        break;
                    default:
                        str2 = str9;
                        str3 = str10;
                        r22 = arrayList2;
                        j5Var = j5Var2;
                        r28 = arrayList3;
                        break;
                }
            } else {
                str2 = str9;
                str3 = str10;
                it = itKeys;
                kx2Var = kx2Var2;
                list = list3;
                list2 = listA;
                r22 = arrayList2;
                j5Var = j5Var2;
                r28 = arrayList3;
            }
            r17 = r18;
            r23 = r22;
            r211 = r28;
            itKeys = it;
            kx2Var2 = kx2Var;
            r12 = r23;
            list3 = list;
            listA = list2;
            r16 = r17;
            r210 = r211;
            j5Var2 = j5Var;
            arrayList2 = r12;
            r18 = r16;
            r29 = r210;
            str9 = str2;
            arrayList3 = r29;
            str10 = str3;
        }
        String str21 = str10;
        List list4 = list3;
        List list5 = listA;
        ?? r218 = arrayList2;
        j5 j5Var5 = j5Var2;
        ?? r219 = arrayList3;
        if (list4.isEmpty()) {
            defpackage.qg.g(str21);
            return null;
        }
        Map mapSingletonMap = Collections.singletonMap(NotificationCompat.CATEGORY_STATUS, f75.SUCCESS);
        mapSingletonMap.getClass();
        return new vg4(list4, list5, r218, j5Var5, mapSingletonMap, r219, r18, str11, uj5Var, n6Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ck5 a(JSONObject jSONObject) throws JSONException, rg4 {
        Object aVar;
        Object aVar2;
        Object aVar3;
        Object obj = null;
        if (rj4.a(jSONObject, "delay", "url")) {
            long j = jSONObject.getLong("delay");
            this.c.getClass();
            String strA = v46.a("url", jSONObject);
            try {
                aVar = Double.valueOf(jSONObject.optInt("visibilityPercent", 0));
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            if (aVar instanceof k57.a) {
                aVar = null;
            }
            Double d = (Double) aVar;
            int iC = (int) kx6.c(d != null ? d.doubleValue() : 0.0d, 0.0d, 100.0d);
            try {
                aVar2 = jSONObject.getString(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
            } catch (Throwable th2) {
                aVar2 = new k57.a(th2);
            }
            if (aVar2 instanceof k57.a) {
                aVar2 = null;
            }
            String str = (String) aVar2;
            if (str != null) {
                try {
                    String upperCase = str.toUpperCase(Locale.ROOT);
                    upperCase.getClass();
                    aVar3 = dk5.valueOf(upperCase);
                } catch (Throwable th3) {
                    aVar3 = new k57.a(th3);
                }
                obj = (dk5) (aVar3 instanceof k57.a ? null : aVar3);
            }
            if (obj == null) {
                this.h.getClass();
                if (ta8.D(strA, "/rtbcount/", false)) {
                    obj = dk5.DSP;
                } else if (ta8.D(strA, "/count/", false)) {
                    obj = dk5.AD;
                } else {
                    obj = dk5.UNDEFINED;
                }
            }
            return new ck5(iC, j, strA, obj);
        }
        defpackage.qg.g("Native Ad json has not required attributes");
        return null;
    }
}
