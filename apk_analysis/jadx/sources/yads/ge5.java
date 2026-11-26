package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class ge5 {
    public final he5 a;
    public final pe5 b;

    public ge5(Context context, ng ngVar) {
        pe5 pe5Var;
        he5 he5Var = new he5(context, ngVar);
        pe5 pe5Var2 = pe5.c;
        if (pe5Var2 == null) {
            synchronized (pe5.b) {
                pe5Var = pe5.c;
                if (pe5Var == null) {
                    pe5Var = new pe5();
                    pe5.c = pe5Var;
                }
            }
            pe5Var2 = pe5Var;
        }
        this.a = he5Var;
        this.b = pe5Var2;
    }
}
