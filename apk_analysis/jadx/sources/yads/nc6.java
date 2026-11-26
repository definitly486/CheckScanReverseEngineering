package yads;

import android.content.Context;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class nc6 {
    public final Context a;
    public final ol6 b;
    public final lc6 c;
    public final ArrayList d;

    public nc6(Context context, e4 e4Var, t5 t5Var, bf5 bf5Var, j86 j86Var, ac6 ac6Var) {
        Context applicationContext = context.getApplicationContext();
        ol6 ol6Var = new ol6(applicationContext, e4Var, t5Var, bf5Var, j86Var, ac6Var);
        lc6 lc6Var = new lc6();
        this.a = applicationContext;
        this.b = ol6Var;
        this.c = lc6Var;
        this.d = new ArrayList();
    }
}
