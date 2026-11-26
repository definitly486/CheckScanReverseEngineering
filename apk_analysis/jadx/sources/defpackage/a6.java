package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class a6 extends gh4 implements nl3<a57<h3>, wu4> {
    @Override // defpackage.nl3
    public final wu4 invoke(a57<h3> a57Var) {
        Object aVar;
        xu4 xu4Var;
        Object aVar2;
        a57<h3> a57Var2 = a57Var;
        a57Var2.getClass();
        h3 h3Var = a57Var2.b;
        int i = a57Var2.a.e;
        b57 b57Var = a57Var2.c;
        wu4.a aVar3 = null;
        String strV = b57Var != null ? b57Var.v() : null;
        try {
            aVar = new JSONObject(strV).get("exception").toString();
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        String str = new String();
        boolean z = aVar instanceof k57.a;
        Object obj = aVar;
        if (z) {
            obj = str;
        }
        String str2 = (String) obj;
        if (200 <= i && i < 300) {
            xu4Var = h3Var == null ? xu4.Error : xu4.LoggedIn;
        } else if (aa4.e(str2, "com.warefly.checkscan.server.exception.LockedAccountException")) {
            xu4Var = xu4.Locked;
        } else {
            xu4Var = i == 401 ? xu4.IncorrectLoginOrPassword : xu4.Error;
        }
        h3 h3Var2 = h3Var;
        String strE = l1.e(a57Var2);
        if (xu4Var == xu4.Locked) {
            try {
                JSONObject jSONObject = new JSONObject(strV).getJSONObject(FirebaseAnalytics.Param.CONTENT);
                aVar2 = new wu4.a(jSONObject.get(TJAdUnitConstants.String.TITLE).toString(), jSONObject.get("text").toString());
            } catch (Throwable th2) {
                aVar2 = new k57.a(th2);
            }
            aVar3 = (wu4.a) (aVar2 instanceof k57.a ? null : aVar2);
        }
        return new wu4(xu4Var, h3Var2, strE, aVar3);
    }
}
