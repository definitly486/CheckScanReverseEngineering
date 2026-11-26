package androidx.lifecycle.viewmodel.internal;

import defpackage.gx2;
import defpackage.o22;
import defpackage.oi2;
import defpackage.oo5;
import defpackage.qo2;
import defpackage.rm9;
import defpackage.uy4;
import defpackage.y22;

/* JADX INFO: loaded from: classes3.dex */
public final class CloseableCoroutineScopeKt {
    public static final String VIEW_MODEL_SCOPE_KEY = "androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY";

    public static final CloseableCoroutineScope asCloseable(y22 y22Var) {
        y22Var.getClass();
        return new CloseableCoroutineScope(y22Var);
    }

    public static final CloseableCoroutineScope createViewModelScope() {
        o22 o22VarK0 = gx2.b;
        try {
            oi2 oi2Var = qo2.a;
            o22VarK0 = uy4.a.k0();
        } catch (IllegalStateException | oo5 unused) {
        }
        return new CloseableCoroutineScope(o22VarK0.plus(rm9.b()));
    }
}
