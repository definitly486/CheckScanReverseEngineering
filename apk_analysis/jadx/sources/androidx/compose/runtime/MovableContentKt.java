package androidx.compose.runtime;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MovableContentKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.b36;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.fm3;
import defpackage.gm3;
import defpackage.hm3;
import defpackage.j59;
import defpackage.k39;
import defpackage.qf0;
import defpackage.vd5;
import defpackage.vn;
import defpackage.yd5;

/* JADX INFO: loaded from: classes2.dex */
public final class MovableContentKt {
    public static final int movableContentKey = 126665345;

    public static final bm3<Composer, Integer, j59> movableContentOf(final bm3<? super Composer, ? super Integer, j59> bm3Var) {
        return ComposableLambdaKt.composableLambdaInstance(-328108779, true, new vd5(new MovableContent(ComposableLambdaKt.composableLambdaInstance(-703201834, true, new dm3() { // from class: androidx.compose.runtime.MovableContentKt$movableContentOf$movableContent$1
            public final void invoke(Void r3, Composer composer, int i) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-703201834, i, -1, "androidx.compose.runtime.movableContentOf.<anonymous> (MovableContent.kt:39)");
                }
                bm3Var.invoke(composer, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }

            @Override // defpackage.dm3
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                invoke((Void) obj, (Composer) obj2, ((Number) obj3).intValue());
                return j59.a;
            }
        })), 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 movableContentOf$lambda$0(MovableContent movableContent, Composer composer, int i) {
        if (composer.shouldExecute((i & 3) != 2, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-328108779, i, -1, "androidx.compose.runtime.movableContentOf.<anonymous> (MovableContent.kt:40)");
            }
            composer.insertMovableContent(movableContent, null);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 movableContentOf$lambda$1(MovableContent movableContent, Object obj, Composer composer, int i) {
        if ((i & 6) == 0) {
            i |= (i & 8) == 0 ? composer.changed(obj) : composer.changedInstance(obj) ? 4 : 2;
        }
        if (composer.shouldExecute((i & 19) != 18, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1032736913, i, -1, "androidx.compose.runtime.movableContentOf.<anonymous> (MovableContent.kt:63)");
            }
            composer.insertMovableContent(movableContent, obj);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 movableContentOf$lambda$2(fm3 fm3Var, b36 b36Var, Composer composer, int i) {
        if ((i & 6) == 0) {
            i |= (i & 8) == 0 ? composer.changed(b36Var) : composer.changedInstance(b36Var) ? 4 : 2;
        }
        if (composer.shouldExecute((i & 19) != 18, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(561467799, i, -1, "androidx.compose.runtime.movableContentOf.<anonymous> (MovableContent.kt:87)");
            }
            fm3Var.invoke(b36Var.b, b36Var.c, composer, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 movableContentOf$lambda$3(MovableContent movableContent, Object obj, Object obj2, Composer composer, int i) {
        int i2;
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composer.changed(obj) : composer.changedInstance(obj) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? composer.changed(obj2) : composer.changedInstance(obj2) ? 32 : 16;
        }
        if (composer.shouldExecute((i2 & 147) != 146, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-525773808, i2, -1, "androidx.compose.runtime.movableContentOf.<anonymous> (MovableContent.kt:88)");
            }
            composer.insertMovableContent(movableContent, new b36(obj, obj2));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 movableContentOf$lambda$4(gm3 gm3Var, k39 k39Var, Composer composer, int i) {
        if ((i & 6) == 0) {
            i |= (i & 8) == 0 ? composer.changed(k39Var) : composer.changedInstance(k39Var) ? 4 : 2;
        }
        if (composer.shouldExecute((i & 19) != 18, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-846116651, i, -1, "androidx.compose.runtime.movableContentOf.<anonymous> (MovableContent.kt:113)");
            }
            gm3Var.invoke(k39Var.b, k39Var.c, k39Var.d, composer, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 movableContentOf$lambda$5(MovableContent movableContent, Object obj, Object obj2, Object obj3, Composer composer, int i) {
        int i2;
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composer.changed(obj) : composer.changedInstance(obj) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? composer.changed(obj2) : composer.changedInstance(obj2) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= (i & 512) == 0 ? composer.changed(obj3) : composer.changedInstance(obj3) ? 256 : 128;
        }
        if (composer.shouldExecute((i2 & 1171) != 1170, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1477386365, i2, -1, "androidx.compose.runtime.movableContentOf.<anonymous> (MovableContent.kt:115)");
            }
            composer.insertMovableContent(movableContent, new k39(obj, obj2, obj3));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 movableContentOf$lambda$6(hm3 hm3Var, Object[] objArr, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(743481490, i, -1, "androidx.compose.runtime.movableContentOf.<anonymous> (MovableContent.kt:142)");
        }
        hm3Var.invoke(objArr[0], objArr[1], objArr[2], objArr[3], composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 movableContentOf$lambda$7(MovableContent movableContent, Object obj, Object obj2, Object obj3, Object obj4, Composer composer, int i) {
        int i2;
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composer.changed(obj) : composer.changedInstance(obj) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? composer.changed(obj2) : composer.changedInstance(obj2) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= (i & 512) == 0 ? composer.changed(obj3) : composer.changedInstance(obj3) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= (i & 4096) == 0 ? composer.changed(obj4) : composer.changedInstance(obj4) ? 2048 : 1024;
        }
        if (composer.shouldExecute((i2 & 9363) != 9362, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1304803723, i2, -1, "androidx.compose.runtime.movableContentOf.<anonymous> (MovableContent.kt:146)");
            }
            composer.insertMovableContent(movableContent, new Object[]{obj, obj2, obj3, obj4});
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    public static final <R> dm3<R, Composer, Integer, j59> movableContentWithReceiverOf(final dm3<? super R, ? super Composer, ? super Integer, j59> dm3Var) {
        final MovableContent movableContent = new MovableContent(ComposableLambdaKt.composableLambdaInstance(668517896, true, new dm3() { // from class: de5
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                int iIntValue = ((Integer) obj3).intValue();
                return MovableContentKt.movableContentWithReceiverOf$lambda$0(dm3Var, obj, (Composer) obj2, iIntValue);
            }
        }));
        return ComposableLambdaKt.composableLambdaInstance(-1655274392, true, new dm3() { // from class: ee5
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                int iIntValue = ((Integer) obj3).intValue();
                return MovableContentKt.movableContentWithReceiverOf$lambda$1(movableContent, obj, (Composer) obj2, iIntValue);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 movableContentWithReceiverOf$lambda$0(dm3 dm3Var, Object obj, Composer composer, int i) {
        if ((i & 6) == 0) {
            i |= (i & 8) == 0 ? composer.changed(obj) : composer.changedInstance(obj) ? 4 : 2;
        }
        if (composer.shouldExecute((i & 19) != 18, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(668517896, i, -1, "androidx.compose.runtime.movableContentWithReceiverOf.<anonymous> (MovableContent.kt:171)");
            }
            dm3Var.invoke(obj, composer, Integer.valueOf(i & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 movableContentWithReceiverOf$lambda$1(MovableContent movableContent, Object obj, Composer composer, int i) {
        if ((i & 6) == 0) {
            i |= (i & 8) == 0 ? composer.changed(obj) : composer.changedInstance(obj) ? 4 : 2;
        }
        if (composer.shouldExecute((i & 19) != 18, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1655274392, i, -1, "androidx.compose.runtime.movableContentWithReceiverOf.<anonymous> (MovableContent.kt:172)");
            }
            composer.insertMovableContent(movableContent, obj);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 movableContentWithReceiverOf$lambda$2(fm3 fm3Var, b36 b36Var, Composer composer, int i) {
        if ((i & 6) == 0) {
            i |= (i & 8) == 0 ? composer.changed(b36Var) : composer.changedInstance(b36Var) ? 4 : 2;
        }
        if (composer.shouldExecute((i & 19) != 18, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-95003188, i, -1, "androidx.compose.runtime.movableContentWithReceiverOf.<anonymous> (MovableContent.kt:196)");
            }
            fm3Var.invoke(b36Var.b, b36Var.c, composer, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 movableContentWithReceiverOf$lambda$3(MovableContent movableContent, Object obj, Object obj2, Composer composer, int i) {
        int i2;
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composer.changed(obj) : composer.changedInstance(obj) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? composer.changed(obj2) : composer.changedInstance(obj2) ? 32 : 16;
        }
        if (composer.shouldExecute((i2 & 147) != 146, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1349529900, i2, -1, "androidx.compose.runtime.movableContentWithReceiverOf.<anonymous> (MovableContent.kt:197)");
            }
            composer.insertMovableContent(movableContent, new b36(obj, obj2));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 movableContentWithReceiverOf$lambda$4(gm3 gm3Var, k39 k39Var, Composer composer, int i) {
        if ((i & 6) == 0) {
            i |= (i & 8) == 0 ? composer.changed(k39Var) : composer.changedInstance(k39Var) ? 4 : 2;
        }
        if (composer.shouldExecute((i & 19) != 18, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-963896566, i, -1, "androidx.compose.runtime.movableContentWithReceiverOf.<anonymous> (MovableContent.kt:221)");
            }
            gm3Var.invoke(k39Var.b, k39Var.c, k39Var.d, composer, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 movableContentWithReceiverOf$lambda$5(MovableContent movableContent, Object obj, Object obj2, Object obj3, Composer composer, int i) {
        int i2;
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composer.changed(obj) : composer.changedInstance(obj) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? composer.changed(obj2) : composer.changedInstance(obj2) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= (i & 512) == 0 ? composer.changed(obj3) : composer.changedInstance(obj3) ? 256 : 128;
        }
        if (composer.shouldExecute((i2 & 1171) != 1170, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2121535275, i2, -1, "androidx.compose.runtime.movableContentWithReceiverOf.<anonymous> (MovableContent.kt:222)");
            }
            composer.insertMovableContent(movableContent, new k39(obj, obj2, obj3));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 movableContentWithReceiverOf$lambda$6(hm3 hm3Var, Object[] objArr, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-346590649, i, -1, "androidx.compose.runtime.movableContentWithReceiverOf.<anonymous> (MovableContent.kt:248)");
        }
        hm3Var.invoke(objArr[0], objArr[1], objArr[2], objArr[3], composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 movableContentWithReceiverOf$lambda$7(MovableContent movableContent, Object obj, Object obj2, Object obj3, Object obj4, Composer composer, int i) {
        int i2;
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composer.changed(obj) : composer.changedInstance(obj) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? composer.changed(obj2) : composer.changedInstance(obj2) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= (i & 512) == 0 ? composer.changed(obj3) : composer.changedInstance(obj3) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= (i & 4096) == 0 ? composer.changed(obj4) : composer.changedInstance(obj4) ? 2048 : 1024;
        }
        if (composer.shouldExecute((i2 & 9363) != 9362, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(572330192, i2, -1, "androidx.compose.runtime.movableContentWithReceiverOf.<anonymous> (MovableContent.kt:252)");
            }
            composer.insertMovableContent(movableContent, new Object[]{obj, obj2, obj3, obj4});
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    public static final <R, P> fm3<R, P, Composer, Integer, j59> movableContentWithReceiverOf(final fm3<? super R, ? super P, ? super Composer, ? super Integer, j59> fm3Var) {
        final MovableContent movableContent = new MovableContent(ComposableLambdaKt.composableLambdaInstance(-95003188, true, new dm3() { // from class: fe5
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                int iIntValue = ((Integer) obj3).intValue();
                return MovableContentKt.movableContentWithReceiverOf$lambda$2(fm3Var, (b36) obj, (Composer) obj2, iIntValue);
            }
        }));
        return ComposableLambdaKt.composableLambdaInstance(1349529900, true, new fm3() { // from class: ge5
            @Override // defpackage.fm3
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                int iIntValue = ((Integer) obj4).intValue();
                return MovableContentKt.movableContentWithReceiverOf$lambda$3(movableContent, obj, obj2, (Composer) obj3, iIntValue);
            }
        });
    }

    public static final <P> dm3<P, Composer, Integer, j59> movableContentOf(dm3<? super P, ? super Composer, ? super Integer, j59> dm3Var) {
        return ComposableLambdaKt.composableLambdaInstance(1032736913, true, new yd5(new MovableContent(dm3Var), 0));
    }

    public static final <R, P1, P2> gm3<R, P1, P2, Composer, Integer, j59> movableContentWithReceiverOf(gm3<? super R, ? super P1, ? super P2, ? super Composer, ? super Integer, j59> gm3Var) {
        final MovableContent movableContent = new MovableContent(ComposableLambdaKt.composableLambdaInstance(-963896566, true, new vn(gm3Var, 1)));
        return ComposableLambdaKt.composableLambdaInstance(2121535275, true, new gm3() { // from class: he5
            @Override // defpackage.gm3
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                int iIntValue = ((Integer) obj5).intValue();
                return MovableContentKt.movableContentWithReceiverOf$lambda$5(movableContent, obj, obj2, obj3, (Composer) obj4, iIntValue);
            }
        });
    }

    public static final <P1, P2> fm3<P1, P2, Composer, Integer, j59> movableContentOf(final fm3<? super P1, ? super P2, ? super Composer, ? super Integer, j59> fm3Var) {
        final MovableContent movableContent = new MovableContent(ComposableLambdaKt.composableLambdaInstance(561467799, true, new dm3() { // from class: zd5
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                int iIntValue = ((Integer) obj3).intValue();
                return MovableContentKt.movableContentOf$lambda$2(fm3Var, (b36) obj, (Composer) obj2, iIntValue);
            }
        }));
        return ComposableLambdaKt.composableLambdaInstance(-525773808, true, new fm3() { // from class: ae5
            @Override // defpackage.fm3
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                int iIntValue = ((Integer) obj4).intValue();
                return MovableContentKt.movableContentOf$lambda$3(movableContent, obj, obj2, (Composer) obj3, iIntValue);
            }
        });
    }

    public static final <R, P1, P2, P3> hm3<R, P1, P2, P3, Composer, Integer, j59> movableContentWithReceiverOf(final hm3<? super R, ? super P1, ? super P2, ? super P3, ? super Composer, ? super Integer, j59> hm3Var) {
        final MovableContent movableContent = new MovableContent(ComposableLambdaKt.composableLambdaInstance(-346590649, true, new dm3() { // from class: wd5
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                int iIntValue = ((Integer) obj3).intValue();
                return MovableContentKt.movableContentWithReceiverOf$lambda$6(hm3Var, (Object[]) obj, (Composer) obj2, iIntValue);
            }
        }));
        return ComposableLambdaKt.composableLambdaInstance(572330192, true, new hm3() { // from class: xd5
            @Override // defpackage.hm3
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
                int iIntValue = ((Integer) obj6).intValue();
                return MovableContentKt.movableContentWithReceiverOf$lambda$7(movableContent, obj, obj2, obj3, obj4, (Composer) obj5, iIntValue);
            }
        });
    }

    public static final <P1, P2, P3> gm3<P1, P2, P3, Composer, Integer, j59> movableContentOf(final gm3<? super P1, ? super P2, ? super P3, ? super Composer, ? super Integer, j59> gm3Var) {
        final MovableContent movableContent = new MovableContent(ComposableLambdaKt.composableLambdaInstance(-846116651, true, new dm3() { // from class: ud5
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                int iIntValue = ((Integer) obj3).intValue();
                return MovableContentKt.movableContentOf$lambda$4(gm3Var, (k39) obj, (Composer) obj2, iIntValue);
            }
        }));
        return ComposableLambdaKt.composableLambdaInstance(1477386365, true, new gm3() { // from class: be5
            @Override // defpackage.gm3
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                int iIntValue = ((Integer) obj5).intValue();
                return MovableContentKt.movableContentOf$lambda$5(movableContent, obj, obj2, obj3, (Composer) obj4, iIntValue);
            }
        });
    }

    public static final <P1, P2, P3, P4> hm3<P1, P2, P3, P4, Composer, Integer, j59> movableContentOf(hm3<? super P1, ? super P2, ? super P3, ? super P4, ? super Composer, ? super Integer, j59> hm3Var) {
        final MovableContent movableContent = new MovableContent(ComposableLambdaKt.composableLambdaInstance(743481490, true, new qf0(hm3Var, 1)));
        return ComposableLambdaKt.composableLambdaInstance(-1304803723, true, new hm3() { // from class: ce5
            @Override // defpackage.hm3
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
                int iIntValue = ((Integer) obj6).intValue();
                return MovableContentKt.movableContentOf$lambda$7(movableContent, obj, obj2, obj3, obj4, (Composer) obj5, iIntValue);
            }
        });
    }
}
