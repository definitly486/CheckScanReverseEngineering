package defpackage;

import android.graphics.Color;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.measurement.internal.zzfy;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class p46 implements cc9, rxa {
    public static final p46 c = new p46(0);
    public static final p46 d = new p46(1);
    public static final /* synthetic */ p46 e = new p46(4);
    public static final /* synthetic */ p46 f = new p46(5);
    public final /* synthetic */ int b;

    public /* synthetic */ p46(int i) {
        this.b = i;
    }

    public static aga a(aga agaVar, JSONObject jSONObject) {
        iea ieaVar;
        if (agaVar == null) {
            String strOptString = jSONObject.optString("customReferenceData", "");
            if (strOptString.length() > 256 || strOptString.isEmpty()) {
                strOptString = null;
            }
            agaVar = new aga(jSONObject.optString("contentUrl", null), strOptString);
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("resources");
        if (jSONArrayOptJSONArray != null) {
            int length = jSONArrayOptJSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.has("url")) {
                    String strOptString2 = jSONObjectOptJSONObject.optString("url");
                    if (jSONObjectOptJSONObject.has("vendorKey") && jSONObjectOptJSONObject.has(TJAdUnitConstants.String.BEACON_PARAMS)) {
                        String strOptString3 = jSONObjectOptJSONObject.optString("vendorKey");
                        String strOptString4 = jSONObjectOptJSONObject.optString(TJAdUnitConstants.String.BEACON_PARAMS);
                        if (TextUtils.isEmpty(strOptString3) || TextUtils.isEmpty(strOptString4)) {
                            y14.r(null, "VerificationScriptResource has empty param: vendorKey=" + strOptString3 + ", verificationParameters=" + strOptString4);
                            TextUtils.isEmpty(strOptString3);
                            TextUtils.isEmpty(strOptString4);
                        } else {
                            ieaVar = new iea(strOptString2, strOptString3, strOptString4);
                        }
                    } else {
                        ieaVar = new iea(strOptString2, null, null);
                    }
                    agaVar.c.add(ieaVar);
                }
            }
        }
        return agaVar;
    }

    public static final Integer b(String str) {
        Object aVar;
        str.getClass();
        try {
            aVar = Integer.valueOf(Color.parseColor(str));
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (aVar instanceof k57.a) {
            aVar = null;
        }
        return (Integer) aVar;
    }

    @Override // defpackage.cc9
    public Object e(td4 td4Var, float f2) {
        return ie4.b(td4Var, f2);
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 4:
                List list = zzfy.a;
                return Long.valueOf(zzags.zzN());
            default:
                List list2 = zzfy.a;
                return Integer.valueOf((int) zzags.zzw());
        }
    }
}
