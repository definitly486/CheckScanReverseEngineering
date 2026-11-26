package androidx.compose.foundation.text;

import android.os.Build;
import android.os.Trace;
import androidx.compose.foundation.text.BasicText_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.snapshots.MutableSnapshot;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraphIntrinsics;
import androidx.compose.ui.text.ParagraphIntrinsics;
import androidx.compose.ui.text.ParagraphIntrinsicsKt;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.hh0;
import defpackage.j59;
import defpackage.kx2;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final class BasicText_androidKt {
    private static final ProvidableCompositionLocal<Executor> LocalBackgroundTextMeasurementExecutor = CompositionLocalKt.staticCompositionLocalOf(new hh0(0));
    private static final int MaxTextLengthThreshold = 1000;
    private static final int MinTextLengthThreshold = 8;
    private static final int PrefetchTextMinimumCoreCount = 4;
    private static Boolean backingCoreCountSatisfactory;

    public static final void BackgroundTextMeasurement(final AnnotatedString annotatedString, final TextStyle textStyle, final FontFamily.Resolver resolver, final List<AnnotatedString.Range<Placeholder>> list, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-650368117, i, -1, "androidx.compose.foundation.text.BackgroundTextMeasurement (BasicText.android.kt:112)");
        }
        Executor executor = (Executor) composer.consume(LocalBackgroundTextMeasurementExecutor);
        if (executor == null || !shouldPrefetch(annotatedString.length())) {
            composer.startReplaceGroup(-517090505);
            composer.endReplaceGroup();
        } else {
            composer.startReplaceGroup(-518737659);
            final LayoutDirection layoutDirection = (LayoutDirection) composer.consume(CompositionLocalsKt.getLocalLayoutDirection());
            final Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
            try {
                executor.execute(new Runnable() { // from class: gh0
                    @Override // java.lang.Runnable
                    public final void run() {
                        BasicText_androidKt.BackgroundTextMeasurement$lambda$1(textStyle, layoutDirection, list, annotatedString, density, resolver);
                    }
                });
            } catch (RejectedExecutionException unused) {
            }
            composer.endReplaceGroup();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void BackgroundTextMeasurement$lambda$0(TextStyle textStyle, LayoutDirection layoutDirection, String str, Density density, FontFamily.Resolver resolver) {
        Trace.beginSection("BackgroundTextMeasurement");
        try {
            MutableSnapshot mutableSnapshotTakeMutableSnapshot$default = Snapshot.Companion.takeMutableSnapshot$default(Snapshot.Companion, null, null, 3, null);
            try {
                Snapshot snapshotMakeCurrent = mutableSnapshotTakeMutableSnapshot$default.makeCurrent();
                try {
                    ParagraphIntrinsics paragraphIntrinsicsParagraphIntrinsics$default = ParagraphIntrinsicsKt.ParagraphIntrinsics$default(str, TextStyleKt.resolveDefaults(textStyle, layoutDirection), kx2.b, density, resolver, (List) null, 32, (Object) null);
                    paragraphIntrinsicsParagraphIntrinsics$default.getMaxIntrinsicWidth();
                    paragraphIntrinsicsParagraphIntrinsics$default.getMinIntrinsicWidth();
                    j59 j59Var = j59.a;
                    mutableSnapshotTakeMutableSnapshot$default.restoreCurrent(snapshotMakeCurrent);
                    mutableSnapshotTakeMutableSnapshot$default.apply().check();
                    mutableSnapshotTakeMutableSnapshot$default.dispose();
                    Trace.endSection();
                } catch (Throwable th) {
                    mutableSnapshotTakeMutableSnapshot$default.restoreCurrent(snapshotMakeCurrent);
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    mutableSnapshotTakeMutableSnapshot$default.dispose();
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            Trace.endSection();
            throw th4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void BackgroundTextMeasurement$lambda$1(TextStyle textStyle, LayoutDirection layoutDirection, List list, AnnotatedString annotatedString, Density density, FontFamily.Resolver resolver) {
        Trace.beginSection("BackgroundTextMeasurement");
        try {
            MutableSnapshot mutableSnapshotTakeMutableSnapshot$default = Snapshot.Companion.takeMutableSnapshot$default(Snapshot.Companion, null, null, 3, null);
            try {
                Snapshot snapshotMakeCurrent = mutableSnapshotTakeMutableSnapshot$default.makeCurrent();
                try {
                    TextStyle textStyleResolveDefaults = TextStyleKt.resolveDefaults(textStyle, layoutDirection);
                    if (list == null) {
                        list = kx2.b;
                    }
                    MultiParagraphIntrinsics multiParagraphIntrinsics = new MultiParagraphIntrinsics(annotatedString, textStyleResolveDefaults, (List<AnnotatedString.Range<Placeholder>>) list, density, resolver);
                    multiParagraphIntrinsics.getMaxIntrinsicWidth();
                    multiParagraphIntrinsics.getMinIntrinsicWidth();
                    j59 j59Var = j59.a;
                    mutableSnapshotTakeMutableSnapshot$default.restoreCurrent(snapshotMakeCurrent);
                    mutableSnapshotTakeMutableSnapshot$default.apply().check();
                    mutableSnapshotTakeMutableSnapshot$default.dispose();
                    Trace.endSection();
                } catch (Throwable th) {
                    mutableSnapshotTakeMutableSnapshot$default.restoreCurrent(snapshotMakeCurrent);
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    mutableSnapshotTakeMutableSnapshot$default.dispose();
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            Trace.endSection();
            throw th4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Executor LocalBackgroundTextMeasurementExecutor$lambda$0() {
        return null;
    }

    public static final boolean getCoreCountSatisfactory() {
        Boolean boolValueOf = backingCoreCountSatisfactory;
        if (boolValueOf == null) {
            boolValueOf = Boolean.valueOf(Runtime.getRuntime().availableProcessors() >= 4);
            backingCoreCountSatisfactory = boolValueOf;
        }
        boolValueOf.getClass();
        return boolValueOf.booleanValue();
    }

    public static /* synthetic */ void getCoreCountSatisfactory$annotations() {
    }

    public static final ProvidableCompositionLocal<Executor> getLocalBackgroundTextMeasurementExecutor() {
        return LocalBackgroundTextMeasurementExecutor;
    }

    public static final boolean shouldPrefetch(int i) {
        return Build.VERSION.SDK_INT >= 28 && i >= 8 && i < 1000 && getCoreCountSatisfactory();
    }

    public static final void BackgroundTextMeasurement(final String str, final TextStyle textStyle, final FontFamily.Resolver resolver, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1589371739, i, -1, "androidx.compose.foundation.text.BackgroundTextMeasurement (BasicText.android.kt:68)");
        }
        Executor executor = (Executor) composer.consume(LocalBackgroundTextMeasurementExecutor);
        if (executor != null && shouldPrefetch(str.length())) {
            composer.startReplaceGroup(1254298614);
            final LayoutDirection layoutDirection = (LayoutDirection) composer.consume(CompositionLocalsKt.getLocalLayoutDirection());
            final Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
            try {
                executor.execute(new Runnable() { // from class: ih0
                    @Override // java.lang.Runnable
                    public final void run() {
                        BasicText_androidKt.BackgroundTextMeasurement$lambda$0(textStyle, layoutDirection, str, density, resolver);
                    }
                });
            } catch (RejectedExecutionException unused) {
            }
            composer.endReplaceGroup();
        } else {
            composer.startReplaceGroup(1255914055);
            composer.endReplaceGroup();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }
}
