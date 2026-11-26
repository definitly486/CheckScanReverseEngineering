package yads;

import android.content.Context;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class j65 {
    public final g5 a;
    public final we3 b;
    public final l65 c;
    public final i65 d;
    public final e65 e;
    public boolean f;

    public j65(Context context, m8 m8Var, d9 d9Var, e4 e4Var, bf5 bf5Var, ba baVar, g5 g5Var, we3 we3Var, l65 l65Var, ArrayList arrayList) {
        i65 i65Var = new i65(context, d9Var, e4Var, bf5Var, baVar, arrayList);
        this.a = g5Var;
        this.b = we3Var;
        this.c = l65Var;
        this.d = i65Var;
        this.e = new e65(m8Var, this);
    }
}
