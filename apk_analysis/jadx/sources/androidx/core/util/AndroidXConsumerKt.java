package androidx.core.util;

import defpackage.e02;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidXConsumerKt {
    public static final <T> Consumer<T> asAndroidXConsumer(e02<? super T> e02Var) {
        return new AndroidXContinuationConsumer(e02Var);
    }
}
