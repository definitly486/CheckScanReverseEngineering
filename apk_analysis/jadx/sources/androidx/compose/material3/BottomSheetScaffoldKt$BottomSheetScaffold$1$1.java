package androidx.compose.material3;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.graphics.Shape;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class BottomSheetScaffoldKt$BottomSheetScaffold$1$1 implements bm3<Composer, Integer, j59> {
    final /* synthetic */ dm3<PaddingValues, Composer, Integer, j59> $content;
    final /* synthetic */ BottomSheetScaffoldState $scaffoldState;
    final /* synthetic */ long $sheetContainerColor;
    final /* synthetic */ dm3<ColumnScope, Composer, Integer, j59> $sheetContent;
    final /* synthetic */ long $sheetContentColor;
    final /* synthetic */ bm3<Composer, Integer, j59> $sheetDragHandle;
    final /* synthetic */ float $sheetMaxWidth;
    final /* synthetic */ float $sheetPeekHeight;
    final /* synthetic */ float $sheetShadowElevation;
    final /* synthetic */ Shape $sheetShape;
    final /* synthetic */ boolean $sheetSwipeEnabled;
    final /* synthetic */ float $sheetTonalElevation;
    final /* synthetic */ dm3<SnackbarHostState, Composer, Integer, j59> $snackbarHost;
    final /* synthetic */ bm3<Composer, Integer, j59> $topBar;

    /* JADX WARN: Multi-variable type inference failed */
    public BottomSheetScaffoldKt$BottomSheetScaffold$1$1(BottomSheetScaffoldState bottomSheetScaffoldState, bm3<? super Composer, ? super Integer, j59> bm3Var, dm3<? super PaddingValues, ? super Composer, ? super Integer, j59> dm3Var, float f, float f2, boolean z, Shape shape, long j, long j2, float f3, float f4, bm3<? super Composer, ? super Integer, j59> bm3Var2, dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2, dm3<? super SnackbarHostState, ? super Composer, ? super Integer, j59> dm3Var3) {
        this.$scaffoldState = bottomSheetScaffoldState;
        this.$topBar = bm3Var;
        this.$content = dm3Var;
        this.$sheetPeekHeight = f;
        this.$sheetMaxWidth = f2;
        this.$sheetSwipeEnabled = z;
        this.$sheetShape = shape;
        this.$sheetContainerColor = j;
        this.$sheetContentColor = j2;
        this.$sheetTonalElevation = f3;
        this.$sheetShadowElevation = f4;
        this.$sheetDragHandle = bm3Var2;
        this.$sheetContent = dm3Var2;
        this.$snackbarHost = dm3Var3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float invoke$lambda$1$lambda$0(BottomSheetScaffoldState bottomSheetScaffoldState) {
        return bottomSheetScaffoldState.getBottomSheetState().requireOffset();
    }

    public final void invoke(Composer composer, int i) {
        if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(999829022, i, -1, "androidx.compose.material3.BottomSheetScaffold.<anonymous>.<anonymous> (BottomSheetScaffold.kt:140)");
        }
        SheetState bottomSheetState = this.$scaffoldState.getBottomSheetState();
        bm3<Composer, Integer, j59> bm3Var = this.$topBar;
        final dm3<PaddingValues, Composer, Integer, j59> dm3Var = this.$content;
        final float f = this.$sheetPeekHeight;
        ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-519581786, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1.1
            public final void invoke(Composer composer2, int i2) {
                if (!composer2.shouldExecute((i2 & 3) != 2, i2 & 1)) {
                    composer2.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-519581786, i2, -1, "androidx.compose.material3.BottomSheetScaffold.<anonymous>.<anonymous>.<anonymous> (BottomSheetScaffold.kt:142)");
                }
                dm3Var.invoke(PaddingKt.m2030PaddingValuesa9UjIt4$default(0.0f, 0.0f, 0.0f, f, 7, null), composer2, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }

            @Override // defpackage.bm3
            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return j59.a;
            }
        }, composer, 54);
        final BottomSheetScaffoldState bottomSheetScaffoldState = this.$scaffoldState;
        final float f2 = this.$sheetPeekHeight;
        final float f3 = this.$sheetMaxWidth;
        final boolean z = this.$sheetSwipeEnabled;
        final Shape shape = this.$sheetShape;
        final long j = this.$sheetContainerColor;
        final long j2 = this.$sheetContentColor;
        final float f4 = this.$sheetTonalElevation;
        final float f5 = this.$sheetShadowElevation;
        final bm3<Composer, Integer, j59> bm3Var2 = this.$sheetDragHandle;
        final dm3<ColumnScope, Composer, Integer, j59> dm3Var2 = this.$sheetContent;
        ComposableLambda composableLambdaRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-815624571, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1.2
            public final void invoke(Composer composer2, int i2) {
                if (!composer2.shouldExecute((i2 & 3) != 2, i2 & 1)) {
                    composer2.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-815624571, i2, -1, "androidx.compose.material3.BottomSheetScaffold.<anonymous>.<anonymous>.<anonymous> (BottomSheetScaffold.kt:147)");
                }
                BottomSheetScaffoldKt.m3126StandardBottomSheetw7I5h1o(bottomSheetScaffoldState.getBottomSheetState(), f2, f3, z, shape, j, j2, f4, f5, bm3Var2, dm3Var2, composer2, 0, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }

            @Override // defpackage.bm3
            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return j59.a;
            }
        }, composer, 54);
        final dm3<SnackbarHostState, Composer, Integer, j59> dm3Var3 = this.$snackbarHost;
        final BottomSheetScaffoldState bottomSheetScaffoldState2 = this.$scaffoldState;
        ComposableLambda composableLambdaRememberComposableLambda3 = ComposableLambdaKt.rememberComposableLambda(-1111667356, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1.3
            public final void invoke(Composer composer2, int i2) {
                if (!composer2.shouldExecute((i2 & 3) != 2, i2 & 1)) {
                    composer2.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1111667356, i2, -1, "androidx.compose.material3.BottomSheetScaffold.<anonymous>.<anonymous>.<anonymous> (BottomSheetScaffold.kt:143)");
                }
                dm3Var3.invoke(bottomSheetScaffoldState2.getSnackbarHostState(), composer2, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }

            @Override // defpackage.bm3
            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return j59.a;
            }
        }, composer, 54);
        boolean zChanged = composer.changed(this.$scaffoldState);
        final BottomSheetScaffoldState bottomSheetScaffoldState3 = this.$scaffoldState;
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new ll3() { // from class: androidx.compose.material3.g
                @Override // defpackage.ll3
                public final Object invoke() {
                    return Float.valueOf(BottomSheetScaffoldKt$BottomSheetScaffold$1$1.invoke$lambda$1$lambda$0(bottomSheetScaffoldState3));
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        BottomSheetScaffoldKt.BottomSheetScaffoldLayout(bm3Var, composableLambdaRememberComposableLambda, composableLambdaRememberComposableLambda2, composableLambdaRememberComposableLambda3, (ll3) objRememberedValue, bottomSheetState, composer, 3504);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
        invoke(composer, num.intValue());
        return j59.a;
    }
}
