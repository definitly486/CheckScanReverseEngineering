package defpackage;

import android.text.TextUtils;
import android.util.Base64;
import android.webkit.URLUtil;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.dynamiclinks.DynamicLink;
import com.my.target.a3;
import com.my.target.m1;
import com.my.target.q;
import com.my.target.q0;
import com.tapjoy.TJAdUnitConstants;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class qw9 {
    public final qn9 a;
    public final lia b;
    public String c;
    public boolean d = true;

    public qw9(z2a z2aVar, lia liaVar) {
        this.b = liaVar;
        this.a = new qn9(liaVar);
    }

    public static String a(JSONObject jSONObject, j8a j8aVar, ks9 ks9Var) {
        String str = null;
        if (!jSONObject.has("src") && !jSONObject.has("source")) {
            j8aVar.a(l6a.n);
            ks9Var.a("src").f(AuthApiStatusCodes.AUTH_APP_CERT_ERROR);
            ks9Var.a("source").f(AuthApiStatusCodes.AUTH_APP_CERT_ERROR);
            return null;
        }
        String strOptString = jSONObject.optString("src", "");
        if (!TextUtils.isEmpty(strOptString)) {
            try {
                str = new String(Base64.decode(strOptString, 0));
            } catch (Throwable unused) {
            }
            if (str != null) {
                return str;
            }
        }
        String strOptString2 = jSONObject.optString("source", "");
        return !TextUtils.isEmpty(strOptString2) ? y14.f(strOptString2) : str;
    }

    public static void c(JSONObject jSONObject, ao9 ao9Var) {
        if (jSONObject != null && jSONObject.optBoolean("detailedMonitoringPixelsEnabled")) {
            String str = ao9Var.Q.a.a;
            HashSet hashSet = new HashSet();
            hashSet.add("show");
            hashSet.add("playbackStarted");
            hashSet.add("playheadViewabilityValue");
            Iterator it = hashSet.iterator();
            int size = 0;
            while (it.hasNext()) {
                size += ao9Var.a.f((String) it.next()).b.size();
            }
            synchronized (a3.a(str)) {
                try {
                    ConcurrentHashMap concurrentHashMap = a3.b;
                    if (!concurrentHashMap.containsKey(str)) {
                        ConcurrentHashMap concurrentHashMap2 = a3.c;
                        if (!concurrentHashMap2.containsKey(str)) {
                            concurrentHashMap.put(str, hashSet);
                            concurrentHashMap2.put(str, Integer.valueOf(size));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:103:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:105:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:107:0x02c2  */
    /* JADX WARN: Code duplicated, block: B:108:0x02c8  */
    /* JADX WARN: Code duplicated, block: B:110:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:112:0x02d5  */
    /* JADX WARN: Code duplicated, block: B:114:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:115:0x0302  */
    /* JADX WARN: Code duplicated, block: B:118:0x0310  */
    /* JADX WARN: Code duplicated, block: B:121:0x0327  */
    /* JADX WARN: Code duplicated, block: B:129:0x0337  */
    /* JADX WARN: Code duplicated, block: B:132:0x033d  */
    /* JADX WARN: Code duplicated, block: B:135:0x0341  */
    /* JADX WARN: Code duplicated, block: B:148:0x0376  */
    /* JADX WARN: Code duplicated, block: B:151:0x037d  */
    /* JADX WARN: Code duplicated, block: B:155:0x038f  */
    /* JADX WARN: Code duplicated, block: B:160:0x03b8  */
    /* JADX WARN: Code duplicated, block: B:162:0x03c4  */
    /* JADX WARN: Code duplicated, block: B:165:0x03ce  */
    /* JADX WARN: Code duplicated, block: B:167:0x03d9  */
    /* JADX WARN: Code duplicated, block: B:176:0x03e8  */
    /* JADX WARN: Code duplicated, block: B:178:0x03f5  */
    /* JADX WARN: Code duplicated, block: B:180:0x03fb  */
    /* JADX WARN: Code duplicated, block: B:184:0x040b  */
    /* JADX WARN: Code duplicated, block: B:187:0x0418  */
    /* JADX WARN: Code duplicated, block: B:193:0x0432  */
    /* JADX WARN: Code duplicated, block: B:196:0x0440  */
    /* JADX WARN: Code duplicated, block: B:199:0x044e  */
    /* JADX WARN: Code duplicated, block: B:202:0x0466  */
    /* JADX WARN: Code duplicated, block: B:204:0x0474  */
    /* JADX WARN: Code duplicated, block: B:207:0x047f  */
    /* JADX WARN: Code duplicated, block: B:210:0x04a2 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:213:0x04af  */
    /* JADX WARN: Code duplicated, block: B:220:0x04de  */
    /* JADX WARN: Code duplicated, block: B:223:0x04fc  */
    /* JADX WARN: Code duplicated, block: B:226:0x050f  */
    /* JADX WARN: Code duplicated, block: B:227:0x0517  */
    /* JADX WARN: Code duplicated, block: B:229:0x051f  */
    /* JADX WARN: Code duplicated, block: B:231:0x0525  */
    /* JADX WARN: Code duplicated, block: B:232:0x0533  */
    /* JADX WARN: Code duplicated, block: B:233:0x053b  */
    /* JADX WARN: Code duplicated, block: B:235:0x0543  */
    /* JADX WARN: Code duplicated, block: B:237:0x0553  */
    /* JADX WARN: Code duplicated, block: B:238:0x0558  */
    /* JADX WARN: Code duplicated, block: B:241:0x056c  */
    /* JADX WARN: Code duplicated, block: B:244:0x0580  */
    /* JADX WARN: Code duplicated, block: B:246:0x058c  */
    /* JADX WARN: Code duplicated, block: B:251:0x05a3  */
    /* JADX WARN: Code duplicated, block: B:253:0x05af  */
    /* JADX WARN: Code duplicated, block: B:255:0x05b6  */
    /* JADX WARN: Code duplicated, block: B:258:0x05c1  */
    /* JADX WARN: Code duplicated, block: B:261:0x05d6  */
    /* JADX WARN: Code duplicated, block: B:263:0x05e3  */
    /* JADX WARN: Code duplicated, block: B:264:0x05e7  */
    /* JADX WARN: Code duplicated, block: B:267:0x05fa  */
    /* JADX WARN: Code duplicated, block: B:268:0x0604  */
    /* JADX WARN: Code duplicated, block: B:270:0x060f  */
    /* JADX WARN: Code duplicated, block: B:273:0x0617  */
    /* JADX WARN: Code duplicated, block: B:277:0x0643  */
    /* JADX WARN: Code duplicated, block: B:280:0x064f  */
    /* JADX WARN: Code duplicated, block: B:281:0x0651  */
    /* JADX WARN: Code duplicated, block: B:284:0x065c  */
    /* JADX WARN: Code duplicated, block: B:291:0x0673  */
    /* JADX WARN: Code duplicated, block: B:298:0x0690  */
    /* JADX WARN: Code duplicated, block: B:310:0x06c9  */
    /* JADX WARN: Code duplicated, block: B:315:0x06d6  */
    /* JADX WARN: Code duplicated, block: B:324:0x06f0  */
    /* JADX WARN: Code duplicated, block: B:329:0x06fc  */
    /* JADX WARN: Code duplicated, block: B:343:0x06e9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:345:0x06db A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:347:0x06ac A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:349:0x06cf A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:351:0x06e2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:353:0x06c0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:355:0x06b6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:357:0x06f5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:364:0x039a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:366:0x0389 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:371:0x0344 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:83:0x022f  */
    /* JADX WARN: Code duplicated, block: B:85:0x0235  */
    /* JADX WARN: Code duplicated, block: B:88:0x0242  */
    /* JADX WARN: Code duplicated, block: B:90:0x0252  */
    /* JADX WARN: Code duplicated, block: B:91:0x025b  */
    /* JADX WARN: Code duplicated, block: B:93:0x0264  */
    /* JADX WARN: Code duplicated, block: B:94:0x026e  */
    public final void b(JSONObject jSONObject, ao9 ao9Var, ks9 ks9Var) {
        rw9 rw9Var;
        ml mlVar;
        ArrayList arrayList;
        JSONArray jSONArray;
        int i;
        ks9 ks9VarD;
        JSONObject jSONObjectOptJSONObject;
        hw9 hw9Var;
        rw9.a aVar;
        String strB;
        String str;
        ks9 ks9Var2;
        int i2;
        ks9 ks9VarA;
        JSONObject jSONObject2;
        JSONObject jSONObjectOptJSONObject2;
        hw9 hw9Var2;
        ks9 ks9Var3;
        si0 si0Var;
        int iA;
        int i3;
        int iA2;
        si0 si0Var2;
        n4a n4aVar;
        String strOptString;
        int iOptInt;
        ks9 ks9VarA2;
        String strOptString2;
        String strOptString3;
        String strOptString4;
        boolean zHas;
        String strOptString5;
        int iOptInt2;
        int iOptInt3;
        String strOptString6;
        int iOptInt4;
        int iOptInt5;
        int i4;
        int iOptInt6;
        q qVarA;
        JSONObject jSONObjectOptJSONObject3;
        aga agaVarA;
        JSONObject jSONObjectOptJSONObject4;
        String strTrim;
        URL url;
        String host;
        boolean zStartsWith;
        JSONObject jSONObjectOptJSONObject5;
        boolean zOptBoolean;
        boolean zOptBoolean2;
        boolean zOptBoolean3;
        boolean zOptBoolean4;
        ks9 ks9VarA3;
        a0a a0aVar;
        float fOptDouble;
        double dOptDouble;
        int iOptInt7;
        JSONObject jSONObjectOptJSONObject6;
        ks9 ks9VarA4;
        float fOptDouble2;
        double d;
        int iOptInt8;
        String str2;
        HashMap map;
        Iterator it;
        rw9.a aVar2;
        si0 si0Var3;
        ks9 ks9Var4 = ks9Var;
        n4a n4aVar2 = ao9Var.a;
        lia liaVar = this.b;
        Boolean bool = liaVar.F;
        if (bool != null) {
            this.d = bool.booleanValue();
            Boolean.TRUE.equals(bool);
            ao9Var.O = this.d;
        } else if (jSONObject.has("logErrors")) {
            boolean zOptBoolean5 = jSONObject.optBoolean("logErrors", true);
            this.d = zOptBoolean5;
            Boolean.TRUE.equals(Boolean.valueOf(zOptBoolean5));
            ao9Var.O = this.d;
        }
        String strOptString7 = jSONObject.optString(TtmlNode.ATTR_ID);
        this.c = strOptString7;
        if (TextUtils.isEmpty(strOptString7)) {
            if (!jSONObject.has("bannerID")) {
                ks9Var4.getClass();
            }
            this.c = jSONObject.optString("bannerID", ao9Var.B);
        } else {
            ks9Var4.a(TtmlNode.ATTR_ID).f(3004);
        }
        ao9Var.B = this.c;
        zn9 zn9Var = ao9Var.P;
        String str3 = ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY;
        String strOptString8 = jSONObject.optString(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
        if (!TextUtils.isEmpty(strOptString8)) {
            ao9Var.A = strOptString8;
        }
        int iC = ao9Var.c();
        String str4 = TJAdUnitConstants.String.WIDTH;
        ao9Var.x = jSONObject.optInt(TJAdUnitConstants.String.WIDTH, iC);
        ao9Var.y = jSONObject.optInt(TJAdUnitConstants.String.HEIGHT, ao9Var.j());
        ao9Var.f(jSONObject.optString(FirebaseAnalytics.Param.DISCOUNT, ao9Var.h()));
        ao9Var.M = jSONObject.optString("newPrice", ao9Var.M);
        ao9Var.i(jSONObject.optString("oldPrice", ao9Var.a()));
        String strOptString9 = jSONObject.optString("ageRestrictions");
        if (!TextUtils.isEmpty(strOptString9)) {
            ao9Var.g = strOptString9;
        }
        TextUtils.isEmpty(jSONObject.optString("erid"));
        String strOptString10 = jSONObject.optString("deeplink");
        if (!TextUtils.isEmpty(strOptString10)) {
            ao9Var.E = strOptString10;
        }
        String strOptString11 = jSONObject.optString("trackingLink");
        if (!TextUtils.isEmpty(strOptString11)) {
            ao9Var.F = strOptString11;
        }
        String strOptString12 = jSONObject.optString("ctaLink");
        if (!TextUtils.isEmpty(strOptString12)) {
            ao9Var.G = strOptString12;
        }
        String strOptString13 = jSONObject.optString("bundle_id");
        if (!TextUtils.isEmpty(strOptString13)) {
            ao9Var.D = strOptString13;
        }
        String strOptString14 = jSONObject.optString("urlscheme");
        if (!TextUtils.isEmpty(strOptString14)) {
            ao9Var.C = strOptString14;
        }
        ks9Var4.getClass();
        Boolean bool2 = liaVar.A;
        ao9Var.s = bool2 != null ? bool2.booleanValue() : jSONObject.optBoolean("openInBrowser", ao9Var.s);
        Boolean bool3 = liaVar.z;
        ao9Var.t = bool3 != null ? bool3.booleanValue() : jSONObject.optBoolean("directLink", ao9Var.t);
        ao9Var.N = jSONObject.optString("paidType", ao9Var.N);
        String strOptString15 = jSONObject.optString("navigationType");
        if (!TextUtils.isEmpty(strOptString15)) {
            if ("deeplink".equals(strOptString15)) {
                ks9Var4.a("navigationType").g(AuthApiStatusCodes.AUTH_URL_RESOLUTION, "legacy value " + strOptString15);
                ao9Var.m = "store";
            } else {
                ao9Var.m = strOptString15;
            }
        }
        if (TextUtils.isEmpty(y14.i(jSONObject, "storeType")) && "store".equals(strOptString15)) {
            ks9Var4.a("storeType").f(AuthApiStatusCodes.AUTH_APP_CERT_ERROR);
        }
        String strOptString16 = jSONObject.optString(TJAdUnitConstants.String.TITLE);
        if (!TextUtils.isEmpty(strOptString16)) {
            ao9Var.e = strOptString16;
        }
        String strOptString17 = jSONObject.optString("description");
        if (!TextUtils.isEmpty(strOptString17)) {
            ao9Var.c = strOptString17;
        }
        JSONObject jSONObjectOptJSONObject7 = jSONObject.optJSONObject("disclaimerInfo");
        hw9 hw9Var3 = jSONObjectOptJSONObject7 == null ? null : new hw9(jSONObjectOptJSONObject7, ks9Var4.a("disclaimerInfo"));
        try {
            if (hw9Var3 != null) {
                rw9Var = new rw9();
                rw9Var.a = hw9Var3.a(TtmlNode.ATTR_ID);
                rw9Var.d = hw9Var3.a("percent");
                rw9Var.b = hw9Var3.b("alias");
                rw9Var.c = hw9Var3.b("text");
                ks9 ks9VarA5 = ((ks9) hw9Var3.c).a("images");
                JSONObject jSONObject3 = (JSONObject) hw9Var3.b;
                if (jSONObject3.has("images")) {
                    JSONArray jSONArrayOptJSONArray = jSONObject3.optJSONArray("images");
                    if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() == 0) {
                        ks9VarA5.f(3007);
                    } else {
                        mlVar = new ml(jSONArrayOptJSONArray, ks9VarA5);
                    }
                    arrayList = new ArrayList();
                    if (mlVar == null) {
                        jSONArray = (JSONArray) mlVar.a;
                        i = 0;
                        while (i < jSONArray.length()) {
                            ks9VarD = ((ks9) mlVar.b).d(i);
                            ml mlVar2 = mlVar;
                            jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                            if (jSONObjectOptJSONObject == null) {
                                ks9VarD.f(3007);
                                hw9Var = null;
                            } else {
                                hw9Var = new hw9(jSONObjectOptJSONObject, ks9VarD);
                            }
                            if (hw9Var == null) {
                                n4aVar2 = n4aVar2;
                                str = str3;
                                str4 = str4;
                                i2 = i;
                            } else {
                                aVar = new rw9.a();
                                strB = hw9Var.b(str3);
                                str = str3;
                                ks9Var2 = (ks9) hw9Var.c;
                                aVar.a = strB;
                                i2 = i;
                                if (strB != null && !strB.equals(TJAdUnitConstants.String.PORTRAIT) && !strB.equals(TJAdUnitConstants.String.LANDSCAPE)) {
                                    ks9Var2.g(3007, aVar.a);
                                    aVar.a = null;
                                }
                                aVar.b = hw9Var.a("minHeight");
                                ks9VarA = ks9Var2.a("image");
                                jSONObject2 = (JSONObject) hw9Var.b;
                                if (jSONObject2.has("image")) {
                                    jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("image");
                                    if (jSONObjectOptJSONObject2 == null) {
                                        ks9VarA.f(3007);
                                    } else {
                                        hw9Var2 = new hw9(jSONObjectOptJSONObject2, ks9VarA);
                                    }
                                    if (hw9Var2 == null) {
                                        n4aVar2 = n4aVar2;
                                        str4 = str4;
                                    } else {
                                        ks9Var3 = (ks9) hw9Var2.c;
                                        si0Var = new si0();
                                        si0Var.c = hw9Var2.b("url");
                                        iA = hw9Var2.a(str4);
                                        si0Var.a = iA;
                                        if (iA <= 0) {
                                            i3 = 3007;
                                            ks9Var3.a(str4).g(3007, Integer.toString(si0Var.a));
                                        } else {
                                            i3 = 3007;
                                        }
                                        iA2 = hw9Var2.a(TJAdUnitConstants.String.HEIGHT);
                                        si0Var.b = iA2;
                                        if (iA2 <= 0) {
                                            ks9Var3.a(TJAdUnitConstants.String.HEIGHT).g(i3, Integer.toString(si0Var.b));
                                        }
                                        if (TextUtils.isEmpty((String) si0Var.c) && si0Var.a > 0 && si0Var.b > 0) {
                                            si0Var2 = si0Var;
                                        }
                                        aVar.c = si0Var2;
                                        if (aVar.a != null || aVar.b <= 0 || si0Var2 == null) {
                                            aVar = null;
                                        }
                                        if (aVar == null) {
                                            arrayList.add(aVar);
                                        }
                                    }
                                    si0Var2 = null;
                                    aVar.c = si0Var2;
                                    if (aVar.a != null) {
                                        aVar = null;
                                    } else {
                                        aVar = null;
                                    }
                                    if (aVar == null) {
                                        arrayList.add(aVar);
                                    }
                                } else {
                                    ks9VarA.f(AuthApiStatusCodes.AUTH_APP_CERT_ERROR);
                                }
                                hw9Var2 = null;
                                if (hw9Var2 == null) {
                                    n4aVar2 = n4aVar2;
                                    str4 = str4;
                                } else {
                                    ks9Var3 = (ks9) hw9Var2.c;
                                    si0Var = new si0();
                                    si0Var.c = hw9Var2.b("url");
                                    iA = hw9Var2.a(str4);
                                    si0Var.a = iA;
                                    if (iA <= 0) {
                                        i3 = 3007;
                                        ks9Var3.a(str4).g(3007, Integer.toString(si0Var.a));
                                    } else {
                                        i3 = 3007;
                                    }
                                    iA2 = hw9Var2.a(TJAdUnitConstants.String.HEIGHT);
                                    si0Var.b = iA2;
                                    if (iA2 <= 0) {
                                        ks9Var3.a(TJAdUnitConstants.String.HEIGHT).g(i3, Integer.toString(si0Var.b));
                                    }
                                    if (TextUtils.isEmpty((String) si0Var.c)) {
                                    }
                                    aVar.c = si0Var2;
                                    if (aVar.a != null) {
                                        aVar = null;
                                    } else {
                                        aVar = null;
                                    }
                                    if (aVar == null) {
                                        arrayList.add(aVar);
                                    }
                                }
                                si0Var2 = null;
                                aVar.c = si0Var2;
                                if (aVar.a != null) {
                                    aVar = null;
                                } else {
                                    aVar = null;
                                }
                                if (aVar == null) {
                                    arrayList.add(aVar);
                                }
                            }
                            i = i2 + 1;
                            mlVar = mlVar2;
                            jSONArray = jSONArray;
                            str3 = str;
                            str4 = str4;
                            n4aVar2 = n4aVar2;
                        }
                    }
                    n4aVar = n4aVar2;
                    rw9Var.e.addAll(arrayList);
                    if (rw9Var.a != -1 || rw9Var.d == -1 || TextUtils.isEmpty(rw9Var.b) || TextUtils.isEmpty(rw9Var.c)) {
                    }
                    if (rw9Var != null) {
                        int i5 = rw9Var.a;
                        str2 = rw9Var.c;
                        if (str2 == null) {
                            str2 = "";
                        }
                        map = new HashMap();
                        it = rw9Var.e.iterator();
                        while (it.hasNext()) {
                            aVar2 = (rw9.a) it.next();
                            si0Var3 = aVar2.c;
                            if (si0Var3 != null) {
                                map.put(aVar2.a, new ln2(aVar2.b, (String) si0Var3.c, si0Var3.a, si0Var3.b));
                                it = it;
                            }
                        }
                        ao9Var.w = i5;
                        ao9Var.f = str2;
                    } else {
                        strOptString = jSONObject.optString("disclaimer");
                        if (!TextUtils.isEmpty(strOptString)) {
                            ao9Var.f = strOptString;
                        }
                        if (jSONObject.has("disclaimer_id")) {
                            iOptInt = jSONObject.optInt("disclaimer_id", -1);
                            ks9VarA2 = ks9Var4.a("disclaimer_id");
                            if (iOptInt != 0 && iOptInt != 3 && iOptInt != 4 && iOptInt != 5 && iOptInt != 6) {
                                switch (iOptInt) {
                                    case 8:
                                    case 9:
                                    case 10:
                                    case 11:
                                    case 12:
                                    case 13:
                                        break;
                                    default:
                                        ks9VarA2.c(3007, Integer.toString(iOptInt));
                                        iOptInt = 0;
                                        break;
                                }
                            }
                            ao9Var.w = iOptInt;
                        } else if (jSONObject.has("disclaimer")) {
                            ks9Var4.a("disclaimer_id").g(AuthApiStatusCodes.AUTH_APP_CERT_ERROR, "has disclaimer, but has no disclaimer_id");
                        }
                        if (ao9Var.w != 0) {
                            new HashMap();
                        }
                    }
                    if (jSONObject.has("votes") && (iOptInt8 = jSONObject.optInt("votes", -1)) >= 0) {
                        ao9Var.i = Integer.valueOf(iOptInt8);
                    }
                    strOptString2 = jSONObject.optString("category");
                    if (!TextUtils.isEmpty(strOptString2)) {
                        ao9Var.j = strOptString2;
                    }
                    strOptString3 = jSONObject.optString("subcategory");
                    if (!TextUtils.isEmpty(strOptString3)) {
                        ao9Var.k = strOptString3;
                    }
                    strOptString4 = jSONObject.optString(DynamicLink.Builder.KEY_DOMAIN);
                    if (!TextUtils.isEmpty(strOptString4)) {
                        ao9Var.l = strOptString4;
                    }
                    ao9Var.z = (float) jSONObject.optDouble(TypedValues.TransitionType.S_DURATION, ao9Var.z);
                    if (jSONObject.has("rating")) {
                        fOptDouble2 = (float) jSONObject.optDouble("rating", -1.0d);
                        d = fOptDouble2;
                        if (d <= 5.0d || d < 0.0d) {
                            ks9Var4.a("rating").g(3007, Float.toString(fOptDouble2));
                        } else {
                            ao9Var.h = Float.valueOf(fOptDouble2);
                        }
                    }
                    zHas = jSONObject.has("ctaText");
                    ao9Var.d = jSONObject.optString("ctaText", ao9Var.g());
                    if (!TextUtils.isEmpty(strOptString12) && !zHas) {
                        ks9Var4.a("ctaText").f(AuthApiStatusCodes.AUTH_APP_CERT_ERROR);
                    }
                    if (zHas && TextUtils.isEmpty(strOptString12) && TextUtils.isEmpty(strOptString11)) {
                        ks9Var4.a("ctaText").g(3008, "ctaText is not empty, but ctaLink and trackingLink are empty");
                    }
                    strOptString5 = jSONObject.optString("iconLink");
                    iOptInt2 = jSONObject.optInt("iconWidth");
                    iOptInt3 = jSONObject.optInt("iconHeight");
                    if (!TextUtils.isEmpty(strOptString5)) {
                        ao9Var.q = h14.a(iOptInt2, iOptInt3, strOptString5);
                    }
                    strOptString6 = jSONObject.optString("imageLink");
                    iOptInt4 = jSONObject.optInt("imageWidth");
                    iOptInt5 = jSONObject.optInt("imageHeight");
                    if (!TextUtils.isEmpty(strOptString6)) {
                        ao9Var.p = h14.a(iOptInt4, iOptInt5, strOptString6);
                    }
                    TextUtils.isEmpty(jSONObject.optString("imageDominantColor"));
                    i4 = liaVar.o;
                    if (i4 >= 0) {
                        ao9Var.r = new t2a(i4);
                    } else if (jSONObject.has("clickArea")) {
                        iOptInt6 = jSONObject.optInt("clickArea");
                        if (iOptInt6 <= 0) {
                            ks9Var4.a("clickArea").g(3007, Integer.toString(iOptInt6));
                        } else {
                            ao9Var.r = new t2a(iOptInt6);
                        }
                    } else if (jSONObject.has("extendedClickArea")) {
                        ks9Var4.a("extendedClickArea").f(3004);
                        if (jSONObject.optBoolean("extendedClickArea", true)) {
                            ao9Var.r = t2a.r;
                        } else {
                            ao9Var.r = t2a.s;
                        }
                    }
                    ao9Var.n = jSONObject.optString("advertisingLabel", "");
                    if (jSONObject.has("url_types")) {
                        ao9Var.o = Arrays.asList(jSONObject.optString("url_types").split(StringUtils.COMMA));
                    }
                    qVarA = liaVar.H;
                    if (qVarA == null) {
                        jSONObjectOptJSONObject6 = jSONObject.optJSONObject("adChoices");
                        ks9VarA4 = ks9Var4.a("adChoices");
                        if (jSONObjectOptJSONObject6 != null && (qVarA = q0.a(jSONObjectOptJSONObject6, ks9VarA4)) == null) {
                            ks9VarA4.g(3007, "adChoices element is not parsed");
                        }
                    }
                    ao9Var.H = qVarA;
                    jSONObjectOptJSONObject3 = jSONObject.optJSONObject("viewability");
                    if (jSONObjectOptJSONObject3 != null) {
                        ks9VarA3 = ks9Var4.a("viewability");
                        a0aVar = ao9Var.b;
                        if (jSONObjectOptJSONObject3.has("percent")) {
                            iOptInt7 = jSONObjectOptJSONObject3.optInt("percent");
                            if (iOptInt7 >= 5 || iOptInt7 > 100) {
                                ks9VarA3.a("percent").c(3007, Integer.toString(iOptInt7));
                            } else {
                                a0aVar.b = iOptInt7 / 100.0f;
                            }
                        }
                        if (jSONObjectOptJSONObject3.has("rate")) {
                            dOptDouble = jSONObjectOptJSONObject3.optDouble("rate");
                            if (dOptDouble >= 0.01d) {
                                a0aVar.a = (float) dOptDouble;
                            } else {
                                ks9VarA3.a("rate").c(3007, Double.toString(dOptDouble));
                            }
                        }
                        if (jSONObjectOptJSONObject3.has(TypedValues.TransitionType.S_DURATION)) {
                            fOptDouble = (float) jSONObjectOptJSONObject3.optDouble(TypedValues.TransitionType.S_DURATION);
                            if (!Float.isNaN(fOptDouble) || fOptDouble < 0.0d) {
                                ks9VarA3.a(TypedValues.TransitionType.S_DURATION).g(3007, Float.toString(fOptDouble));
                            } else {
                                a0aVar.c = fOptDouble;
                            }
                        } else {
                            ks9VarA3.a(TypedValues.TransitionType.S_DURATION).f(AuthApiStatusCodes.AUTH_APP_CERT_ERROR);
                        }
                    }
                    ao9Var.u = jSONObject.optBoolean("isAppInWhitelist", ao9Var.u);
                    ao9Var.v = jSONObject.optBoolean("not_ad", ao9Var.v);
                    agaVarA = liaVar.G;
                    jSONObjectOptJSONObject4 = jSONObject.optJSONObject("omdata");
                    if (jSONObjectOptJSONObject4 != null) {
                        agaVarA = p46.a(agaVarA, jSONObjectOptJSONObject4);
                    }
                    ao9Var.I = agaVarA;
                    if (TextUtils.isEmpty(strOptString11)) {
                        zStartsWith = false;
                    } else {
                        strTrim = strOptString11.trim();
                        if (strTrim.isEmpty() && URLUtil.isHttpsUrl(strTrim)) {
                            try {
                                url = new URL(strTrim);
                                host = url.getHost();
                                if (TextUtils.isEmpty(host) && (host.equals("mail.ru") || host.endsWith(".mail.ru"))) {
                                    zStartsWith = url.getPath().startsWith("/redir");
                                } else {
                                    zStartsWith = false;
                                }
                            } catch (MalformedURLException unused) {
                            }
                        } else {
                            zStartsWith = false;
                        }
                    }
                    if (!zStartsWith) {
                        ks9Var4 = new ks9(ks9Var4.a, ks9Var4.b, false);
                    }
                    n4a n4aVar3 = n4aVar;
                    this.a.c(n4aVar3, jSONObject, ao9Var.z, ks9Var4);
                    jSONObjectOptJSONObject5 = jSONObject.optJSONObject("featureFlags");
                    if (jSONObjectOptJSONObject5 != null) {
                        try {
                            jSONObjectOptJSONObject5.optBoolean("ignoreBannerStatOnCardClick");
                        } catch (Throwable unused2) {
                        }
                    }
                    zn9Var.getClass();
                    if (jSONObjectOptJSONObject5 != null) {
                        try {
                            jSONObjectOptJSONObject5.optBoolean("useClickHandlerV2");
                        } catch (Throwable unused3) {
                        }
                    }
                    c(jSONObjectOptJSONObject5, ao9Var);
                    if (jSONObjectOptJSONObject5 != null) {
                        try {
                            zOptBoolean = jSONObjectOptJSONObject5.optBoolean("playableUrlInterceptEnabled");
                        } catch (Throwable unused4) {
                            zOptBoolean = false;
                        }
                    } else {
                        zOptBoolean = false;
                    }
                    zn9 zn9Var2 = zn9Var;
                    zn9Var2.a = zOptBoolean;
                    if (jSONObjectOptJSONObject5 != null) {
                        try {
                            zOptBoolean2 = jSONObjectOptJSONObject5.optBoolean("useKotlinInterstitialV2");
                        } catch (Throwable unused5) {
                            zOptBoolean2 = false;
                        }
                    } else {
                        zOptBoolean2 = false;
                    }
                    zn9Var2.b = zOptBoolean2;
                    if (jSONObjectOptJSONObject5 != null) {
                        try {
                            jSONObjectOptJSONObject5.optBoolean("playbackTrackerTimingEnabled");
                        } catch (Throwable unused6) {
                        }
                    }
                    if (jSONObjectOptJSONObject5 != null) {
                        try {
                            jSONObjectOptJSONObject5.optBoolean("totalBannerSquareRecalculationEnabled");
                        } catch (Throwable unused7) {
                        }
                    }
                    if (jSONObjectOptJSONObject5 != null) {
                        try {
                            zOptBoolean3 = jSONObjectOptJSONObject5.optBoolean("showConsistencyCheckEnabled");
                        } catch (Throwable unused8) {
                            zOptBoolean3 = false;
                        }
                    } else {
                        zOptBoolean3 = false;
                    }
                    zn9Var2.c = zOptBoolean3;
                    if (jSONObjectOptJSONObject5 != null) {
                        try {
                            zOptBoolean4 = jSONObjectOptJSONObject5.optBoolean("playbackViewDataLogEnabled");
                        } catch (Throwable unused9) {
                            zOptBoolean4 = false;
                        }
                    } else {
                        zOptBoolean4 = false;
                    }
                    zn9Var2.d = zOptBoolean4;
                    m1.d(n4aVar3, "load", 0, null);
                }
                ks9VarA5.f(AuthApiStatusCodes.AUTH_APP_CERT_ERROR);
                mlVar = null;
                arrayList = new ArrayList();
                if (mlVar == null) {
                    jSONArray = (JSONArray) mlVar.a;
                    i = 0;
                    while (i < jSONArray.length()) {
                        ks9VarD = ((ks9) mlVar.b).d(i);
                        ml mlVar3 = mlVar;
                        jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                        if (jSONObjectOptJSONObject == null) {
                            ks9VarD.f(3007);
                            hw9Var = null;
                        } else {
                            hw9Var = new hw9(jSONObjectOptJSONObject, ks9VarD);
                        }
                        if (hw9Var == null) {
                            n4aVar2 = n4aVar2;
                            str = str3;
                            str4 = str4;
                            i2 = i;
                        } else {
                            aVar = new rw9.a();
                            strB = hw9Var.b(str3);
                            str = str3;
                            ks9Var2 = (ks9) hw9Var.c;
                            aVar.a = strB;
                            i2 = i;
                            if (strB != null) {
                                ks9Var2.g(3007, aVar.a);
                                aVar.a = null;
                            }
                            aVar.b = hw9Var.a("minHeight");
                            ks9VarA = ks9Var2.a("image");
                            jSONObject2 = (JSONObject) hw9Var.b;
                            if (jSONObject2.has("image")) {
                                ks9VarA.f(AuthApiStatusCodes.AUTH_APP_CERT_ERROR);
                            } else {
                                jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("image");
                                if (jSONObjectOptJSONObject2 == null) {
                                    ks9VarA.f(3007);
                                } else {
                                    hw9Var2 = new hw9(jSONObjectOptJSONObject2, ks9VarA);
                                }
                                if (hw9Var2 == null) {
                                    n4aVar2 = n4aVar2;
                                    str4 = str4;
                                } else {
                                    ks9Var3 = (ks9) hw9Var2.c;
                                    si0Var = new si0();
                                    si0Var.c = hw9Var2.b("url");
                                    iA = hw9Var2.a(str4);
                                    si0Var.a = iA;
                                    if (iA <= 0) {
                                        i3 = 3007;
                                        ks9Var3.a(str4).g(3007, Integer.toString(si0Var.a));
                                    } else {
                                        i3 = 3007;
                                    }
                                    iA2 = hw9Var2.a(TJAdUnitConstants.String.HEIGHT);
                                    si0Var.b = iA2;
                                    if (iA2 <= 0) {
                                        ks9Var3.a(TJAdUnitConstants.String.HEIGHT).g(i3, Integer.toString(si0Var.b));
                                    }
                                    if (TextUtils.isEmpty((String) si0Var.c)) {
                                    }
                                    aVar.c = si0Var2;
                                    if (aVar.a != null) {
                                        aVar = null;
                                    } else {
                                        aVar = null;
                                    }
                                    if (aVar == null) {
                                        arrayList.add(aVar);
                                    }
                                }
                                si0Var2 = null;
                                aVar.c = si0Var2;
                                if (aVar.a != null) {
                                    aVar = null;
                                } else {
                                    aVar = null;
                                }
                                if (aVar == null) {
                                    arrayList.add(aVar);
                                }
                            }
                            hw9Var2 = null;
                            if (hw9Var2 == null) {
                                n4aVar2 = n4aVar2;
                                str4 = str4;
                            } else {
                                ks9Var3 = (ks9) hw9Var2.c;
                                si0Var = new si0();
                                si0Var.c = hw9Var2.b("url");
                                iA = hw9Var2.a(str4);
                                si0Var.a = iA;
                                if (iA <= 0) {
                                    i3 = 3007;
                                    ks9Var3.a(str4).g(3007, Integer.toString(si0Var.a));
                                } else {
                                    i3 = 3007;
                                }
                                iA2 = hw9Var2.a(TJAdUnitConstants.String.HEIGHT);
                                si0Var.b = iA2;
                                if (iA2 <= 0) {
                                    ks9Var3.a(TJAdUnitConstants.String.HEIGHT).g(i3, Integer.toString(si0Var.b));
                                }
                                if (TextUtils.isEmpty((String) si0Var.c)) {
                                }
                                aVar.c = si0Var2;
                                if (aVar.a != null) {
                                    aVar = null;
                                } else {
                                    aVar = null;
                                }
                                if (aVar == null) {
                                    arrayList.add(aVar);
                                }
                            }
                            si0Var2 = null;
                            aVar.c = si0Var2;
                            if (aVar.a != null) {
                                aVar = null;
                            } else {
                                aVar = null;
                            }
                            if (aVar == null) {
                                arrayList.add(aVar);
                            }
                        }
                        i = i2 + 1;
                        mlVar = mlVar3;
                        jSONArray = jSONArray;
                        str3 = str;
                        str4 = str4;
                        n4aVar2 = n4aVar2;
                    }
                }
                n4aVar = n4aVar2;
                rw9Var.e.addAll(arrayList);
                if (rw9Var.a != -1) {
                }
                if (rw9Var != null) {
                    int i6 = rw9Var.a;
                    str2 = rw9Var.c;
                    if (str2 == null) {
                        str2 = "";
                    }
                    map = new HashMap();
                    it = rw9Var.e.iterator();
                    while (it.hasNext()) {
                        aVar2 = (rw9.a) it.next();
                        si0Var3 = aVar2.c;
                        if (si0Var3 != null) {
                            map.put(aVar2.a, new ln2(aVar2.b, (String) si0Var3.c, si0Var3.a, si0Var3.b));
                            it = it;
                        }
                    }
                    ao9Var.w = i6;
                    ao9Var.f = str2;
                } else {
                    strOptString = jSONObject.optString("disclaimer");
                    if (!TextUtils.isEmpty(strOptString)) {
                        ao9Var.f = strOptString;
                    }
                    if (jSONObject.has("disclaimer_id")) {
                        iOptInt = jSONObject.optInt("disclaimer_id", -1);
                        ks9VarA2 = ks9Var4.a("disclaimer_id");
                        if (iOptInt != 0) {
                            switch (iOptInt) {
                                case 8:
                                case 9:
                                case 10:
                                case 11:
                                case 12:
                                case 13:
                                    break;
                                default:
                                    ks9VarA2.c(3007, Integer.toString(iOptInt));
                                    iOptInt = 0;
                                    break;
                            }
                        }
                        ao9Var.w = iOptInt;
                    } else if (jSONObject.has("disclaimer")) {
                        ks9Var4.a("disclaimer_id").g(AuthApiStatusCodes.AUTH_APP_CERT_ERROR, "has disclaimer, but has no disclaimer_id");
                    }
                    if (ao9Var.w != 0) {
                        new HashMap();
                    }
                }
                if (jSONObject.has("votes")) {
                    ao9Var.i = Integer.valueOf(iOptInt8);
                }
                strOptString2 = jSONObject.optString("category");
                if (!TextUtils.isEmpty(strOptString2)) {
                    ao9Var.j = strOptString2;
                }
                strOptString3 = jSONObject.optString("subcategory");
                if (!TextUtils.isEmpty(strOptString3)) {
                    ao9Var.k = strOptString3;
                }
                strOptString4 = jSONObject.optString(DynamicLink.Builder.KEY_DOMAIN);
                if (!TextUtils.isEmpty(strOptString4)) {
                    ao9Var.l = strOptString4;
                }
                ao9Var.z = (float) jSONObject.optDouble(TypedValues.TransitionType.S_DURATION, ao9Var.z);
                if (jSONObject.has("rating")) {
                    fOptDouble2 = (float) jSONObject.optDouble("rating", -1.0d);
                    d = fOptDouble2;
                    if (d <= 5.0d) {
                        ks9Var4.a("rating").g(3007, Float.toString(fOptDouble2));
                    } else {
                        ks9Var4.a("rating").g(3007, Float.toString(fOptDouble2));
                    }
                }
                zHas = jSONObject.has("ctaText");
                ao9Var.d = jSONObject.optString("ctaText", ao9Var.g());
                if (!TextUtils.isEmpty(strOptString12)) {
                    ks9Var4.a("ctaText").f(AuthApiStatusCodes.AUTH_APP_CERT_ERROR);
                }
                if (zHas) {
                    ks9Var4.a("ctaText").g(3008, "ctaText is not empty, but ctaLink and trackingLink are empty");
                }
                strOptString5 = jSONObject.optString("iconLink");
                iOptInt2 = jSONObject.optInt("iconWidth");
                iOptInt3 = jSONObject.optInt("iconHeight");
                if (!TextUtils.isEmpty(strOptString5)) {
                    ao9Var.q = h14.a(iOptInt2, iOptInt3, strOptString5);
                }
                strOptString6 = jSONObject.optString("imageLink");
                iOptInt4 = jSONObject.optInt("imageWidth");
                iOptInt5 = jSONObject.optInt("imageHeight");
                if (!TextUtils.isEmpty(strOptString6)) {
                    ao9Var.p = h14.a(iOptInt4, iOptInt5, strOptString6);
                }
                TextUtils.isEmpty(jSONObject.optString("imageDominantColor"));
                i4 = liaVar.o;
                if (i4 >= 0) {
                    ao9Var.r = new t2a(i4);
                } else if (jSONObject.has("clickArea")) {
                    iOptInt6 = jSONObject.optInt("clickArea");
                    if (iOptInt6 <= 0) {
                        ks9Var4.a("clickArea").g(3007, Integer.toString(iOptInt6));
                    } else {
                        ao9Var.r = new t2a(iOptInt6);
                    }
                } else if (jSONObject.has("extendedClickArea")) {
                    ks9Var4.a("extendedClickArea").f(3004);
                    if (jSONObject.optBoolean("extendedClickArea", true)) {
                        ao9Var.r = t2a.r;
                    } else {
                        ao9Var.r = t2a.s;
                    }
                }
                ao9Var.n = jSONObject.optString("advertisingLabel", "");
                if (jSONObject.has("url_types")) {
                    ao9Var.o = Arrays.asList(jSONObject.optString("url_types").split(StringUtils.COMMA));
                }
                qVarA = liaVar.H;
                if (qVarA == null) {
                    jSONObjectOptJSONObject6 = jSONObject.optJSONObject("adChoices");
                    ks9VarA4 = ks9Var4.a("adChoices");
                    if (jSONObjectOptJSONObject6 != null) {
                        ks9VarA4.g(3007, "adChoices element is not parsed");
                    }
                }
                ao9Var.H = qVarA;
                jSONObjectOptJSONObject3 = jSONObject.optJSONObject("viewability");
                if (jSONObjectOptJSONObject3 != null) {
                    ks9VarA3 = ks9Var4.a("viewability");
                    a0aVar = ao9Var.b;
                    if (jSONObjectOptJSONObject3.has("percent")) {
                        iOptInt7 = jSONObjectOptJSONObject3.optInt("percent");
                        if (iOptInt7 >= 5) {
                            ks9VarA3.a("percent").c(3007, Integer.toString(iOptInt7));
                        } else {
                            ks9VarA3.a("percent").c(3007, Integer.toString(iOptInt7));
                        }
                    }
                    if (jSONObjectOptJSONObject3.has("rate")) {
                        dOptDouble = jSONObjectOptJSONObject3.optDouble("rate");
                        if (dOptDouble >= 0.01d) {
                            a0aVar.a = (float) dOptDouble;
                        } else {
                            ks9VarA3.a("rate").c(3007, Double.toString(dOptDouble));
                        }
                    }
                    if (jSONObjectOptJSONObject3.has(TypedValues.TransitionType.S_DURATION)) {
                        ks9VarA3.a(TypedValues.TransitionType.S_DURATION).f(AuthApiStatusCodes.AUTH_APP_CERT_ERROR);
                    } else {
                        fOptDouble = (float) jSONObjectOptJSONObject3.optDouble(TypedValues.TransitionType.S_DURATION);
                        if (Float.isNaN(fOptDouble)) {
                            ks9VarA3.a(TypedValues.TransitionType.S_DURATION).g(3007, Float.toString(fOptDouble));
                        } else {
                            ks9VarA3.a(TypedValues.TransitionType.S_DURATION).g(3007, Float.toString(fOptDouble));
                        }
                    }
                }
                ao9Var.u = jSONObject.optBoolean("isAppInWhitelist", ao9Var.u);
                ao9Var.v = jSONObject.optBoolean("not_ad", ao9Var.v);
                agaVarA = liaVar.G;
                jSONObjectOptJSONObject4 = jSONObject.optJSONObject("omdata");
                if (jSONObjectOptJSONObject4 != null) {
                    agaVarA = p46.a(agaVarA, jSONObjectOptJSONObject4);
                }
                ao9Var.I = agaVarA;
                if (TextUtils.isEmpty(strOptString11)) {
                    zStartsWith = false;
                } else {
                    strTrim = strOptString11.trim();
                    if (strTrim.isEmpty()) {
                        zStartsWith = false;
                    } else {
                        url = new URL(strTrim);
                        host = url.getHost();
                        if (TextUtils.isEmpty(host)) {
                            zStartsWith = false;
                        } else {
                            zStartsWith = url.getPath().startsWith("/redir");
                        }
                    }
                }
                if (!zStartsWith) {
                    ks9Var4 = new ks9(ks9Var4.a, ks9Var4.b, false);
                }
                n4a n4aVar4 = n4aVar;
                this.a.c(n4aVar4, jSONObject, ao9Var.z, ks9Var4);
                jSONObjectOptJSONObject5 = jSONObject.optJSONObject("featureFlags");
                if (jSONObjectOptJSONObject5 != null) {
                    jSONObjectOptJSONObject5.optBoolean("ignoreBannerStatOnCardClick");
                }
                zn9Var.getClass();
                if (jSONObjectOptJSONObject5 != null) {
                    jSONObjectOptJSONObject5.optBoolean("useClickHandlerV2");
                }
                c(jSONObjectOptJSONObject5, ao9Var);
                if (jSONObjectOptJSONObject5 != null) {
                    zOptBoolean = jSONObjectOptJSONObject5.optBoolean("playableUrlInterceptEnabled");
                } else {
                    zOptBoolean = false;
                }
                zn9 zn9Var3 = zn9Var;
                zn9Var3.a = zOptBoolean;
                if (jSONObjectOptJSONObject5 != null) {
                    zOptBoolean2 = jSONObjectOptJSONObject5.optBoolean("useKotlinInterstitialV2");
                } else {
                    zOptBoolean2 = false;
                }
                zn9Var3.b = zOptBoolean2;
                if (jSONObjectOptJSONObject5 != null) {
                    jSONObjectOptJSONObject5.optBoolean("playbackTrackerTimingEnabled");
                }
                if (jSONObjectOptJSONObject5 != null) {
                    jSONObjectOptJSONObject5.optBoolean("totalBannerSquareRecalculationEnabled");
                }
                if (jSONObjectOptJSONObject5 != null) {
                    zOptBoolean3 = jSONObjectOptJSONObject5.optBoolean("showConsistencyCheckEnabled");
                } else {
                    zOptBoolean3 = false;
                }
                zn9Var3.c = zOptBoolean3;
                if (jSONObjectOptJSONObject5 != null) {
                    zOptBoolean4 = jSONObjectOptJSONObject5.optBoolean("playbackViewDataLogEnabled");
                } else {
                    zOptBoolean4 = false;
                }
                zn9Var3.d = zOptBoolean4;
                m1.d(n4aVar4, "load", 0, null);
            }
            n4aVar = n4aVar2;
            zn9Var = zn9Var;
            jSONObjectOptJSONObject5 = jSONObject.optJSONObject("featureFlags");
            if (jSONObjectOptJSONObject5 != null) {
                jSONObjectOptJSONObject5.optBoolean("ignoreBannerStatOnCardClick");
            }
            zn9Var.getClass();
            if (jSONObjectOptJSONObject5 != null) {
                jSONObjectOptJSONObject5.optBoolean("useClickHandlerV2");
            }
            c(jSONObjectOptJSONObject5, ao9Var);
            if (jSONObjectOptJSONObject5 != null) {
                zOptBoolean = jSONObjectOptJSONObject5.optBoolean("playableUrlInterceptEnabled");
            } else {
                zOptBoolean = false;
            }
            zn9 zn9Var4 = zn9Var;
            zn9Var4.a = zOptBoolean;
            if (jSONObjectOptJSONObject5 != null) {
                zOptBoolean2 = jSONObjectOptJSONObject5.optBoolean("useKotlinInterstitialV2");
            } else {
                zOptBoolean2 = false;
            }
            zn9Var4.b = zOptBoolean2;
            if (jSONObjectOptJSONObject5 != null) {
                jSONObjectOptJSONObject5.optBoolean("playbackTrackerTimingEnabled");
            }
            if (jSONObjectOptJSONObject5 != null) {
                jSONObjectOptJSONObject5.optBoolean("totalBannerSquareRecalculationEnabled");
            }
            if (jSONObjectOptJSONObject5 != null) {
                zOptBoolean3 = jSONObjectOptJSONObject5.optBoolean("showConsistencyCheckEnabled");
            } else {
                zOptBoolean3 = false;
            }
            zn9Var4.c = zOptBoolean3;
            if (jSONObjectOptJSONObject5 != null) {
                zOptBoolean4 = jSONObjectOptJSONObject5.optBoolean("playbackViewDataLogEnabled");
            } else {
                zOptBoolean4 = false;
            }
            zn9Var4.d = zOptBoolean4;
        } catch (Throwable unused10) {
        }
        rw9Var = null;
        if (rw9Var != null) {
            int i7 = rw9Var.a;
            str2 = rw9Var.c;
            if (str2 == null) {
                str2 = "";
            }
            map = new HashMap();
            it = rw9Var.e.iterator();
            while (it.hasNext()) {
                aVar2 = (rw9.a) it.next();
                si0Var3 = aVar2.c;
                if (si0Var3 != null) {
                    map.put(aVar2.a, new ln2(aVar2.b, (String) si0Var3.c, si0Var3.a, si0Var3.b));
                    it = it;
                }
            }
            ao9Var.w = i7;
            ao9Var.f = str2;
        } else {
            strOptString = jSONObject.optString("disclaimer");
            if (!TextUtils.isEmpty(strOptString)) {
                ao9Var.f = strOptString;
            }
            if (jSONObject.has("disclaimer_id")) {
                iOptInt = jSONObject.optInt("disclaimer_id", -1);
                ks9VarA2 = ks9Var4.a("disclaimer_id");
                if (iOptInt != 0) {
                    switch (iOptInt) {
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 13:
                            break;
                        default:
                            ks9VarA2.c(3007, Integer.toString(iOptInt));
                            iOptInt = 0;
                            break;
                    }
                }
                ao9Var.w = iOptInt;
            } else if (jSONObject.has("disclaimer")) {
                ks9Var4.a("disclaimer_id").g(AuthApiStatusCodes.AUTH_APP_CERT_ERROR, "has disclaimer, but has no disclaimer_id");
            }
            if (ao9Var.w != 0) {
                new HashMap();
            }
        }
        if (jSONObject.has("votes")) {
            ao9Var.i = Integer.valueOf(iOptInt8);
        }
        strOptString2 = jSONObject.optString("category");
        if (!TextUtils.isEmpty(strOptString2)) {
            ao9Var.j = strOptString2;
        }
        strOptString3 = jSONObject.optString("subcategory");
        if (!TextUtils.isEmpty(strOptString3)) {
            ao9Var.k = strOptString3;
        }
        strOptString4 = jSONObject.optString(DynamicLink.Builder.KEY_DOMAIN);
        if (!TextUtils.isEmpty(strOptString4)) {
            ao9Var.l = strOptString4;
        }
        ao9Var.z = (float) jSONObject.optDouble(TypedValues.TransitionType.S_DURATION, ao9Var.z);
        if (jSONObject.has("rating")) {
            fOptDouble2 = (float) jSONObject.optDouble("rating", -1.0d);
            d = fOptDouble2;
            if (d <= 5.0d) {
                ks9Var4.a("rating").g(3007, Float.toString(fOptDouble2));
            } else {
                ks9Var4.a("rating").g(3007, Float.toString(fOptDouble2));
            }
        }
        zHas = jSONObject.has("ctaText");
        ao9Var.d = jSONObject.optString("ctaText", ao9Var.g());
        if (!TextUtils.isEmpty(strOptString12)) {
            ks9Var4.a("ctaText").f(AuthApiStatusCodes.AUTH_APP_CERT_ERROR);
        }
        if (zHas) {
            ks9Var4.a("ctaText").g(3008, "ctaText is not empty, but ctaLink and trackingLink are empty");
        }
        strOptString5 = jSONObject.optString("iconLink");
        iOptInt2 = jSONObject.optInt("iconWidth");
        iOptInt3 = jSONObject.optInt("iconHeight");
        if (!TextUtils.isEmpty(strOptString5)) {
            ao9Var.q = h14.a(iOptInt2, iOptInt3, strOptString5);
        }
        strOptString6 = jSONObject.optString("imageLink");
        iOptInt4 = jSONObject.optInt("imageWidth");
        iOptInt5 = jSONObject.optInt("imageHeight");
        if (!TextUtils.isEmpty(strOptString6)) {
            ao9Var.p = h14.a(iOptInt4, iOptInt5, strOptString6);
        }
        TextUtils.isEmpty(jSONObject.optString("imageDominantColor"));
        i4 = liaVar.o;
        if (i4 >= 0) {
            ao9Var.r = new t2a(i4);
        } else if (jSONObject.has("clickArea")) {
            iOptInt6 = jSONObject.optInt("clickArea");
            if (iOptInt6 <= 0) {
                ks9Var4.a("clickArea").g(3007, Integer.toString(iOptInt6));
            } else {
                ao9Var.r = new t2a(iOptInt6);
            }
        } else if (jSONObject.has("extendedClickArea")) {
            ks9Var4.a("extendedClickArea").f(3004);
            if (jSONObject.optBoolean("extendedClickArea", true)) {
                ao9Var.r = t2a.r;
            } else {
                ao9Var.r = t2a.s;
            }
        }
        ao9Var.n = jSONObject.optString("advertisingLabel", "");
        if (jSONObject.has("url_types")) {
            ao9Var.o = Arrays.asList(jSONObject.optString("url_types").split(StringUtils.COMMA));
        }
        qVarA = liaVar.H;
        if (qVarA == null) {
            jSONObjectOptJSONObject6 = jSONObject.optJSONObject("adChoices");
            ks9VarA4 = ks9Var4.a("adChoices");
            if (jSONObjectOptJSONObject6 != null) {
                ks9VarA4.g(3007, "adChoices element is not parsed");
            }
        }
        ao9Var.H = qVarA;
        jSONObjectOptJSONObject3 = jSONObject.optJSONObject("viewability");
        if (jSONObjectOptJSONObject3 != null) {
            ks9VarA3 = ks9Var4.a("viewability");
            a0aVar = ao9Var.b;
            if (jSONObjectOptJSONObject3.has("percent")) {
                iOptInt7 = jSONObjectOptJSONObject3.optInt("percent");
                if (iOptInt7 >= 5) {
                    ks9VarA3.a("percent").c(3007, Integer.toString(iOptInt7));
                } else {
                    ks9VarA3.a("percent").c(3007, Integer.toString(iOptInt7));
                }
            }
            if (jSONObjectOptJSONObject3.has("rate")) {
                dOptDouble = jSONObjectOptJSONObject3.optDouble("rate");
                if (dOptDouble >= 0.01d) {
                    a0aVar.a = (float) dOptDouble;
                } else {
                    ks9VarA3.a("rate").c(3007, Double.toString(dOptDouble));
                }
            }
            if (jSONObjectOptJSONObject3.has(TypedValues.TransitionType.S_DURATION)) {
                ks9VarA3.a(TypedValues.TransitionType.S_DURATION).f(AuthApiStatusCodes.AUTH_APP_CERT_ERROR);
            } else {
                fOptDouble = (float) jSONObjectOptJSONObject3.optDouble(TypedValues.TransitionType.S_DURATION);
                if (Float.isNaN(fOptDouble)) {
                    ks9VarA3.a(TypedValues.TransitionType.S_DURATION).g(3007, Float.toString(fOptDouble));
                } else {
                    ks9VarA3.a(TypedValues.TransitionType.S_DURATION).g(3007, Float.toString(fOptDouble));
                }
            }
        }
        ao9Var.u = jSONObject.optBoolean("isAppInWhitelist", ao9Var.u);
        ao9Var.v = jSONObject.optBoolean("not_ad", ao9Var.v);
        agaVarA = liaVar.G;
        jSONObjectOptJSONObject4 = jSONObject.optJSONObject("omdata");
        if (jSONObjectOptJSONObject4 != null) {
            agaVarA = p46.a(agaVarA, jSONObjectOptJSONObject4);
        }
        ao9Var.I = agaVarA;
        if (TextUtils.isEmpty(strOptString11)) {
            zStartsWith = false;
        } else {
            strTrim = strOptString11.trim();
            if (strTrim.isEmpty()) {
                zStartsWith = false;
            } else {
                url = new URL(strTrim);
                host = url.getHost();
                if (TextUtils.isEmpty(host)) {
                    zStartsWith = false;
                } else {
                    zStartsWith = url.getPath().startsWith("/redir");
                }
            }
        }
        if (!zStartsWith) {
            ks9Var4 = new ks9(ks9Var4.a, ks9Var4.b, false);
        }
        n4a n4aVar5 = n4aVar;
        this.a.c(n4aVar5, jSONObject, ao9Var.z, ks9Var4);
        m1.d(n4aVar5, "load", 0, null);
    }
}
