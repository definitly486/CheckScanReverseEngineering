package yads;

import android.content.Context;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class ud4 {
    public final q84 a;
    public final sk b;

    public ud4(Context context, bf5 bf5Var, n5 n5Var, n70 n70Var, String str) {
        bf5Var.getClass();
        q84 q84VarA = re.a(context, new lm6(((do6) bf5Var).a));
        sk skVar = new sk(n5Var, n70Var, str);
        this.a = q84VarA;
        this.b = skVar;
    }

    public final void a(ArrayList arrayList, e75 e75Var) {
        h75 h75VarA = this.b.a();
        h75VarA.b(arrayList, "assets");
        Map map = h75VarA.a;
        this.a.a(new g75(e75Var.b, defpackage.n05.n(map), h75VarA.b));
    }
}
