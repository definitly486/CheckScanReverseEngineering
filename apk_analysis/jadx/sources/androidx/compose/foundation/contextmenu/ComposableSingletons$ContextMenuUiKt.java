package androidx.compose.foundation.contextmenu;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.dm3;
import defpackage.j59;
import defpackage.jm3;
import defpackage.ll3;
import defpackage.rt1;
import defpackage.st1;

/* JADX INFO: loaded from: classes.dex */
public final class ComposableSingletons$ContextMenuUiKt {
    public static final ComposableSingletons$ContextMenuUiKt INSTANCE = new ComposableSingletons$ContextMenuUiKt();

    /* JADX INFO: renamed from: lambda$-1571120048, reason: not valid java name */
    private static jm3<Modifier, String, Boolean, ContextMenuColors, dm3<? super Color, ? super Composer, ? super Integer, j59>, ll3<j59>, Composer, Integer, j59> f3lambda$1571120048 = ComposableLambdaKt.composableLambdaInstance(-1571120048, false, new rt1());

    /* JADX INFO: renamed from: lambda$-1455401925, reason: not valid java name */
    private static dm3<ContextMenuColors, Composer, Integer, j59> f2lambda$1455401925 = ComposableLambdaKt.composableLambdaInstance(-1455401925, false, new st1());

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 lambda__1455401925$lambda$0(ContextMenuColors contextMenuColors, Composer composer, int i) {
        if ((i & 6) == 0) {
            i |= composer.changed(contextMenuColors) ? 4 : 2;
        }
        if (composer.shouldExecute((i & 19) != 18, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1455401925, i, -1, "androidx.compose.foundation.contextmenu.ComposableSingletons$ContextMenuUiKt.lambda$-1455401925.<anonymous> (ContextMenuUi.kt:305)");
            }
            Modifier.Companion companion = Modifier.Companion;
            ContextMenuSpec contextMenuSpec = ContextMenuSpec.INSTANCE;
            BoxKt.Box(BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.m2085height3ABfNKs(SizeKt.fillMaxWidth$default(PaddingKt.m2035paddingVpY3zN4$default(companion, 0.0f, contextMenuSpec.m1407getDividerVerticalPaddingD9Ej5fM(), 1, null), 0.0f, 1, null), contextMenuSpec.m1406getDividerHeightD9Ej5fM()), contextMenuColors.m1400getIconColor0d7_KjU(), null, 2, null), composer, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 lambda__1571120048$lambda$0(Modifier modifier, String str, boolean z, ContextMenuColors contextMenuColors, dm3 dm3Var, ll3 ll3Var, Composer composer, int i) {
        int i2;
        if ((i & 6) == 0) {
            i2 = (composer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composer.changed(str) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composer.changed(z) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composer.changed(contextMenuColors) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= composer.changedInstance(dm3Var) ? 16384 : 8192;
        }
        if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            i2 |= composer.changedInstance(ll3Var) ? 131072 : 65536;
        }
        if (composer.shouldExecute((599187 & i2) != 599186, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1571120048, i2, -1, "androidx.compose.foundation.contextmenu.ComposableSingletons$ContextMenuUiKt.lambda$-1571120048.<anonymous> (ContextMenuUi.kt:136)");
            }
            ContextMenuUiKt.ContextMenuItem(str, z, contextMenuColors, modifier, dm3Var, ll3Var, composer, ((i2 >> 3) & AnalyticsListener.EVENT_DRM_SESSION_ACQUIRED) | ((i2 << 9) & 7168) | (57344 & i2) | (i2 & 458752), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: renamed from: getLambda$-1455401925$foundation, reason: not valid java name */
    public final dm3<ContextMenuColors, Composer, Integer, j59> m1395getLambda$1455401925$foundation() {
        return f2lambda$1455401925;
    }

    /* JADX INFO: renamed from: getLambda$-1571120048$foundation, reason: not valid java name */
    public final jm3<Modifier, String, Boolean, ContextMenuColors, dm3<? super Color, ? super Composer, ? super Integer, j59>, ll3<j59>, Composer, Integer, j59> m1396getLambda$1571120048$foundation() {
        return f3lambda$1571120048;
    }
}
