package androidx.compose.runtime;

import defpackage.bm3;
import defpackage.gx2;
import defpackage.hd3;
import defpackage.ll3;
import defpackage.o22;
import defpackage.tb7;
import defpackage.y68;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class SnapshotStateKt__SnapshotFlowKt {
    public static final <T extends R, R> State<R> collectAsState(hd3<? extends T> hd3Var, R r, o22 o22Var, Composer composer, int i, int i2) {
        if ((i2 & 2) != 0) {
            o22Var = gx2.b;
        }
        o22 o22Var2 = o22Var;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-606625098, i, -1, "androidx.compose.runtime.collectAsState (SnapshotFlow.kt:69)");
        }
        boolean zChangedInstance = composer.changedInstance(o22Var2) | composer.changedInstance(hd3Var);
        Object objRememberedValue = composer.rememberedValue();
        if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1(o22Var2, hd3Var, null);
            composer.updateRememberedValue(objRememberedValue);
        }
        State<R> stateProduceState = SnapshotStateKt.produceState(r, hd3Var, o22Var2, (bm3) objRememberedValue, composer, ((i >> 3) & 14) | ((i << 3) & 112) | (i & 896));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return stateProduceState;
    }

    public static final <T> hd3<T> snapshotFlow(ll3<? extends T> ll3Var) {
        return snapshotFlowImpl$SnapshotStateKt__SnapshotFlowKt(null, ll3Var);
    }

    private static final <T> hd3<T> snapshotFlowImpl$SnapshotStateKt__SnapshotFlowKt(SnapshotFlowManager snapshotFlowManager, ll3<? extends T> ll3Var) {
        return new tb7(new SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1(snapshotFlowManager, ll3Var, null));
    }

    public static final <T> hd3<T> snapshotFlow(SnapshotFlowManager snapshotFlowManager, ll3<? extends T> ll3Var) {
        return snapshotFlowImpl$SnapshotStateKt__SnapshotFlowKt(snapshotFlowManager, ll3Var);
    }

    public static final <T> State<T> collectAsState(y68<? extends T> y68Var, o22 o22Var, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            o22Var = gx2.b;
        }
        o22 o22Var2 = o22Var;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1439883919, i, -1, "androidx.compose.runtime.collectAsState (SnapshotFlow.kt:53)");
        }
        State<T> stateCollectAsState = SnapshotStateKt.collectAsState(y68Var, y68Var.getValue(), o22Var2, composer, (i & 14) | ((i << 3) & 896), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return stateCollectAsState;
    }
}
