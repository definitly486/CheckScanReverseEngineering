package yads;

import android.content.Context;
import android.net.Uri;
import defpackage.fh8;
import defpackage.to3;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class cp extends r06 {
    public final e4 B;
    public final q84 C;
    public final String D;
    public final ng4 E;
    public final gj5 F;
    public final cj5 G;
    public final d5 H;
    public final Context I;
    public final defpackage.cl4 J;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cp(Context context, e4 e4Var, q84 q84Var, String str, String str2, ng4 ng4Var, qp qpVar, ds dsVar, ug4 ug4Var, gj5 gj5Var, cj5 cj5Var, d5 d5Var, v8 v8Var) {
        Integer num;
        zg5 zg5Var;
        super(context, e4Var, 1, str, dsVar, e4Var, ug4Var, qpVar, q84Var);
        e4Var.c().getClass();
        this.B = e4Var;
        this.C = q84Var;
        this.D = str2;
        this.E = ng4Var;
        this.F = gj5Var;
        this.G = cj5Var;
        this.H = d5Var;
        this.I = context.getApplicationContext();
        this.J = new fh8(new to3(1, context, this));
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        fe5 fe5VarA = zg5Var2.a(context);
        this.o = v8Var.a(context, (fe5VarA == null || (num = fe5VarA.x0) == null) ? e4Var.o : num.intValue());
    }

    /* JADX WARN: Code duplicated, block: B:90:0x01e2 A[PHI: r17
      0x01e2: PHI (r17v4 ??) = (r17v3 ??), (r17v2 ??), (r17v9 ??), (r17v9 ??) binds: [B:91:0x01e5, B:160:0x01e2, B:78:0x01a0, B:86:0x01ce] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:91:0x01e5  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.util.Locale[]] */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v12, types: [java.util.Locale] */
    /* JADX WARN: Type inference failed for: r17v14 */
    /* JADX WARN: Type inference failed for: r17v15 */
    /* JADX WARN: Type inference failed for: r17v16 */
    /* JADX WARN: Type inference failed for: r17v17 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Type inference failed for: r17v9 */
    /* JADX WARN: Type inference failed for: r7v3, types: [yads.n70] */
    @Override // yads.r06
    public final z85 a(en4 en4Var, int i) {
        Map mapA;
        Integer numValueOf;
        Integer numValueOf2;
        Long lValueOf;
        Object objA;
        o54 o54Var;
        ?? r17;
        Integer numValueOf3;
        long j;
        if (b(en4Var, i)) {
            Map map = en4Var.c;
            Map map2 = defpackage.mx2.b;
            if (map == null) {
                map = map2;
            }
            a(map);
            if (204 != i) {
                String strB = v83.b(map, oa3.AD_TYPE);
                if (strB == null) {
                    strB = "";
                }
                n70.c.getClass();
                n70 n70VarA = m70.a(strB);
                e4 e4Var = this.B;
                if (n70VarA != e4Var.a) {
                    return new z85(new i4(o4.REQUEST_FAILED_INVALID_AD_TYPE, en4Var));
                }
                hn4 hn4Var = new hn4(e4Var, new c95(this.E.a));
                this.G.a(map, false);
                int i2 = en4Var.a;
                b95 b95Var = new b95(en4Var.b);
                Map map3 = en4Var.c;
                if (map3 != null) {
                    map2 = map3;
                }
                a95 a95Var = new a95(i2, b95Var, map2);
                int iC = v83.c(map, oa3.AD_HEADER_WIDTH);
                int iC2 = v83.c(map, oa3.AD_HEADER_HEIGHT);
                String strB2 = v83.b(map, oa3.AD_TYPE_FORMAT);
                String strB3 = v83.b(map, oa3.AD_PRODUCT_TYPE);
                String strB4 = v83.b(map, oa3.AD_INFO);
                String strB5 = v83.b(map, oa3.AD_ANALYTICS_PARAMETERS);
                if (strB5 != null) {
                    hn4Var.h.getClass();
                    mapA = qe.a(strB5);
                } else {
                    mapA = null;
                }
                sl5 sl5Var = hn4Var.a.d.a;
                rl5 rl5VarB = sl5Var != null ? sl5Var.b() : null;
                String strB6 = v83.b(map, oa3.AD_CLOSE_BUTTON_DELAY);
                int i3 = ya.b;
                if (strB6 != null) {
                    try {
                        numValueOf = Integer.valueOf(strB6);
                    } catch (NumberFormatException unused) {
                        numValueOf = null;
                    }
                } else {
                    numValueOf = null;
                }
                Long lValueOf2 = numValueOf != null ? Long.valueOf(((long) numValueOf.intValue()) * hn4.j) : null;
                String strB7 = v83.b(map, oa3.AD_REWARD_DELAY);
                int i4 = ya.b;
                if (strB7 != null) {
                    try {
                        numValueOf2 = Integer.valueOf(strB7);
                    } catch (NumberFormatException unused2) {
                        numValueOf2 = null;
                    }
                } else {
                    numValueOf2 = null;
                }
                if (numValueOf2 != null) {
                    long jIntValue = numValueOf2.intValue();
                    j = hn4.j;
                    lValueOf = Long.valueOf(jIntValue * j);
                } else {
                    lValueOf = null;
                }
                hn4Var.g.getClass();
                String strB8 = v83.b(map, oa3.AD_LANGUAGE);
                ?? availableLocales = Locale.getAvailableLocales();
                int length = availableLocales.length;
                int i5 = 0;
                ?? r18 = j;
                while (i5 < length) {
                    r18 = availableLocales[i5];
                    if (defpackage.aa4.e(r18.getLanguage(), strB8)) {
                        new Locale(strB8);
                        break;
                    }
                    i5++;
                    r18 = r18;
                }
                String strB9 = v83.b(map, oa3.AD_ROTATION_ENABLED);
                if (strB9 != null) {
                    Boolean.parseBoolean(strB9);
                }
                String strB10 = v83.b(map, oa3.AD_NON_SKIPPABLE_AD_ENABLED);
                if (strB10 != null) {
                    Boolean.parseBoolean(strB10);
                }
                boolean zA = v83.a(map, oa3.AD_MEDIATION);
                if (zA) {
                    objA = null;
                } else {
                    c95 c95Var = hn4Var.b;
                    mi6 mi6Var = c95Var.b;
                    objA = c95Var.a.a(new en4(a95Var.a, a95Var.b.a, a95Var.c, true));
                }
                if (zA) {
                    p54 p54Var = hn4Var.c;
                    String strA = p54Var.a.a(a95Var);
                    if (strA == null || strA.length() <= 0) {
                        r18 = n70VarA;
                        o54Var = null;
                        r17 = r18;
                    } else {
                        try {
                            try {
                                JSONObject jSONObject = new JSONObject(strA);
                                try {
                                    defpackage.xb4 xb4Var = zq3.a;
                                    JSONObject jSONObject2 = jSONObject.getJSONObject("passback_parameters");
                                    defpackage.uz4 uz4Var = new defpackage.uz4();
                                    Iterator<String> itKeys = jSONObject2.keys();
                                    while (itKeys.hasNext()) {
                                        String next = itKeys.next();
                                        n70 n70Var = n70VarA;
                                        try {
                                            uz4Var.put(next, jSONObject2.getString(next));
                                            n70VarA = n70Var;
                                        } catch (JSONException e) {
                                            e = e;
                                            throw new JSONException(e.getMessage());
                                        }
                                    }
                                    r18 = n70VarA;
                                    defpackage.uz4 uz4VarB = uz4Var.b();
                                    if (uz4VarB.isEmpty()) {
                                        o54Var = null;
                                        r17 = r18;
                                    } else {
                                        JSONArray jSONArray = jSONObject.getJSONArray("networks");
                                        ArrayList arrayList = new ArrayList();
                                        int length2 = jSONArray.length();
                                        int i6 = 0;
                                        while (i6 < length2) {
                                            JSONArray jSONArray2 = jSONArray;
                                            x54 x54VarB = p54Var.b.b(jSONArray.getJSONObject(i6));
                                            if (x54VarB != null) {
                                                arrayList.add(x54VarB);
                                            }
                                            i6++;
                                            jSONArray = jSONArray2;
                                        }
                                        if (arrayList.isEmpty()) {
                                            o54Var = null;
                                            r17 = r18;
                                        } else {
                                            o54Var = new o54(arrayList, uz4VarB);
                                            r17 = r18;
                                        }
                                    }
                                } catch (JSONException e2) {
                                    e = e2;
                                }
                            } catch (JSONException unused3) {
                            }
                        } catch (JSONException unused4) {
                            r18 = n70VarA;
                        }
                    }
                } else {
                    r18 = n70VarA;
                    o54Var = null;
                    r17 = r18;
                }
                String str = hn4Var.a.c.a;
                ArrayList arrayListD = v83.d(map, oa3.AD_EXPERIMENTS);
                hn4Var.i.getClass();
                c cVarA = e9.a(map);
                String strB11 = v83.b(map, oa3.AD_DESIGN);
                v83.c(map, oa3.AD_PREFETCH_COUNT);
                int iC3 = v83.c(map, oa3.AD_REFRESH_PERIOD);
                int iC4 = v83.c(map, oa3.AD_RELOAD_TIMEOUT);
                int iC5 = v83.c(map, oa3.AD_EMPTY_INTERVAL);
                String strB12 = v83.b(map, oa3.AD_SERVER_LOG_ID);
                boolean zA2 = v83.a(map, oa3.AD_PRELOAD_NATIVE_VIDEO);
                String strB13 = v83.b(map, oa3.AD_DESIGN_FORMAT);
                String strB14 = v83.b(map, oa3.AD_NATIVE_VIDEO_PRELOADING_STRATEGY);
                String strB15 = v83.b(map, oa3.AD_NATIVE_IMAGE_PRELOADING_STRATEGY);
                v83.b(map, oa3.AD_RENDERER);
                hn4Var.e.getClass();
                p60 p60Var = (p60) q60.a.get(v83.b(map, oa3.AD_CONTENT_TYPE));
                hn4Var.d.getClass();
                Map map4 = a95Var.c;
                String strB16 = v83.b(map4, oa3.AD_REWARD_AMOUNT);
                int i7 = ya.b;
                if (strB16 != null) {
                    try {
                        numValueOf3 = Integer.valueOf(strB16);
                    } catch (NumberFormatException unused5) {
                        numValueOf3 = null;
                    }
                } else {
                    numValueOf3 = null;
                }
                String strB17 = v83.b(map4, oa3.AD_REWARD_TYPE);
                String strA2 = strB17 != null ? vo.a(strB17) : null;
                r00 r00Var = (numValueOf3 == null || strA2 == null || strA2.length() <= 0) ? null : new r00(numValueOf3.intValue(), strA2);
                String str2 = (String) defpackage.qn1.V(v83.d(map4, oa3.AD_REWARD_URL));
                t95 t95Var = new t95(v83.a(map4, oa3.AD_SERVER_SIDE_REWARD), r00Var, (str2 == null || str2.length() <= 0) ? null : new aj5(str2));
                hn4Var.f.getClass();
                v83.b(map, oa3.AD_IMPRESSION_DATA);
                String strB18 = v83.b(map, oa3.AD_SOURCE);
                boolean zA3 = v83.a(map, oa3.AD_INCREASED_AD_SIZE);
                String strB19 = v83.b(map, oa3.AD_FEED_SESSION_DATA);
                bw2 bw2Var = strB19 != null ? new bw2(strB19) : null;
                String strB20 = v83.b(map, oa3.AD_PRELOAD_IMAGES);
                boolean z = strB20 == null ? true : Boolean.parseBoolean(strB20);
                String strB21 = v83.b(map, oa3.AD_OPEN_LINKS_IN_APP);
                boolean z2 = strB21 == null ? false : Boolean.parseBoolean(strB21);
                String strB22 = v83.b(map, oa3.AD_BASE64_ENCODING);
                if (strB22 != null) {
                    Boolean.parseBoolean(strB22);
                }
                String strB23 = v83.b(map, oa3.AD_MEDIA_BASE64_ENCODING);
                if (strB23 != null) {
                    Boolean.parseBoolean(strB23);
                }
                String strB24 = v83.b(map, oa3.AD_DIV_BASE64_ENCODING);
                if (strB24 != null) {
                    Boolean.parseBoolean(strB24);
                }
                String strB25 = v83.b(map, oa3.AD_WAIT_WEB_VIEW_LOAD_FINISH_ON_PRELOADING);
                boolean z3 = strB25 == null ? true : Boolean.parseBoolean(strB25);
                String strB26 = v83.b(map, oa3.AD_NATIVE_VIDEO_BACKGROUND_PRELOADING);
                boolean z4 = strB26 == null ? false : Boolean.parseBoolean(strB26);
                String strB27 = v83.b(map, oa3.AD_HIDE_NAVIGATION_BAR);
                boolean z5 = strB27 == null ? false : Boolean.parseBoolean(strB27);
                String strB28 = v83.b(map, oa3.AD_WEB_VIEW_CACHE_MODE);
                String strB29 = v83.b(map, oa3.AD_FORCE_VALIDATE_ASSETS);
                return new z85(new d9(r17, strB2, strB4, strB3, str, iC, iC2, arrayListD, cVarA, lValueOf2, strB11, strB18, p60Var, rl5VarB, strB12, strB13, o54Var, t95Var, lValueOf, objA, mapA, strB14, strB15, zA2, zA, iC3, iC4, iC5, zA3, bw2Var, z, z2, z3, z4, z5, strB28, strB29 == null ? false : Boolean.parseBoolean(strB29), 4096, 0), pa3.a(en4Var));
            }
        }
        int i8 = i4.d;
        return new z85(h4.a(en4Var));
    }

    @Override // yads.r75
    public final byte[] b() {
        if (1 != e()) {
            return null;
        }
        try {
            String str = this.D;
            Charset charsetForName = Charset.forName("UTF-8");
            charsetForName.getClass();
            byte[] bytes = str.getBytes(charsetForName);
            bytes.getClass();
            return bytes;
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    @Override // yads.r06, yads.r75
    public Map d() {
        defpackage.uz4 uz4Var = new defpackage.uz4();
        String strA = this.F.a();
        if (strA != null) {
        }
        uz4Var.put(oa3.AD_RENDER_AD_IDS.a(), this.H.b(this.I));
        uz4Var.put(oa3.AD_IMPRESSION_AD_IDS.a(), this.H.a(this.I));
        String strB = this.B.b();
        if (strB != null) {
        }
        uz4Var.putAll(super.d());
        return uz4Var.b();
    }

    @Override // yads.r75
    public final String g() {
        StringBuilder sb = new StringBuilder();
        if (this.c == 0) {
            sb.append(this.D);
        }
        List list = this.B.b.a.b;
        if (sb.length() > 0 && !list.isEmpty()) {
            sb.append("&");
        }
        sb.append(defpackage.qn1.a0(list, "&", null, null, 0, new defpackage.si1(6), 30));
        return Uri.parse(this.d).buildUpon().encodedQuery(sb.toString()).build().toString();
    }

    public boolean b(en4 en4Var, int i) {
        byte[] bArr;
        if (200 == i && (bArr = en4Var.b) != null) {
            if (!(bArr.length == 0)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ cp(Context context, e4 e4Var, q84 q84Var, String str, String str2, ng4 ng4Var, qp qpVar, ds dsVar, ug4 ug4Var, gj5 gj5Var, int i) {
        gj5 gj5VarA = (i & 512) != 0 ? fj5.a(context) : gj5Var;
        this(context, e4Var, q84Var, str, str2, ng4Var, qpVar, dsVar, ug4Var, gj5VarA, new cj5(gj5VarA), new d5(), new v8());
    }

    public static final wg5 a(Context context, cp cpVar) {
        return new wg5(context, cpVar.C);
    }

    @Override // yads.r06, yads.es, yads.r75
    public final hi6 a(hi6 hi6Var) {
        int length;
        en4 en4Var = hi6Var.b;
        int i = en4Var != null ? en4Var.a : -1;
        wg5 wg5Var = (wg5) this.J.getValue();
        Map mapD = d();
        byte[] bArrB = b();
        e4 e4Var = this.B;
        wg5Var.getClass();
        if (i == -1 || i == 413 || i == 408) {
            boolean z = false;
            if (bArrB != null) {
                try {
                    length = bArrB.length;
                } catch (Exception unused) {
                }
            } else {
                length = 0;
            }
            if (length > 20971520) {
                fe5 fe5VarA = wg5Var.c.a(wg5Var.a);
                if (fe5VarA != null) {
                    z = fe5VarA.P0;
                }
                if (z) {
                    Map mapA = wg5Var.a(mapD, length, e4Var, i);
                    e75 e75Var = e75.AD_LOADING_RESULT;
                    wg5Var.b.a(new g75("sdk_network_debug", defpackage.n05.n(mapA), (c) null));
                }
            }
        }
        int i2 = i4.d;
        return super.a((hi6) h4.a(hi6Var.b));
    }

    public static final CharSequence a(k35 k35Var) {
        return defpackage.cg.d(k35Var.getKey(), "=", k35Var.getValue());
    }
}
