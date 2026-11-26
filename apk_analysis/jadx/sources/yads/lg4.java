package yads;

import android.content.Context;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes6.dex */
public final class lg4 {
    public final sd4 a;
    public final b05 b;
    public final fm4 c;
    public final sc3 d;
    public final yd3 e;
    public final zd4 f;
    public final CopyOnWriteArraySet g;

    public lg4(Context context, sd4 sd4Var, b05 b05Var, fm4 fm4Var) {
        sc3 sc3Var = new sc3(context);
        yd3 yd3Var = new yd3();
        zd4 zd4Var = new zd4(b05Var, context.getResources());
        CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
        this.a = sd4Var;
        this.b = b05Var;
        this.c = fm4Var;
        this.d = sc3Var;
        this.e = yd3Var;
        this.f = zd4Var;
        this.g = copyOnWriteArraySet;
    }
}
