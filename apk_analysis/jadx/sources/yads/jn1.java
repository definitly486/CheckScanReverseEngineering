package yads;

import android.content.Context;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes6.dex */
public final class jn1 {
    public static final in1 b = new in1();
    public static final do1 c;
    public static volatile jn1 d;
    public final bo1 a;

    static {
        co1 co1Var = new co1();
        c = new do1(Executors.newSingleThreadExecutor(), co1Var.a, co1Var.b);
    }

    public jn1(Context context, do1 do1Var) {
        this.a = new bo1(context.getApplicationContext(), do1Var);
    }
}
