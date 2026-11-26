package androidx.compose.runtime;

import defpackage.uw3;

/* JADX INFO: loaded from: classes2.dex */
public final class HostDefaultProviderKt {
    private static final ProvidableCompositionLocal<HostDefaultProvider> LocalHostDefaultProvider = CompositionLocalKt.compositionLocalOf$default(null, new uw3(), 1, null);

    /* JADX INFO: Access modifiers changed from: private */
    public static final HostDefaultProvider LocalHostDefaultProvider$lambda$0() {
        throw new IllegalStateException("CompositionLocal LocalHostDefaultProvider not present");
    }

    public static final ProvidableCompositionLocal<HostDefaultProvider> getLocalHostDefaultProvider() {
        return LocalHostDefaultProvider;
    }
}
