package yads;

import android.net.Uri;
import defpackage.k57;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class zn1 {
    public final yn1 a(p41 p41Var) {
        Object aVar;
        gd1 gd1VarA = md1.a(p41Var, "click");
        if (gd1VarA == null) {
            return null;
        }
        try {
            JSONObject jSONObject = gd1VarA.b;
            String string = jSONObject != null ? jSONObject.getString("url") : null;
            aVar = string != null ? Uri.parse(string) : null;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (aVar instanceof k57.a) {
            aVar = null;
        }
        Uri uri = (Uri) aVar;
        if (uri != null) {
            return new yn1(uri);
        }
        return null;
    }
}
