package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public abstract class jg {
    public static final eh3 a = new eh3();

    public static final tb3 a(Context context) {
        Object objB;
        eh3 eh3Var = a;
        Object obj = eh3Var.a;
        if (obj == null) {
            synchronized (eh3Var.b) {
                Object obj2 = eh3Var.a;
                if (obj2 == null) {
                    objB = b(context);
                    eh3Var.a = objB;
                } else {
                    objB = obj2;
                }
            }
            obj = objB;
        }
        return (tb3) obj;
    }

    public static final tb3 b(Context context) {
        return new tb3(context.getApplicationContext());
    }
}
