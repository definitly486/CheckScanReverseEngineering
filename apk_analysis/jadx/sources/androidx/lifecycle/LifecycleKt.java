package androidx.lifecycle;

import defpackage.hd3;
import defpackage.jd8;
import defpackage.o22;
import defpackage.oi2;
import defpackage.qo2;
import defpackage.rm9;
import defpackage.s0;
import defpackage.ud3;
import defpackage.uy4;
import defpackage.wy0;

/* JADX INFO: loaded from: classes3.dex */
public final class LifecycleKt {
    public static final LifecycleCoroutineScope getCoroutineScope(Lifecycle lifecycle) {
        LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl;
        lifecycle.getClass();
        do {
            LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl2 = (LifecycleCoroutineScopeImpl) lifecycle.getInternalScopeRef().get();
            if (lifecycleCoroutineScopeImpl2 != null) {
                return lifecycleCoroutineScopeImpl2;
            }
            jd8 jd8VarB = rm9.b();
            oi2 oi2Var = qo2.a;
            lifecycleCoroutineScopeImpl = new LifecycleCoroutineScopeImpl(lifecycle, o22.a.C0306a.d(jd8VarB, uy4.a.k0()));
        } while (!lifecycle.getInternalScopeRef().compareAndSet(null, lifecycleCoroutineScopeImpl));
        lifecycleCoroutineScopeImpl.register();
        return lifecycleCoroutineScopeImpl;
    }

    public static final hd3<Lifecycle.Event> getEventFlow(Lifecycle lifecycle) {
        lifecycle.getClass();
        wy0 wy0VarA = s0.a(new LifecycleKt$eventFlow$1(lifecycle, null));
        oi2 oi2Var = qo2.a;
        return ud3.b(wy0VarA, uy4.a.k0());
    }
}
