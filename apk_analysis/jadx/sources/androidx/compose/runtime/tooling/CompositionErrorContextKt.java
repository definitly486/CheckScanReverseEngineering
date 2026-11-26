package androidx.compose.runtime.tooling;

import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.CompositionLocalKt;
import defpackage.ju1;

/* JADX INFO: loaded from: classes.dex */
public final class CompositionErrorContextKt {
    private static final CompositionLocal<CompositionErrorContext> LocalCompositionErrorContext = CompositionLocalKt.staticCompositionLocalOf(new ju1(0));

    /* JADX INFO: Access modifiers changed from: private */
    public static final CompositionErrorContext LocalCompositionErrorContext$lambda$0() {
        return null;
    }

    public static final CompositionLocal<CompositionErrorContext> getLocalCompositionErrorContext() {
        return LocalCompositionErrorContext;
    }
}
