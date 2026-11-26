package yads;

import android.content.Context;
import java.util.HashMap;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class oc4 {
    public final d9 a;
    public final q84 b;
    public boolean c;
    public boolean d;
    public boolean e;

    public oc4(Context context, d9 d9Var, bf5 bf5Var) {
        bf5Var.getClass();
        q84 q84VarA = re.a(context, new lm6(((do6) bf5Var).a));
        this.a = d9Var;
        this.b = q84VarA;
        this.c = true;
        this.d = true;
        this.e = true;
    }

    public final void a(String str) {
        e75 e75Var = e75.AD_LOADING_RESULT;
        HashMap mapD = defpackage.n05.d(new defpackage.b36("event_type", str));
        this.b.a(new g75("multibanner_event", new LinkedHashMap(mapD), this.a.i));
    }
}
