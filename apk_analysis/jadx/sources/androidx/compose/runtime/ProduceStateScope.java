package androidx.compose.runtime;

import defpackage.e02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.o22;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
public interface ProduceStateScope<T> extends MutableState<T>, y22 {
    Object awaitDispose(ll3<j59> ll3Var, e02<?> e02Var);

    @Override // defpackage.y22
    /* synthetic */ o22 getCoroutineContext();
}
