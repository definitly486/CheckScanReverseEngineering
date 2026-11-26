package yads;

import android.content.Context;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.dynamiclinks.DynamicLink;
import com.tapjoy.TJAdUnitConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class kk {
    public final q84 a;
    public final pt3 b;
    public final Context c;

    public kk(Context context, q84 q84Var, pt3 pt3Var) {
        this.a = q84Var;
        this.b = pt3Var;
        this.c = context.getApplicationContext();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final ak a(JSONObject jSONObject, yo yoVar) throws JSONException, rg4 {
        lk vo4Var;
        if (!rj4.a(jSONObject, "name", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, TJAdUnitConstants.String.CLICKABLE, "required")) {
            defpackage.qg.g("Native Ad json has not required attributes");
            return null;
        }
        String strOptString = jSONObject.optString(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
        if (strOptString == null || strOptString.length() == 0 || strOptString.equals("null")) {
            defpackage.qg.g("Native Ad json has not required attributes");
            return null;
        }
        String strOptString2 = jSONObject.optString("name");
        if (strOptString2 == null || strOptString2.length() == 0 || strOptString2.equals("null")) {
            defpackage.qg.g("Native Ad json has not required attributes");
            return null;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(DynamicLink.Builder.KEY_LINK);
        ot3 ot3VarA = jSONObjectOptJSONObject == null ? null : this.b.a(jSONObjectOptJSONObject, yoVar);
        Context context = this.c;
        q84 q84Var = this.a;
        if (strOptString2.equals("close_button")) {
            vo4Var = new h10();
        } else {
            if (!strOptString2.equals("feedback")) {
                switch (strOptString) {
                    case "number":
                        vo4Var = new vo4();
                        break;
                    case "qrcode":
                        vo4Var = new k00();
                        break;
                    case "string":
                        vo4Var = new et5();
                        break;
                    case "container":
                        vo4Var = new en2();
                        break;
                    case "image":
                        vo4Var = new ud3();
                        break;
                    case "media":
                        vo4Var = new w14(context, q84Var, yoVar);
                        break;
                    case "warning":
                        vo4Var = new kj6();
                        break;
                    default:
                        if (strOptString.equals("number")) {
                            vo4Var = new vo4();
                            break;
                        }
                        defpackage.qg.g("Native Ad json has not required attributes");
                        return null;
                }
            }
            vo4Var = new ow2(new ud3());
        }
        Object objA = vo4Var.a(jSONObject);
        boolean z = jSONObject.getBoolean("required");
        boolean z2 = jSONObject.getBoolean(TJAdUnitConstants.String.CLICKABLE);
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("layoutRestriction");
        return new ak(strOptString2, strOptString, objA, ot3VarA, z2, z, jSONObjectOptJSONObject2 != null ? new wr3(zq3.a("minWidth", jSONObjectOptJSONObject2), zq3.a("minHeight", jSONObjectOptJSONObject2)) : null);
    }
}
