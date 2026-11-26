package androidx.compose.runtime.internal;

import androidx.compose.runtime.ComposeCompilerApi;
import defpackage.me0;

/* JADX INFO: loaded from: classes2.dex */
public final class DecoyKt {
    @ComposeCompilerApi
    public static final Void illegalDecoyCallException(String str) {
        throw new IllegalStateException(me0.c("Function ", str, " should have been replaced by compiler."));
    }
}
