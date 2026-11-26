package com.my.target;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Xml;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.my.tracker.ads.AdFormat;
import com.tapjoy.TJAdUnitConstants;
import com.tapjoy.TJVerifierKt;
import defpackage.aga;
import defpackage.bj;
import defpackage.et9;
import defpackage.fg;
import defpackage.fn9;
import defpackage.fq9;
import defpackage.g1a;
import defpackage.h14;
import defpackage.in9;
import defpackage.j8a;
import defpackage.jia;
import defpackage.k5a;
import defpackage.k8a;
import defpackage.kha;
import defpackage.kia;
import defpackage.ks9;
import defpackage.l6a;
import defpackage.l8a;
import defpackage.lia;
import defpackage.m2a;
import defpackage.n4a;
import defpackage.p46;
import defpackage.pp9;
import defpackage.qn9;
import defpackage.t2a;
import defpackage.vha;
import defpackage.vy9;
import defpackage.wv9;
import defpackage.xda;
import defpackage.y14;
import defpackage.yda;
import defpackage.z2a;
import defpackage.z8a;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes4.dex */
public final class v2 extends s2 {
    public String a;

    /* JADX WARN: Code duplicated, block: B:142:0x02bf  */
    /* JADX WARN: Code duplicated, block: B:144:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:146:0x02d0  */
    /* JADX WARN: Code duplicated, block: B:300:0x05db  */
    /* JADX WARN: Code duplicated, block: B:41:0x0104  */
    /* JADX WARN: Code duplicated, block: B:42:0x010b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:43:0x010d  */
    /* JADX WARN: Code duplicated, block: B:478:0x0a6d A[LOOP:14: B:465:0x0a11->B:478:0x0a6d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:50:0x0133  */
    /* JADX WARN: Code duplicated, block: B:53:0x013a  */
    /* JADX WARN: Code duplicated, block: B:560:0x0a6a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x0169  */
    /* JADX WARN: Code duplicated, block: B:70:0x016d  */
    /* JADX WARN: Code duplicated, block: B:88:0x01b8  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v11, types: [jia] */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v9 */
    public final kia d(String str, lia liaVar, vha vhaVar, z2a z2aVar, t0.a aVar, t0 t0Var, ArrayList arrayList, j8a j8aVar) {
        kia kiaVar;
        Object obj;
        float f;
        ?? r4;
        vy9 vy9Var;
        Object obj2;
        String str2;
        String str3;
        JSONObject jSONObject;
        String str4;
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        JSONArray jSONArrayOptJSONArray;
        JSONArray jSONArray;
        int i;
        kia kiaVar2;
        yda ydaVar;
        lia liaVar2;
        JSONObject jSONObjectOptJSONObject3;
        qn9 qn9Var;
        JSONObject jSONObjectOptJSONObject4;
        JSONArray jSONArrayOptJSONArray2;
        fq9 fq9Var;
        int i2;
        et9 et9Var;
        int i3;
        JSONObject jSONObjectOptJSONObject5;
        kia kiaVar3;
        int iOptInt;
        kia kiaVar4 = (kia) vhaVar;
        String strTrim = str.trim();
        int i4 = 1;
        int i5 = 2;
        et9 et9Var2 = null;
        if (strTrim.startsWith("<VAST") || strTrim.startsWith("<?xml")) {
            float f2 = 0.0f;
            String str5 = "ctaClick";
            String str6 = "click";
            l8a l8aVar = new l8a(z2aVar, liaVar);
            ArrayList arrayList2 = l8aVar.g;
            ArrayList arrayList3 = l8aVar.f;
            ArrayList arrayList4 = l8aVar.c;
            lia liaVar3 = l8aVar.b;
            XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
            try {
                xmlPullParserNewPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
                xmlPullParserNewPullParser.setInput(new StringReader(str));
                ArrayList arrayList5 = liaVar3.e != null ? new ArrayList(liaVar3.e) : null;
                n4a n4aVar = liaVar3.d;
                if (arrayList5 != null) {
                    arrayList4.addAll(arrayList5);
                }
                ArrayList arrayList6 = liaVar3.f;
                if (arrayList6 != null) {
                    arrayList3.addAll(arrayList6);
                }
                int i6 = l8a.i(xmlPullParserNewPullParser);
                while (i6 != i4 && i6 != Integer.MIN_VALUE) {
                    if (i6 == i5 && "VAST".equalsIgnoreCase(xmlPullParserNewPullParser.getName())) {
                        while (l8a.l(xmlPullParserNewPullParser) == i5) {
                            if (l8a.i(xmlPullParserNewPullParser) == i5 && "Ad".equals(xmlPullParserNewPullParser.getName())) {
                                ArrayList arrayList7 = l8aVar.e;
                                ArrayList arrayList8 = l8aVar.d;
                                kia kiaVar5 = kiaVar4;
                                String str7 = "Impression";
                                while (true) {
                                    str2 = str5;
                                    if (l8a.l(xmlPullParserNewPullParser) != 2) {
                                        break;
                                    }
                                    if (l8a.i(xmlPullParserNewPullParser) != 2) {
                                        str5 = str2;
                                    } else {
                                        String name = xmlPullParserNewPullParser.getName();
                                        if ("Wrapper".equals(name)) {
                                            l8aVar.h = true;
                                            y14.r(null, "VastParser: VAST file contains wrapped ad information");
                                            int i7 = liaVar3.k;
                                            if (i7 < 5) {
                                                String strM = null;
                                                while (true) {
                                                    str3 = str6;
                                                    if (l8a.l(xmlPullParserNewPullParser) != 2) {
                                                        break;
                                                    }
                                                    if (l8a.i(xmlPullParserNewPullParser) == 2) {
                                                        String name2 = xmlPullParserNewPullParser.getName();
                                                        if (str7.equals(name2)) {
                                                            l8aVar.j(xmlPullParserNewPullParser);
                                                        } else if ("Creatives".equals(name2)) {
                                                            l8aVar.g(xmlPullParserNewPullParser);
                                                        } else if ("Extensions".equals(name2)) {
                                                            l8aVar.h(xmlPullParserNewPullParser);
                                                        } else if ("VASTAdTagURI".equals(name2)) {
                                                            strM = l8a.m(xmlPullParserNewPullParser);
                                                        } else if ("AdVerifications".equals(name2)) {
                                                            l8aVar.f(xmlPullParserNewPullParser);
                                                        } else {
                                                            l8a.n(xmlPullParserNewPullParser);
                                                        }
                                                    }
                                                    str6 = str3;
                                                }
                                                if (strM != null) {
                                                    String str8 = liaVar3.g;
                                                    String str9 = liaVar3.h;
                                                    k5a k5aVar = liaVar3.i;
                                                    lia liaVar4 = new lia(strM, null);
                                                    l8aVar.l = liaVar4;
                                                    liaVar4.k = i7 + 1;
                                                    liaVar4.e = arrayList4;
                                                    liaVar4.G = l8aVar.n;
                                                    liaVar4.g = TextUtils.isEmpty(str8) ? l8aVar.i : str8;
                                                    l8aVar.l.h = TextUtils.isEmpty(str9) ? l8aVar.j : str9;
                                                    lia liaVar5 = l8aVar.l;
                                                    liaVar5.i = k5aVar == null ? l8aVar.k : k5aVar;
                                                    liaVar5.f = arrayList3;
                                                    liaVar5.u = liaVar3.u;
                                                    liaVar5.v = liaVar3.v;
                                                    liaVar5.w = liaVar3.w;
                                                    liaVar5.x = liaVar3.x;
                                                    liaVar5.y = liaVar3.y;
                                                    liaVar5.z = liaVar3.z;
                                                    liaVar5.A = liaVar3.A;
                                                    liaVar5.t = liaVar3.t;
                                                    liaVar5.B = liaVar3.B;
                                                    liaVar5.H = liaVar3.H;
                                                    liaVar5.j = liaVar3.j;
                                                    n4a n4aVar2 = liaVar5.d;
                                                    n4aVar2.b(arrayList8);
                                                    n4aVar2.c.addAll(arrayList7);
                                                    n4aVar2.d(n4aVar, -1.0f);
                                                    liaVar3.b.add(l8aVar.l);
                                                } else {
                                                    y14.r(null, "VastParser: Got VAST wrapper, but no vastAdTagUri");
                                                }
                                            } else {
                                                str3 = str6;
                                                y14.r(null, "VastParser: Got VAST wrapper, but max redirects limit exceeded");
                                                l8a.n(xmlPullParserNewPullParser);
                                            }
                                        } else {
                                            str3 = str6;
                                            if ("InLine".equals(name)) {
                                                l8aVar.h = false;
                                                y14.r(null, "VastParser: VAST file contains inline ad information.");
                                                while (l8a.l(xmlPullParserNewPullParser) == 2) {
                                                    if (l8a.i(xmlPullParserNewPullParser) == 2) {
                                                        String name3 = xmlPullParserNewPullParser.getName();
                                                        if (str7.equals(name3)) {
                                                            l8aVar.j(xmlPullParserNewPullParser);
                                                        } else if ("Creatives".equals(name3)) {
                                                            l8aVar.g(xmlPullParserNewPullParser);
                                                        } else if ("Extensions".equals(name3)) {
                                                            l8aVar.h(xmlPullParserNewPullParser);
                                                        } else if ("AdVerifications".equals(name3)) {
                                                            l8aVar.f(xmlPullParserNewPullParser);
                                                        } else {
                                                            l8a.n(xmlPullParserNewPullParser);
                                                        }
                                                    }
                                                }
                                                int i8 = 0;
                                                while (i8 < arrayList2.size()) {
                                                    kha khaVar = (kha) arrayList2.get(i8);
                                                    n4a n4aVar3 = khaVar.a;
                                                    int i9 = i8;
                                                    n4aVar3.d(n4aVar, khaVar.z);
                                                    String str10 = liaVar3.g;
                                                    if (TextUtils.isEmpty(str10)) {
                                                        str10 = l8aVar.i;
                                                    }
                                                    khaVar.d = str10;
                                                    TextUtils.isEmpty(null);
                                                    TextUtils.isEmpty(liaVar3.h);
                                                    int size = arrayList7.size();
                                                    String str11 = str7;
                                                    int i10 = 0;
                                                    while (i10 < size) {
                                                        Object obj3 = arrayList7.get(i10);
                                                        i10++;
                                                        int i11 = size;
                                                        k8a k8aVar = (k8a) obj3;
                                                        l8aVar.b(k8aVar.g, k8aVar.b, khaVar);
                                                        size = i11;
                                                        arrayList7 = arrayList7;
                                                    }
                                                    ArrayList arrayList9 = arrayList7;
                                                    n4aVar3.b(arrayList8);
                                                    int i12 = 0;
                                                    for (int size2 = arrayList3.size(); i12 < size2; size2 = size2) {
                                                        Object obj4 = arrayList3.get(i12);
                                                        i12++;
                                                        khaVar.R.add((g1a) obj4);
                                                    }
                                                    if (i9 == 0) {
                                                        n4aVar3.b(arrayList4);
                                                        int size3 = arrayList3.size();
                                                        int i13 = 0;
                                                        while (i13 < size3) {
                                                            n4a n4aVar4 = ((g1a) arrayList3.get(i13)).a;
                                                            n4aVar4.getClass();
                                                            int i14 = size3;
                                                            n4aVar4.b(n4aVar.h(str3));
                                                            String str12 = str2;
                                                            n4aVar4.b(n4aVar.h(str12));
                                                            n4aVar4.b(n4aVar.h("closedByUser"));
                                                            i13++;
                                                            str2 = str12;
                                                            size3 = i14;
                                                        }
                                                    }
                                                    khaVar.I = l8aVar.n;
                                                    str7 = str11;
                                                    str2 = str2;
                                                    i8 = i9 + 1;
                                                    str3 = str3;
                                                    arrayList7 = arrayList9;
                                                }
                                            } else {
                                                str5 = str2;
                                                str6 = str3;
                                                l8a.n(xmlPullParserNewPullParser);
                                            }
                                        }
                                        str5 = str2;
                                        str6 = str3;
                                    }
                                }
                                i5 = 2;
                                kiaVar4 = kiaVar5;
                                str5 = str2;
                            }
                        }
                    }
                    i6 = l8a.k(xmlPullParserNewPullParser);
                    kiaVar4 = kiaVar4;
                    i4 = 1;
                    i5 = 2;
                }
                kiaVar = kiaVar4;
                obj = null;
            } catch (Throwable th) {
                kiaVar = kiaVar4;
                obj = null;
                fg.e(null, new StringBuilder("VastParser: Unable to parse VAST - "), th);
            }
            if (arrayList2.isEmpty()) {
                j8aVar.a(l6a.l);
                return kiaVar;
            }
            kia kiaVar6 = kiaVar == null ? new kia() : kiaVar;
            kha khaVar2 = (kha) arrayList2.get(0);
            xda xdaVar = new xda(pp9.d);
            n4a n4aVar5 = xdaVar.a;
            String strG = khaVar2.g();
            n4a n4aVar6 = khaVar2.a;
            xdaVar.d = strG;
            xdaVar.Z = khaVar2;
            xdaVar.f0 = liaVar.n;
            xdaVar.F = khaVar2.F;
            xdaVar.G = khaVar2.e();
            xdaVar.H = liaVar.H;
            int i15 = liaVar.o;
            if (i15 >= 0) {
                xdaVar.r = new t2a(i15);
            }
            Boolean bool = liaVar.u;
            if (bool != null) {
                khaVar2.c0 = bool.booleanValue();
            }
            Boolean bool2 = liaVar.v;
            if (bool2 != null) {
                khaVar2.e0 = bool2.booleanValue();
            }
            Boolean bool3 = liaVar.B;
            if (bool3 != null) {
                khaVar2.a0 = bool3.booleanValue();
            }
            Boolean bool4 = liaVar.D;
            if (bool4 != null) {
                khaVar2.X = bool4.booleanValue();
            }
            Boolean bool5 = liaVar.z;
            if (bool5 != null) {
                xdaVar.t = bool5.booleanValue();
            }
            Boolean bool6 = liaVar.A;
            if (bool6 != null) {
                xdaVar.s = bool6.booleanValue();
            }
            float f3 = liaVar.t;
            if (f3 >= 0.0f) {
                khaVar2.f0 = f3;
            }
            n4aVar5.b(n4aVar6.f(str6).b);
            n4aVar5.b(n4aVar6.f(str5).b);
            n4aVar5.b(n4aVar6.f("urlResolved").b);
            n4aVar5.b(n4aVar6.f("webviewShown").b);
            n4aVar5.b(n4aVar6.f("webviewClosed").b);
            n4aVar5.b(n4aVar6.f("pageLoaded").b);
            n4aVar5.b(n4aVar6.f("pageLoadFailed").b);
            kiaVar6.b.add(xdaVar);
            if (xdaVar.I == null) {
                xdaVar.I = khaVar2.I;
            }
            ArrayList arrayList10 = new ArrayList(khaVar2.R);
            int size4 = arrayList10.size();
            int i16 = 0;
            while (i16 < size4) {
                Object obj5 = arrayList10.get(i16);
                i16++;
                g1a g1aVar = (g1a) obj5;
                String str13 = g1aVar.S;
                n4a n4aVar7 = g1aVar.a;
                pp9 pp9Var = g1aVar.Q;
                if (str13 != null) {
                    wv9 wv9Var = new wv9(pp9Var);
                    wv9Var.B = g1aVar.B;
                    wv9Var.X = g1aVar.S;
                    wv9Var.a.d(n4aVar7, f2);
                    wv9Var.F = g1aVar.F;
                    obj2 = wv9Var;
                } else {
                    if (g1aVar.R != null) {
                        vy9Var = new vy9(pp9Var);
                        vy9Var.B = g1aVar.B;
                        String str14 = g1aVar.R;
                        if (str14 != null) {
                            vy9Var.X.add(h14.a(g1aVar.x, g1aVar.y, str14));
                            f = 0.0f;
                            vy9Var.a.d(n4aVar7, 0.0f);
                            vy9Var.F = g1aVar.F;
                        }
                    } else {
                        f = 0.0f;
                        r4 = obj;
                    }
                    if (r4 != 0) {
                        obj2 = vy9Var;
                        r4 = vy9Var;
                        xdaVar.a0 = r4;
                        return kiaVar6;
                    }
                    obj2 = vy9Var;
                    r4 = vy9Var;
                    f2 = f;
                }
                obj2 = vy9Var;
                f = 0.0f;
                r4 = obj2;
                if (r4 != 0) {
                    obj2 = vy9Var;
                    r4 = vy9Var;
                    xdaVar.a0 = r4;
                    return kiaVar6;
                }
                obj2 = vy9Var;
                r4 = vy9Var;
                f2 = f;
            }
            return kiaVar6;
        }
        z8a z8aVar = z2aVar.g;
        yda ydaVar2 = new yda(z8aVar);
        String strTrim2 = str.trim();
        if (strTrim2 != null && !"".equals(strTrim2)) {
            y14.r(null, "AdResponseParser: Converting to JSON...");
            try {
                jSONObject = new JSONObject(strTrim2);
                if (!y14.m && jSONObject.optBoolean("sdk_debug_mode", false)) {
                    y14.m = true;
                }
                if (s2.b(jSONObject, ydaVar2)) {
                    s2.a(arrayList, jSONObject, ydaVar2);
                    boolean zOptBoolean = jSONObject.optBoolean("sdk_ms", false);
                    aVar.b = zOptBoolean;
                    t0Var.e = zOptBoolean;
                    jSONObject.optLong(TJVerifierKt.TJC_TIMESTAMP, 0L);
                    fn9 fn9Var = fn9.b;
                    synchronized (fn9Var) {
                        if (!fn9Var.a) {
                            SystemClock.elapsedRealtime();
                            fn9Var.a = true;
                        }
                    }
                    s2.c(jSONObject, ydaVar2);
                    y14.r(null, "AdResponseParser: Done");
                } else {
                    y14.r(null, "AdResponseParser: Invalid json version");
                    j8aVar.a(l6a.k);
                }
            } catch (Throwable th2) {
                fg.e(null, new StringBuilder("AdResponseParser: Parsing ad response error: "), th2);
                j8aVar.a(l6a.k);
                ydaVar2.a.a(ydaVar2.b("Get Json, exception=" + y14.p(th2) + ", data=" + str), 0, 0, 3001, null);
                jSONObject = null;
            }
            if (jSONObject == null) {
                j8aVar.a(l6a.j);
                return kiaVar4;
            }
            if (kiaVar4 == null) {
                kiaVar4 = new kia();
            }
            this.a = jSONObject.optString("mraid.js");
            str4 = z2aVar.f;
            if (!"fullscreen".equals(str4) || AdFormat.REWARDED.equals(str4)) {
                jSONObjectOptJSONObject = jSONObject.optJSONObject("fullscreen");
                if (jSONObjectOptJSONObject == null) {
                    jSONObjectOptJSONObject = jSONObject.optJSONObject(AdFormat.REWARDED);
                }
            } else {
                jSONObjectOptJSONObject = jSONObject.optJSONObject(str4);
            }
            jSONObjectOptJSONObject2 = jSONObject.optJSONObject("settings");
            if (jSONObjectOptJSONObject2 == null && jSONObjectOptJSONObject != null) {
                jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("settings");
            }
            if (jSONObjectOptJSONObject2 != null && jSONObjectOptJSONObject2.has("style")) {
                iOptInt = jSONObjectOptJSONObject2.optInt("style", 0);
                if (iOptInt != 1 || iOptInt == 2 || iOptInt == 3) {
                    liaVar.n = iOptInt;
                } else {
                    liaVar.n = 0;
                }
            }
            if (jSONObjectOptJSONObject != null) {
                if (z2aVar.c && (jSONObjectOptJSONObject4 = jSONObject.optJSONObject("mediation")) != null) {
                    qn9 qn9Var2 = new qn9(liaVar);
                    jSONArrayOptJSONArray2 = jSONObjectOptJSONObject4.optJSONArray("networks");
                    if (jSONArrayOptJSONArray2 != null || jSONArrayOptJSONArray2.length() <= 0) {
                        j8aVar.a(l6a.u);
                    } else {
                        fq9 fq9Var2 = new fq9();
                        int iOptInt2 = jSONObjectOptJSONObject4.optInt("refreshTimeout", fq9Var2.b);
                        if (iOptInt2 >= 0) {
                            fq9Var2.b = iOptInt2;
                        }
                        int length = jSONArrayOptJSONArray2.length();
                        int i17 = 0;
                        while (i17 < length) {
                            JSONObject jSONObjectOptJSONObject6 = jSONArrayOptJSONArray2.optJSONObject(i17);
                            if (jSONObjectOptJSONObject6 != null) {
                                String strOptString = jSONObjectOptJSONObject6.optString("name");
                                if (TextUtils.isEmpty(strOptString)) {
                                    i2 = length;
                                    et9Var = et9Var2;
                                } else {
                                    String strOptString2 = jSONObjectOptJSONObject6.optString("placementId");
                                    if (TextUtils.isEmpty(strOptString2)) {
                                        i2 = length;
                                        et9Var = et9Var2;
                                    } else {
                                        String strOptString3 = jSONObjectOptJSONObject6.optString("adapter");
                                        if (TextUtils.isEmpty(strOptString3)) {
                                            i2 = length;
                                            et9Var = et9Var2;
                                        } else {
                                            et9Var = new et9(strOptString, strOptString2, strOptString3);
                                            if ("myTarget".equals(et9Var.a) && (jSONObjectOptJSONObject5 = jSONObjectOptJSONObject6.optJSONObject(AdFormat.BANNER)) != null) {
                                                jia jiaVarA = new in9(z2aVar, liaVar).a(jSONObjectOptJSONObject5, this.a, j8aVar, new yda(z2aVar.g));
                                                if (jiaVarA == null) {
                                                    j8aVar.a(l6a.r);
                                                    kiaVar3 = null;
                                                } else {
                                                    kiaVar3 = new kia();
                                                    kiaVar3.b.add(jiaVarA);
                                                }
                                                et9Var.g = kiaVar3;
                                            }
                                            String strOptString4 = jSONObjectOptJSONObject6.optString("payload");
                                            if (!TextUtils.isEmpty(strOptString4)) {
                                                et9Var.f = strOptString4;
                                            }
                                            int iOptInt3 = jSONObjectOptJSONObject6.optInt("timeout", et9Var.h);
                                            if (iOptInt3 > 0) {
                                                et9Var.h = iOptInt3;
                                            }
                                            et9Var.i = (float) jSONObjectOptJSONObject6.optDouble("priority", et9Var.i);
                                            JSONObject jSONObjectOptJSONObject7 = jSONObjectOptJSONObject6.optJSONObject(TJAdUnitConstants.String.BEACON_PARAMS);
                                            if (jSONObjectOptJSONObject7 != null) {
                                                Iterator<String> itKeys = jSONObjectOptJSONObject7.keys();
                                                while (itKeys.hasNext()) {
                                                    String next = itKeys.next();
                                                    if (!TextUtils.isEmpty(next)) {
                                                        String strOptString5 = jSONObjectOptJSONObject7.optString(next);
                                                        if (TextUtils.isEmpty(next)) {
                                                            i3 = length;
                                                        } else {
                                                            i3 = length;
                                                            HashMap map = et9Var.e;
                                                            if (strOptString5 == null) {
                                                                map.remove(next);
                                                            } else {
                                                                map.put(next, strOptString5);
                                                            }
                                                        }
                                                        length = i3;
                                                    }
                                                }
                                            }
                                            i2 = length;
                                            qn9Var2.b(et9Var.d, jSONObjectOptJSONObject6, -1.0f);
                                        }
                                    }
                                }
                                if (et9Var != null) {
                                    ArrayList arrayList11 = fq9Var2.a;
                                    int size5 = arrayList11.size();
                                    int i18 = 0;
                                    while (true) {
                                        if (i18 >= size5) {
                                            arrayList11.add(et9Var);
                                            break;
                                        }
                                        if (et9Var.i > ((et9) arrayList11.get(i18)).i) {
                                            arrayList11.add(i18, et9Var);
                                            break;
                                        }
                                        i18++;
                                    }
                                }
                            } else {
                                i2 = length;
                            }
                            i17++;
                            length = i2;
                            et9Var2 = null;
                        }
                        if (fq9Var2.a.isEmpty()) {
                            j8aVar.a(l6a.u);
                        } else {
                            fq9Var = fq9Var2;
                        }
                        if (fq9Var != null) {
                            kiaVar4.a = fq9Var;
                        }
                    }
                    fq9Var = null;
                    if (fq9Var != null) {
                        kiaVar4.a = fq9Var;
                    }
                }
                j8aVar.a(l6a.m);
                return kiaVar4;
            }
            jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("banners");
            if (jSONArrayOptJSONArray != null || jSONArrayOptJSONArray.length() <= 0) {
                kia kiaVar7 = kiaVar4;
                j8aVar.a(l6a.r);
                return kiaVar7;
            }
            int i19 = 0;
            while (i19 < jSONArrayOptJSONArray.length()) {
                JSONObject jSONObjectOptJSONObject8 = jSONArrayOptJSONArray.optJSONObject(i19);
                if (jSONObjectOptJSONObject8 == null) {
                    jSONArray = jSONArrayOptJSONArray;
                    i = i19;
                    kiaVar2 = kiaVar4;
                    ydaVar = ydaVar2;
                } else if ("additionalData".equals(jSONObjectOptJSONObject8.optString(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, ""))) {
                    qn9 qn9Var3 = new qn9(liaVar);
                    ks9 ks9Var = ks9.d;
                    jSONArray = jSONArrayOptJSONArray;
                    i = i19;
                    kia kiaVar8 = kiaVar4;
                    yda ydaVar3 = ydaVar2;
                    qn9 qn9Var4 = qn9Var3;
                    int i20 = liaVar.k;
                    if (i20 >= 5) {
                        j8aVar.a(l6a.i);
                        ks9Var.g(3007, "rc limit");
                        y14.r(null, "AdditionalDataParser: Got additional data, but max redirects limit exceeded");
                    } else {
                        String strOptString6 = jSONObjectOptJSONObject8.optString("url");
                        if (TextUtils.isEmpty(strOptString6)) {
                            j8aVar.a(l6a.n);
                            ks9Var.a("url").f(3007);
                        } else {
                            ks9Var.a.b(ks9Var.e(bj.c("url = ", strOptString6)), 0, 3, 3010, null);
                            liaVar2 = new lia(strOptString6, null);
                            int iOptInt4 = jSONObjectOptJSONObject8.optInt(TtmlNode.ATTR_ID, liaVar.l);
                            liaVar2.k = i20 + 1;
                            liaVar2.l = iOptInt4;
                            liaVar2.r = jSONObjectOptJSONObject8.optBoolean("doAfter", liaVar2.r);
                            liaVar2.m = jSONObjectOptJSONObject8.optInt("doOnEmptyResponseFromId", liaVar2.m);
                            liaVar2.s = jSONObjectOptJSONObject8.optBoolean("isMidrollPoint", liaVar2.s);
                            float fOptDouble = liaVar.t;
                            if (fOptDouble < 0.0f) {
                                fOptDouble = (float) jSONObjectOptJSONObject8.optDouble("allowCloseDelay", liaVar2.t);
                            }
                            liaVar2.t = fOptDouble;
                            Boolean boolValueOf = liaVar.u;
                            if (boolValueOf == null) {
                                boolValueOf = jSONObjectOptJSONObject8.has("allowClose") ? Boolean.valueOf(jSONObjectOptJSONObject8.optBoolean("allowClose")) : null;
                            }
                            liaVar2.u = boolValueOf;
                            Boolean boolValueOf2 = liaVar.v;
                            if (boolValueOf2 == null) {
                                boolValueOf2 = jSONObjectOptJSONObject8.has("hasPause") ? Boolean.valueOf(jSONObjectOptJSONObject8.optBoolean("hasPause")) : null;
                            }
                            liaVar2.v = boolValueOf2;
                            Boolean boolValueOf3 = liaVar.w;
                            if (boolValueOf3 == null) {
                                boolValueOf3 = jSONObjectOptJSONObject8.has("allowSeek") ? Boolean.valueOf(jSONObjectOptJSONObject8.optBoolean("allowSeek")) : null;
                            }
                            liaVar2.w = boolValueOf3;
                            Boolean boolValueOf4 = liaVar.x;
                            if (boolValueOf4 == null) {
                                boolValueOf4 = jSONObjectOptJSONObject8.has("allowSkip") ? Boolean.valueOf(jSONObjectOptJSONObject8.optBoolean("allowSkip")) : null;
                            }
                            liaVar2.x = boolValueOf4;
                            Boolean boolValueOf5 = liaVar.y;
                            if (boolValueOf5 == null) {
                                boolValueOf5 = jSONObjectOptJSONObject8.has("allowTrackChange") ? Boolean.valueOf(jSONObjectOptJSONObject8.optBoolean("allowTrackChange")) : null;
                            }
                            liaVar2.y = boolValueOf5;
                            Boolean bool7 = liaVar.A;
                            liaVar2.A = bool7 == null ? jSONObjectOptJSONObject8.has("openInBrowser") ? Boolean.valueOf(jSONObjectOptJSONObject8.optBoolean("openInBrowser")) : null : bool7;
                            Boolean boolValueOf6 = liaVar.z;
                            if (boolValueOf6 == null) {
                                boolValueOf6 = jSONObjectOptJSONObject8.has("directLink") ? Boolean.valueOf(jSONObjectOptJSONObject8.optBoolean("directLink")) : null;
                            }
                            liaVar2.z = boolValueOf6;
                            Boolean boolValueOf7 = liaVar.B;
                            if (boolValueOf7 == null) {
                                boolValueOf7 = jSONObjectOptJSONObject8.has("allowReplay") ? Boolean.valueOf(jSONObjectOptJSONObject8.optBoolean("allowReplay")) : null;
                            }
                            liaVar2.B = boolValueOf7;
                            Boolean boolValueOf8 = liaVar.C;
                            if (boolValueOf8 == null) {
                                boolValueOf8 = jSONObjectOptJSONObject8.has("allowBackButton") ? Boolean.valueOf(jSONObjectOptJSONObject8.optBoolean("allowBackButton")) : null;
                            }
                            liaVar2.C = boolValueOf8;
                            Boolean boolValueOf9 = liaVar.D;
                            if (boolValueOf9 == null) {
                                boolValueOf9 = jSONObjectOptJSONObject8.has("automute") ? Boolean.valueOf(jSONObjectOptJSONObject8.optBoolean("automute")) : null;
                            }
                            liaVar2.D = boolValueOf9;
                            Boolean boolValueOf10 = liaVar.E;
                            if (boolValueOf10 == null) {
                                boolValueOf10 = jSONObjectOptJSONObject8.has("autoplay") ? Boolean.valueOf(jSONObjectOptJSONObject8.optBoolean("autoplay")) : null;
                            }
                            liaVar2.E = boolValueOf10;
                            int iOptInt5 = liaVar.n;
                            if (iOptInt5 < 0) {
                                iOptInt5 = jSONObjectOptJSONObject8.optInt("style", liaVar2.n);
                            }
                            liaVar2.n = iOptInt5;
                            int iOptInt6 = liaVar.o;
                            if (iOptInt6 < 0) {
                                iOptInt6 = jSONObjectOptJSONObject8.optInt("clickArea", liaVar2.o);
                            }
                            liaVar2.o = iOptInt6;
                            Boolean boolValueOf11 = liaVar.F;
                            if (boolValueOf11 == null) {
                                boolValueOf11 = jSONObjectOptJSONObject8.has("logErrors") ? Boolean.valueOf(jSONObjectOptJSONObject8.optBoolean("logErrors")) : null;
                            }
                            liaVar2.F = boolValueOf11;
                            float fOptDouble2 = liaVar.p;
                            if (fOptDouble2 < 0.0f && jSONObjectOptJSONObject8.has("point")) {
                                fOptDouble2 = (float) jSONObjectOptJSONObject8.optDouble("point");
                                if (fOptDouble2 < 0.0f) {
                                    ks9Var.g(3007, "point=-1.0");
                                    fOptDouble2 = -1.0f;
                                }
                            }
                            liaVar2.p = fOptDouble2;
                            float fOptDouble3 = liaVar.q;
                            if (fOptDouble3 < 0.0f && jSONObjectOptJSONObject8.has("pointP")) {
                                fOptDouble3 = (float) jSONObjectOptJSONObject8.optDouble("pointP");
                                if (fOptDouble3 < 0.0f || fOptDouble3 > 100.0f) {
                                    ks9Var.g(3007, "pointP=" + fOptDouble3);
                                    fOptDouble3 = -1.0f;
                                }
                            }
                            liaVar2.q = fOptDouble3;
                            ArrayList arrayList12 = liaVar.e != null ? new ArrayList(liaVar.e) : null;
                            ArrayList arrayList13 = liaVar2.e;
                            if (arrayList13 == null) {
                                liaVar2.e = arrayList12;
                            } else if (arrayList12 != null) {
                                arrayList13.addAll(arrayList12);
                            }
                            aga agaVarA = liaVar.G;
                            JSONObject jSONObjectOptJSONObject9 = jSONObjectOptJSONObject8.optJSONObject("omdata");
                            if (jSONObjectOptJSONObject9 != null) {
                                agaVarA = p46.a(agaVarA, jSONObjectOptJSONObject9);
                            }
                            liaVar2.G = agaVarA;
                            JSONArray jSONArrayOptJSONArray3 = jSONObjectOptJSONObject8.optJSONArray("serviceStatistics");
                            if (jSONArrayOptJSONArray3 != null) {
                                int i21 = 0;
                                while (i21 < jSONArrayOptJSONArray3.length()) {
                                    JSONObject jSONObjectOptJSONObject10 = jSONArrayOptJSONArray3.optJSONObject(i21);
                                    if (jSONObjectOptJSONObject10 != null) {
                                        qn9Var = qn9Var4;
                                        m2a m2aVarA = qn9Var.a(jSONObjectOptJSONObject10, -1.0f, ks9.d);
                                        if (m2aVarA != null) {
                                            liaVar2.c.add(m2aVarA);
                                        }
                                    } else {
                                        qn9Var = qn9Var4;
                                    }
                                    i21++;
                                    qn9Var4 = qn9Var;
                                }
                            }
                            n4a n4aVar8 = liaVar2.d;
                            String.valueOf(liaVar2.l);
                            qn9Var4.b(n4aVar8, jSONObjectOptJSONObject8, -1.0f);
                            q qVarA = liaVar.H;
                            if (qVarA == null && (jSONObjectOptJSONObject3 = jSONObjectOptJSONObject8.optJSONObject("adChoices")) != null) {
                                qVarA = q0.a(jSONObjectOptJSONObject3, ks9Var);
                            }
                            liaVar2.H = qVarA;
                            String strOptString7 = liaVar.j;
                            if (strOptString7 == null && jSONObjectOptJSONObject8.has("advertisingLabel")) {
                                strOptString7 = jSONObjectOptJSONObject8.optString("advertisingLabel");
                            }
                            liaVar2.j = strOptString7;
                        }
                        if (liaVar2 != null) {
                            liaVar.b.add(liaVar2);
                        }
                        kiaVar2 = kiaVar8;
                        ydaVar = ydaVar3;
                    }
                    liaVar2 = null;
                    if (liaVar2 != null) {
                        liaVar.b.add(liaVar2);
                    }
                    kiaVar2 = kiaVar8;
                    ydaVar = ydaVar3;
                } else {
                    jSONArray = jSONArrayOptJSONArray;
                    i = i19;
                    kia kiaVar9 = kiaVar4;
                    ydaVar = ydaVar2;
                    jia jiaVarA2 = new in9(z2aVar, liaVar).a(jSONObjectOptJSONObject8, this.a, j8aVar, ydaVar);
                    kiaVar2 = kiaVar9;
                    if (jiaVarA2 != null) {
                        kiaVar2.b.add(jiaVarA2);
                    }
                }
                ydaVar2 = ydaVar;
                kiaVar4 = kiaVar2;
                i19 = i + 1;
                jSONArrayOptJSONArray = jSONArray;
            }
            return kiaVar4;
        }
        y14.r(null, "AdResponseParser: Parsing ad response: empty data");
        j8aVar.a(l6a.j);
        z8aVar.a(ydaVar2.b("Input json is empty, data=".concat(str)), 0, 0, 3002, null);
        jSONObject = null;
        if (jSONObject == null) {
            j8aVar.a(l6a.j);
            return kiaVar4;
        }
        if (kiaVar4 == null) {
            kiaVar4 = new kia();
        }
        this.a = jSONObject.optString("mraid.js");
        str4 = z2aVar.f;
        if ("fullscreen".equals(str4)) {
            jSONObjectOptJSONObject = jSONObject.optJSONObject("fullscreen");
            if (jSONObjectOptJSONObject == null) {
                jSONObjectOptJSONObject = jSONObject.optJSONObject(AdFormat.REWARDED);
            }
        } else {
            jSONObjectOptJSONObject = jSONObject.optJSONObject("fullscreen");
            if (jSONObjectOptJSONObject == null) {
                jSONObjectOptJSONObject = jSONObject.optJSONObject(AdFormat.REWARDED);
            }
        }
        jSONObjectOptJSONObject2 = jSONObject.optJSONObject("settings");
        if (jSONObjectOptJSONObject2 == null) {
            jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("settings");
        }
        if (jSONObjectOptJSONObject2 != null) {
            iOptInt = jSONObjectOptJSONObject2.optInt("style", 0);
            if (iOptInt != 1) {
                liaVar.n = iOptInt;
            } else {
                liaVar.n = iOptInt;
            }
        }
        if (jSONObjectOptJSONObject != null) {
            jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("banners");
            if (jSONArrayOptJSONArray != null) {
            }
            kia kiaVar10 = kiaVar4;
            j8aVar.a(l6a.r);
            return kiaVar10;
        }
        if (z2aVar.c) {
            qn9 qn9Var5 = new qn9(liaVar);
            jSONArrayOptJSONArray2 = jSONObjectOptJSONObject4.optJSONArray("networks");
            if (jSONArrayOptJSONArray2 != null) {
                j8aVar.a(l6a.u);
                fq9Var = null;
            } else {
                j8aVar.a(l6a.u);
                fq9Var = null;
            }
            if (fq9Var != null) {
                kiaVar4.a = fq9Var;
            }
        }
        j8aVar.a(l6a.m);
        return kiaVar4;
    }
}
