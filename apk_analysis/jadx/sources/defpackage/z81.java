package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: loaded from: classes5.dex */
public final class z81<T> extends d91<T> {
    public static final /* synthetic */ AtomicIntegerFieldUpdater g = AtomicIntegerFieldUpdater.newUpdater(z81.class, "consumed$volatile");
    private volatile /* synthetic */ int consumed$volatile;
    public final qz6<T> e;
    public final boolean f;

    public /* synthetic */ z81(qz6 qz6Var, boolean z) {
        this(qz6Var, z, gx2.b, -3, cu0.SUSPEND);
    }

    @Override // defpackage.d91, defpackage.hd3
    public final Object collect(id3<? super T> id3Var, e02<? super j59> e02Var) {
        if (this.c != -3) {
            Object objCollect = super.collect(id3Var, e02Var);
            return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
        }
        boolean z = this.f;
        if (z && g.getAndSet(this, 1) == 1) {
            ah.f("ReceiveChannel.consumeAsFlow can be collected just once");
            return null;
        }
        Object objB = sd3.b(id3Var, this.e, z, e02Var);
        return objB == a32.COROUTINE_SUSPENDED ? objB : j59.a;
    }

    @Override // defpackage.d91
    public final String g() {
        return "channel=" + this.e;
    }

    @Override // defpackage.d91
    public final Object h(ug6<? super T> ug6Var, e02<? super j59> e02Var) {
        Object objB = sd3.b(new yo7(ug6Var), this.e, this.f, e02Var);
        return objB == a32.COROUTINE_SUSPENDED ? objB : j59.a;
    }

    @Override // defpackage.d91
    public final d91<T> i(o22 o22Var, int i, cu0 cu0Var) {
        return new z81(this.e, this.f, o22Var, i, cu0Var);
    }

    @Override // defpackage.d91
    public final hd3<T> j() {
        return new z81(this.e, this.f);
    }

    @Override // defpackage.d91
    public final qz6<T> k(y22 y22Var) {
        if (!this.f || g.getAndSet(this, 1) != 1) {
            return this.c == -3 ? this.e : super.k(y22Var);
        }
        ah.f("ReceiveChannel.consumeAsFlow can be collected just once");
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public z81(qz6<? extends T> qz6Var, boolean z, o22 o22Var, int i, cu0 cu0Var) {
        super(o22Var, i, cu0Var);
        this.e = qz6Var;
        this.f = z;
    }
}
