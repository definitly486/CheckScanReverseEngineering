package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class c10 implements y0 {
    @Override // yads.y0
    public final u0 a(JSONObject jSONObject) throws rg4 {
        String strOptString = jSONObject.optString(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
        if (strOptString != null && strOptString.length() != 0 && !strOptString.equals("null")) {
            return new a10(strOptString);
        }
        defpackage.qg.g("Native Ad json has not required attributes");
        return null;
    }
}
