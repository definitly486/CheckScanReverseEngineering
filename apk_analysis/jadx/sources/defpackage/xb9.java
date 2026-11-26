package defpackage;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class xb9 extends gh4 implements ll3<k4a> {
    public final /* synthetic */ fm9 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xb9(fm9 fm9Var) {
        super(0);
        this.f = fm9Var;
    }

    @Override // defpackage.ll3
    public final k4a invoke() throws JSONException {
        String string = this.f.a.a.getString("fsa_event_key", null);
        if (string == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(string);
        String string2 = jSONObject.getString("phoneNumberSha256");
        String string3 = jSONObject.getString("authToken");
        string2.getClass();
        string3.getClass();
        return new k4a(string2, string3);
    }
}
