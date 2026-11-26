package androidx.core.util;

import defpackage.e02;

/* JADX INFO: loaded from: classes2.dex */
public final class ConsumerKt {
    public static final <T> java.util.function.Consumer<T> asConsumer(e02<? super T> e02Var) {
        return new ContinuationConsumer(e02Var);
    }
}
