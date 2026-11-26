package yads;

import android.content.Context;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class i65 {
    public final d9 a;
    public final e4 b;
    public final ArrayList c;
    public final ea d;
    public final h65 e;
    public final e40 f;

    public i65(Context context, d9 d9Var, e4 e4Var, bf5 bf5Var, ba baVar, ArrayList arrayList) {
        ea eaVar = new ea(context, e4Var, bf5Var);
        h65 h65Var = new h65(context, e4Var, bf5Var, d9Var, baVar);
        e40 e40Var = new e40();
        this.a = d9Var;
        this.b = e4Var;
        this.c = arrayList;
        this.d = eaVar;
        this.e = h65Var;
        this.f = e40Var;
    }
}
