package io.appmetrica.analytics.impl;

import defpackage.gh4;
import defpackage.ll3;
import io.appmetrica.analytics.impl.T;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes5.dex */
public final class T extends gh4 implements ll3 {
    public final /* synthetic */ X a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public T(X x) {
        super(0);
        this.a = x;
    }

    @Override // defpackage.ll3
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final FutureTask invoke() {
        final X x = this.a;
        return new FutureTask(new Callable() { // from class: mh8
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return T.a(x);
            }
        });
    }

    public static final Void a(X x) {
        x.b();
        return null;
    }
}
