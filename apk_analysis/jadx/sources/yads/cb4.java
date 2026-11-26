package yads;

import java.util.Arrays;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class cb4 {
    public final ls4 a;

    public cb4(ls4 ls4Var) {
        this.a = ls4Var;
    }

    public final void a(lq3... lq3VarArr) {
        if (lq3VarArr.length == 0) {
            return;
        }
        StringBuilder sb = new StringBuilder("fireChangeEvent({");
        int length = lq3VarArr.length;
        String str = "";
        int i = 0;
        while (i < length) {
            lq3 lq3Var = lq3VarArr[i];
            sb.append(str);
            sb.append(lq3Var.a());
            i++;
            str = ", ";
        }
        sb.append("})");
        b(sb.toString());
    }

    public final void b(String str) {
        a(String.format("window.mraidbridge.%s", Arrays.copyOf(new Object[]{str}, 1)));
    }

    public final void a(ob4 ob4Var) {
        b("nativeCallComplete(" + JSONObject.quote(ob4Var.a()) + ")");
    }

    public final void a(ob4 ob4Var, String str) {
        b(defpackage.n2.d("notifyErrorEvent(", JSONObject.quote(ob4Var.a()), ", ", JSONObject.quote(str), ")"));
    }

    public final void a(String str) {
        this.a.loadUrl("javascript: " + str);
    }
}
