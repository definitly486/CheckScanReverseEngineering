package androidx.compose.foundation;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import defpackage.ot1;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
public final class OverscrollConfiguration_androidKt {
    private static final ProvidableCompositionLocal<OverscrollConfiguration> LocalOverscrollConfiguration = CompositionLocalKt.compositionLocalOf$default(null, new ot1(1), 1, null);

    /* JADX INFO: Access modifiers changed from: private */
    public static final OverscrollConfiguration LocalOverscrollConfiguration$lambda$0() {
        return new OverscrollConfiguration(0L, null, 3, null);
    }

    public static final ProvidableCompositionLocal<OverscrollConfiguration> getLocalOverscrollConfiguration() {
        return LocalOverscrollConfiguration;
    }

    @ul2
    public static /* synthetic */ void getLocalOverscrollConfiguration$annotations() {
    }
}
