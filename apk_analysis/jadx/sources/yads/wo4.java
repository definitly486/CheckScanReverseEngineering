package yads;

import android.util.Log;

/* JADX INFO: loaded from: classes6.dex */
public final class wo4 extends ny2 {
    public static final wo4 a = new wo4();

    public static void a(q66 q66Var, float f) {
        Log.i("NumberValueProperty", "set variable value: " + f);
        q66Var.a(Double.valueOf((double) f));
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        Object objB = ((q66) obj).b();
        objB.getClass();
        return Float.valueOf((float) ((Double) objB).doubleValue());
    }
}
