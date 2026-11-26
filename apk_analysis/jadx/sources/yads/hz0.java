package yads;

import android.net.Uri;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class hz0 implements yy0 {
    @Override // yads.yy0
    public final boolean a(String str, ry0 ry0Var, vq0 vq0Var, fs2 fs2Var) throws JSONException {
        kr5 dr5Var;
        if (ry0Var instanceof ky0) {
            fw0 fw0Var = ((ky0) ry0Var).a;
            String str2 = (String) fw0Var.b.a(fs2Var);
            long jLongValue = ((Number) fw0Var.a.a(fs2Var)).longValue();
            oe2 oe2Var = fw0Var.c;
            if (oe2Var instanceof me2) {
                dr5Var = new gr5(str2, (String) ((me2) oe2Var).a.a.a(fs2Var));
            } else if (oe2Var instanceof ke2) {
                dr5Var = new fr5(str2, ((Number) ((ke2) oe2Var).a.a.a(fs2Var)).longValue());
            } else if (oe2Var instanceof he2) {
                dr5Var = new br5(str2, ((Boolean) ((he2) oe2Var).a.a.a(fs2Var)).booleanValue());
            } else if (oe2Var instanceof le2) {
                dr5Var = new er5(str2, ((Number) ((le2) oe2Var).a.a.a(fs2Var)).doubleValue());
            } else if (oe2Var instanceof ie2) {
                dr5Var = new cr5(str2, ((Number) ((ie2) oe2Var).a.a.a(fs2Var)).intValue());
            } else if (oe2Var instanceof ne2) {
                dr5Var = new jr5(str2, p46.a(((Uri) ((ne2) oe2Var).a.a.a(fs2Var)).toString()));
            } else if (oe2Var instanceof ge2) {
                dr5Var = new ar5(str2, (JSONArray) ((ge2) oe2Var).a.a.a(fs2Var));
            } else if (oe2Var instanceof je2) {
                dr5Var = new dr5(str2, (JSONObject) ((je2) oe2Var).a.a.a(fs2Var));
            } else {
                defpackage.me0.e();
            }
            ((or5) vq0Var.n.B.getValue()).a(dr5Var, jLongValue, vq0Var.o.b().a(vq0Var.Q, vq0Var.O));
            return true;
        }
        return false;
    }
}
