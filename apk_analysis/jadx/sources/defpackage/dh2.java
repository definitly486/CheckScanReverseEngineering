package defpackage;

import java.lang.reflect.Type;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public final class dh2 implements gy0<Object, fy0<?>> {
    public final /* synthetic */ Type a;
    public final /* synthetic */ Executor b;

    public dh2(Type type, Executor executor) {
        this.a = type;
        this.b = executor;
    }

    @Override // defpackage.gy0
    public final Type a() {
        return this.a;
    }

    @Override // defpackage.gy0
    public final Object b(gv5 gv5Var) {
        Executor executor = this.b;
        return executor == null ? gv5Var : new gh2.a(executor, gv5Var);
    }
}
