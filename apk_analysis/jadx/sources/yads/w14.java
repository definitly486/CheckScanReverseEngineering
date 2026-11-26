package yads;

import android.content.Context;
import androidx.media3.common.MimeTypes;
import com.tapjoy.TJAdUnitConstants;
import defpackage.k57;
import defpackage.u96;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class w14 implements lk {
    public final x04 a;
    public final ud6 b;
    public final ad3 c;
    public final xd3 d;

    public w14(Context context, q84 q84Var, yo yoVar) {
        x04 x04Var = new x04(yoVar.a);
        ud6 ud6Var = new ud6(context, q84Var, yoVar);
        ad3 ad3Var = new ad3();
        xd3 xd3Var = new xd3();
        this.a = x04Var;
        this.b = ud6Var;
        this.c = ad3Var;
        this.d = xd3Var;
    }

    @Override // yads.lk
    public final Object a(JSONObject jSONObject) throws Exception {
        by3 by3Var;
        ArrayList arrayListK;
        r96 r96Var;
        q76 q76VarA;
        we6 we6Var;
        Object aVar;
        tz3 sz3Var;
        if (!jSONObject.has("value") || jSONObject.isNull("value")) {
            defpackage.qg.g("Native Ad json has not required attributes");
            return null;
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject("value");
        x04 x04Var = this.a;
        if (!jSONObject2.has("media") || jSONObject2.isNull("media")) {
            by3Var = null;
        } else {
            JSONObject jSONObject3 = jSONObject2.getJSONObject("media");
            x04Var.getClass();
            float f = (float) jSONObject3.getDouble("aspectRatio");
            if (f == 0.0f) {
                f = 1.7777778f;
            }
            try {
                sz3Var = new rz3(x04Var.a.a(TJAdUnitConstants.String.HTML, jSONObject3));
            } catch (Exception e) {
                String strOptString = jSONObject3.optString("htmlUrl");
                if (strOptString.length() == 0) {
                    strOptString = null;
                }
                if (strOptString == null) {
                    throw e;
                }
                sz3Var = new sz3(strOptString);
            }
            by3Var = new by3(sz3Var, f, false, 4);
        }
        JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("images");
        if (jSONArrayOptJSONArray != null) {
            xd3 xd3Var = this.d;
            xd3Var.getClass();
            arrayListK = new ArrayList();
            int length = jSONArrayOptJSONArray.length();
            for (int i = 0; i < length; i++) {
                arrayListK.add(xd3Var.a.a(jSONArrayOptJSONArray.getJSONObject(i)));
            }
        } else {
            arrayListK = null;
        }
        rd3 rd3VarA = (!jSONObject2.has("image") || jSONObject2.isNull("image")) ? null : this.c.a(jSONObject2.getJSONObject("image"));
        if ((arrayListK == null || arrayListK.isEmpty()) && rd3VarA != null) {
            arrayListK = u96.k(rd3VarA);
        }
        ud6 ud6Var = this.b;
        if (!jSONObject2.has(MimeTypes.BASE_TYPE_VIDEO) || jSONObject2.isNull(MimeTypes.BASE_TYPE_VIDEO)) {
            r96Var = null;
        } else {
            JSONObject jSONObject4 = jSONObject2.getJSONObject(MimeTypes.BASE_TYPE_VIDEO);
            try {
                q76VarA = ud6Var.d.a(ud6Var.b.a("vast", jSONObject4), ud6Var.a);
            } catch (Exception unused) {
                q76VarA = null;
            }
            if (q76VarA == null || q76VarA.b.isEmpty()) {
                defpackage.qg.g("Invalid VAST in response");
                return null;
            }
            JSONObject jSONObjectOptJSONObject = jSONObject4.optJSONObject("settings");
            if (jSONObjectOptJSONObject != null) {
                ud6Var.e.getClass();
                boolean zOptBoolean = jSONObjectOptJSONObject.optBoolean("volumeControlVisible", true);
                boolean zOptBoolean2 = jSONObjectOptJSONObject.optBoolean("isProgressBarHidden", false);
                try {
                    aVar = Double.valueOf(jSONObjectOptJSONObject.getDouble("initialVolume"));
                } catch (Throwable th) {
                    aVar = new k57.a(th);
                }
                if (aVar instanceof k57.a) {
                    aVar = null;
                }
                we6Var = new we6(zOptBoolean, zOptBoolean2, (Double) aVar);
            } else {
                we6Var = null;
            }
            ArrayList arrayListA = ud6Var.c.a(q76VarA.b);
            if (arrayListA.isEmpty()) {
                defpackage.qg.g("Invalid VAST in response");
                return null;
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObject4.optJSONObject("preview");
            r96Var = new r96(arrayListA, we6Var, jSONObjectOptJSONObject2 != null ? ud6Var.f.a(jSONObjectOptJSONObject2) : null);
        }
        if (by3Var != null || ((arrayListK != null && !arrayListK.isEmpty()) || r96Var != null)) {
            return new v14(by3Var, r96Var, arrayListK != null ? new ArrayList(arrayListK) : null);
        }
        defpackage.qg.g("Native Ad json has not required attributes");
        return null;
    }
}
