package io.appmetrica.analytics.idsync.impl;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.aa4;
import defpackage.ha1;
import defpackage.qn1;
import io.appmetrica.analytics.coreapi.internal.data.JsonParser;
import io.appmetrica.analytics.coreutils.internal.parsing.RemoteConfigJsonUtils;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.idsync.impl.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0766d implements JsonParser {
    public final C0768f a;
    public final String b = "id_sync";
    public final String c = "id_sync";
    public final String d = "launch_delay_seconds";
    public final String e = "requests";
    public final String f = ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY;
    public final String g = "url";
    public final String h = "headers";
    public final String i = "resend_interval_for_valid_response";
    public final String j = "resend_interval_for_invalid_response";
    public final String k = "valid_response_codes";
    public final String l = "preconditions";
    public final String m = "network";
    public final String n = "cell";
    public final String o = "report_event_enabled";
    public final String p = "report_url";

    public C0766d(C0768f c0768f) {
        this.a = c0768f;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Parser
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0765c parse(JSONObject jSONObject) {
        n[] nVarArr;
        JSONArray jSONArray;
        C0774l[] c0774lArr;
        byte[][] bArr;
        int[] iArr;
        int[] iArrS0;
        int i;
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(this.c);
        if (jSONObjectOptJSONObject == null) {
            jSONObjectOptJSONObject = new JSONObject();
        }
        p pVar = new p();
        pVar.a = RemoteConfigJsonUtils.extractFeature(jSONObject, this.b, pVar.a);
        o oVar = new o();
        oVar.a = RemoteConfigJsonUtils.extractMillisFromSecondsOrDefault(jSONObjectOptJSONObject, this.d, oVar.a);
        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray(this.e);
        int i2 = 0;
        if (jSONArrayOptJSONArray == null) {
            nVarArr = new n[0];
        } else {
            int length = jSONArrayOptJSONArray.length();
            n[] nVarArr2 = new n[length];
            int i3 = 0;
            while (i3 < length) {
                JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i3);
                n nVar = new n();
                if (jSONObjectOptJSONObject2 == null) {
                    jSONArray = jSONArrayOptJSONArray;
                    i = i2;
                } else {
                    String strOptString = jSONObjectOptJSONObject2.optString(this.f);
                    Charset charset = ha1.b;
                    nVar.a = strOptString.getBytes(charset);
                    JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject(this.l);
                    C0775m c0775m = new C0775m();
                    if (jSONObjectOptJSONObject3 != null && aa4.e(jSONObjectOptJSONObject3.optString(this.m), this.n)) {
                        c0775m.a = 1;
                    }
                    nVar.b = c0775m;
                    nVar.c = jSONObjectOptJSONObject2.optString(this.g).getBytes(charset);
                    JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject2.optJSONObject(this.h);
                    if (jSONObjectOptJSONObject4 == null) {
                        c0774lArr = new C0774l[i2];
                        jSONArray = jSONArrayOptJSONArray;
                    } else {
                        ArrayList arrayList = new ArrayList();
                        Iterator<String> itKeys = jSONObjectOptJSONObject4.keys();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            C0774l c0774l = new C0774l();
                            c0774l.a = next.getBytes(ha1.b);
                            JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject4.optJSONArray(next);
                            if (jSONArrayOptJSONArray2 == null) {
                                bArr = new byte[i2][];
                            } else {
                                int length2 = jSONArrayOptJSONArray2.length();
                                byte[][] bArr2 = new byte[length2][];
                                int i4 = 0;
                                while (i4 < length2) {
                                    byte[][] bArr3 = bArr2;
                                    int i5 = i4;
                                    bArr3[i5] = jSONArrayOptJSONArray2.optString(i4).getBytes(ha1.b);
                                    i4 = i5 + 1;
                                    bArr2 = bArr3;
                                }
                                bArr = bArr2;
                            }
                            c0774l.b = bArr;
                            arrayList.add(c0774l);
                            jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                            i2 = 0;
                        }
                        jSONArray = jSONArrayOptJSONArray;
                        c0774lArr = (C0774l[]) arrayList.toArray(new C0774l[i2]);
                    }
                    nVar.d = c0774lArr;
                    nVar.e = RemoteConfigJsonUtils.extractMillisFromSecondsOrDefault(jSONObjectOptJSONObject2, this.i, nVar.e);
                    nVar.f = RemoteConfigJsonUtils.extractMillisFromSecondsOrDefault(jSONObjectOptJSONObject2, this.j, nVar.f);
                    JSONArray jSONArrayOptJSONArray3 = jSONObjectOptJSONObject2.optJSONArray(this.k);
                    if (jSONArrayOptJSONArray3 == null) {
                        iArr = new int[0];
                    } else {
                        int length3 = jSONArrayOptJSONArray3.length();
                        int[] iArr2 = new int[length3];
                        for (int i6 = 0; i6 < length3; i6++) {
                            iArr2[i6] = jSONArrayOptJSONArray3.optInt(i6);
                        }
                        iArr = iArr2;
                    }
                    ArrayList arrayList2 = new ArrayList();
                    for (int i7 : iArr) {
                        if (i7 != 0) {
                            arrayList2.add(Integer.valueOf(i7));
                        }
                    }
                    if (arrayList2.isEmpty()) {
                        arrayList2 = null;
                    }
                    if (arrayList2 != null) {
                        iArrS0 = qn1.s0(arrayList2);
                        i = 0;
                    } else {
                        i = 0;
                        iArrS0 = new int[]{200};
                    }
                    nVar.g = iArrS0;
                    nVar.h = jSONObjectOptJSONObject2.optBoolean(this.o, nVar.h);
                    nVar.i = jSONObjectOptJSONObject2.optString(this.p);
                }
                nVarArr2[i3] = nVar;
                i3++;
                i2 = i;
                jSONArrayOptJSONArray = jSONArray;
            }
            nVarArr = nVarArr2;
        }
        oVar.b = nVarArr;
        pVar.b = oVar;
        return this.a.toModel(pVar);
    }

    public final C0765c b(JSONObject jSONObject) {
        return (C0765c) JsonParser.DefaultImpls.parseOrNull(this, jSONObject);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Parser
    public final Object parseOrNull(JSONObject jSONObject) {
        return (C0765c) JsonParser.DefaultImpls.parseOrNull(this, jSONObject);
    }
}
