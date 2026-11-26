package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public abstract class pt2 {
    public static qt2 a;

    public static final synchronized qt2 a(Context context) {
        qt2 qt2Var;
        qt2Var = a;
        if (qt2Var == null) {
            qt2Var = new qt2(context);
            a = qt2Var;
        }
        return qt2Var;
    }
}
