package androidx.compose.foundation.text.contextmenu.internal;

import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import defpackage.gm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.ut1;
import defpackage.vt1;
import defpackage.wt1;

/* JADX INFO: loaded from: classes.dex */
public final class ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt {
    public static final ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt INSTANCE = new ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt();
    private static gm3<TextContextMenuSession, TextContextMenuDataProvider, ll3<? extends LayoutCoordinates>, Composer, Integer, j59> lambda$129995601 = ComposableLambdaKt.composableLambdaInstance(129995601, false, new ut1());
    private static gm3<TextContextMenuSession, TextContextMenuDataProvider, ll3<? extends LayoutCoordinates>, Composer, Integer, j59> lambda$636288403 = ComposableLambdaKt.composableLambdaInstance(636288403, false, new vt1());

    /* JADX INFO: renamed from: lambda$-1357803046, reason: not valid java name */
    private static gm3<TextContextMenuSession, TextContextMenuDataProvider, ll3<? extends LayoutCoordinates>, Composer, Integer, j59> f5lambda$1357803046 = ComposableLambdaKt.composableLambdaInstance(-1357803046, false, new wt1());

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 lambda_129995601$lambda$0(TextContextMenuSession textContextMenuSession, TextContextMenuDataProvider textContextMenuDataProvider, ll3 ll3Var, Composer composer, int i) {
        int i2;
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composer.changed(textContextMenuSession) : composer.changedInstance(textContextMenuSession) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? composer.changed(textContextMenuDataProvider) : composer.changedInstance(textContextMenuDataProvider) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composer.changedInstance(ll3Var) ? 256 : 128;
        }
        if (composer.shouldExecute((i2 & 1171) != 1170, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(129995601, i2, -1, "androidx.compose.foundation.text.contextmenu.internal.ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt.lambda$129995601.<anonymous> (DefaultTextContextMenuDropdownProvider.android.kt:75)");
            }
            DefaultTextContextMenuDropdownProvider_androidKt.OpenContextMenu(textContextMenuSession, textContextMenuDataProvider, ll3Var, composer, i2 & AnalyticsListener.EVENT_DRM_SESSION_ACQUIRED);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 lambda_636288403$lambda$0(TextContextMenuSession textContextMenuSession, TextContextMenuDataProvider textContextMenuDataProvider, ll3 ll3Var, Composer composer, int i) {
        int i2;
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composer.changed(textContextMenuSession) : composer.changedInstance(textContextMenuSession) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? composer.changed(textContextMenuDataProvider) : composer.changedInstance(textContextMenuDataProvider) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composer.changedInstance(ll3Var) ? 256 : 128;
        }
        if (composer.shouldExecute((i2 & 1171) != 1170, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(636288403, i2, -1, "androidx.compose.foundation.text.contextmenu.internal.ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt.lambda$636288403.<anonymous> (DefaultTextContextMenuDropdownProvider.android.kt:90)");
            }
            DefaultTextContextMenuDropdownProvider_androidKt.OpenContextMenu(textContextMenuSession, textContextMenuDataProvider, ll3Var, composer, i2 & AnalyticsListener.EVENT_DRM_SESSION_ACQUIRED);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 lambda__1357803046$lambda$0(TextContextMenuSession textContextMenuSession, TextContextMenuDataProvider textContextMenuDataProvider, ll3 ll3Var, Composer composer, int i) {
        int i2;
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composer.changed(textContextMenuSession) : composer.changedInstance(textContextMenuSession) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? composer.changed(textContextMenuDataProvider) : composer.changedInstance(textContextMenuDataProvider) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composer.changedInstance(ll3Var) ? 256 : 128;
        }
        if (composer.shouldExecute((i2 & 1171) != 1170, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1357803046, i2, -1, "androidx.compose.foundation.text.contextmenu.internal.ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt.lambda$-1357803046.<anonymous> (DefaultTextContextMenuDropdownProvider.android.kt:99)");
            }
            DefaultTextContextMenuDropdownProvider_androidKt.OpenContextMenu(textContextMenuSession, textContextMenuDataProvider, ll3Var, composer, i2 & AnalyticsListener.EVENT_DRM_SESSION_ACQUIRED);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: renamed from: getLambda$-1357803046$foundation, reason: not valid java name */
    public final gm3<TextContextMenuSession, TextContextMenuDataProvider, ll3<? extends LayoutCoordinates>, Composer, Integer, j59> m2635getLambda$1357803046$foundation() {
        return f5lambda$1357803046;
    }

    public final gm3<TextContextMenuSession, TextContextMenuDataProvider, ll3<? extends LayoutCoordinates>, Composer, Integer, j59> getLambda$129995601$foundation() {
        return lambda$129995601;
    }

    public final gm3<TextContextMenuSession, TextContextMenuDataProvider, ll3<? extends LayoutCoordinates>, Composer, Integer, j59> getLambda$636288403$foundation() {
        return lambda$636288403;
    }
}
