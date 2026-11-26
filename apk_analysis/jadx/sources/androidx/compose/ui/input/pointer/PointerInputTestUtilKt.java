package androidx.compose.ui.input.pointer;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import defpackage.dm3;
import defpackage.fg;
import defpackage.j59;
import defpackage.jh2;
import defpackage.u96;
import defpackage.yr;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class PointerInputTestUtilKt {
    public static final PointerInputChange down(long j, long j2, float f, float f2, List<HistoricalChange> list) {
        PointerInputChange pointerInputChange = new PointerInputChange(PointerId.m7546constructorimpl(j), j2, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f)) << 32) | (((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), true, 1.0f, j2, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f)) << 32) | (((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), false, false, 0, 0L, 0.0f, 0L, 7680, (jh2) null);
        List<HistoricalChange> list2 = list;
        return (list2 == null || list2.isEmpty()) ? pointerInputChange : PointerInputChange.m7555copyOHpmEuE$default(pointerInputChange, 0L, 0L, 0L, false, 0L, 0L, false, 0, list, 0L, 767, null);
    }

    public static /* synthetic */ PointerInputChange down$default(long j, long j2, float f, float f2, List list, int i, Object obj) {
        if ((i & 2) != 0) {
            j2 = 0;
        }
        long j3 = j2;
        float f3 = (i & 4) != 0 ? 0.0f : f;
        float f4 = (i & 8) != 0 ? 0.0f : f2;
        if ((i & 16) != 0) {
            list = null;
        }
        return down(j, j3, f3, f4, list);
    }

    /* JADX INFO: renamed from: invokeOverAllPasses-H0pRuoY, reason: not valid java name */
    public static final void m7621invokeOverAllPassesH0pRuoY(dm3<? super PointerEvent, ? super PointerEventPass, ? super IntSize, j59> dm3Var, PointerEvent pointerEvent, long j) {
        m7625invokeOverPasseshUlJWOE(dm3Var, pointerEvent, (List<? extends PointerEventPass>) u96.i(PointerEventPass.Initial, PointerEventPass.Main, PointerEventPass.Final), j);
    }

    /* JADX INFO: renamed from: invokeOverAllPasses-H0pRuoY$default, reason: not valid java name */
    public static /* synthetic */ void m7622invokeOverAllPassesH0pRuoY$default(dm3 dm3Var, PointerEvent pointerEvent, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = IntSize.m9208constructorimpl(9223372034707292159L);
        }
        m7621invokeOverAllPassesH0pRuoY(dm3Var, pointerEvent, j);
    }

    /* JADX INFO: renamed from: invokeOverPass-hUlJWOE, reason: not valid java name */
    public static final void m7623invokeOverPasshUlJWOE(dm3<? super PointerEvent, ? super PointerEventPass, ? super IntSize, j59> dm3Var, PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        m7625invokeOverPasseshUlJWOE(dm3Var, pointerEvent, (List<? extends PointerEventPass>) u96.h(pointerEventPass), j);
    }

    /* JADX INFO: renamed from: invokeOverPass-hUlJWOE$default, reason: not valid java name */
    public static /* synthetic */ void m7624invokeOverPasshUlJWOE$default(dm3 dm3Var, PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j, int i, Object obj) {
        if ((i & 4) != 0) {
            j = IntSize.m9208constructorimpl(9223372034707292159L);
        }
        m7623invokeOverPasshUlJWOE(dm3Var, pointerEvent, pointerEventPass, j);
    }

    /* JADX INFO: renamed from: invokeOverPasses-hUlJWOE, reason: not valid java name */
    public static final void m7625invokeOverPasseshUlJWOE(dm3<? super PointerEvent, ? super PointerEventPass, ? super IntSize, j59> dm3Var, PointerEvent pointerEvent, List<? extends PointerEventPass> list, long j) {
        if (pointerEvent.getChanges().isEmpty()) {
            fg.c("invokeOverPasses called with no changes");
            return;
        }
        List<? extends PointerEventPass> list2 = list;
        if (list2.isEmpty()) {
            fg.c("invokeOverPasses called with no passes");
            return;
        }
        int size = list2.size();
        for (int i = 0; i < size; i++) {
            dm3Var.invoke(pointerEvent, list.get(i), IntSize.m9205boximpl(j));
        }
    }

    /* JADX INFO: renamed from: invokeOverPasses-hUlJWOE$default, reason: not valid java name */
    public static /* synthetic */ void m7628invokeOverPasseshUlJWOE$default(dm3 dm3Var, PointerEvent pointerEvent, PointerEventPass[] pointerEventPassArr, long j, int i, Object obj) {
        if ((i & 4) != 0) {
            j = IntSize.m9208constructorimpl(9223372034707292159L);
        }
        m7626invokeOverPasseshUlJWOE((dm3<? super PointerEvent, ? super PointerEventPass, ? super IntSize, j59>) dm3Var, pointerEvent, pointerEventPassArr, j);
    }

    public static final PointerInputChange moveBy(PointerInputChange pointerInputChange, long j, float f, float f2) {
        long jM7566getIdJ3iCeTQ = pointerInputChange.m7566getIdJ3iCeTQ();
        long uptimeMillis = pointerInputChange.getUptimeMillis();
        boolean pressed = pointerInputChange.getPressed();
        long jM7569getPositionF1C5BW0 = pointerInputChange.m7569getPositionF1C5BW0();
        long uptimeMillis2 = pointerInputChange.getUptimeMillis() + j;
        float fIntBitsToFloat = Float.intBitsToFloat((int) (pointerInputChange.m7569getPositionF1C5BW0() >> 32)) + f;
        return new PointerInputChange(jM7566getIdJ3iCeTQ, uptimeMillis2, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (pointerInputChange.m7569getPositionF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32)), true, 1.0f, uptimeMillis, jM7569getPositionF1C5BW0, pressed, false, 0, 0L, 0.0f, 0L, 7680, (jh2) null);
    }

    public static /* synthetic */ PointerInputChange moveBy$default(PointerInputChange pointerInputChange, long j, float f, float f2, int i, Object obj) {
        if ((i & 2) != 0) {
            f = 0.0f;
        }
        if ((i & 4) != 0) {
            f2 = 0.0f;
        }
        return moveBy(pointerInputChange, j, f, f2);
    }

    public static final PointerInputChange moveTo(PointerInputChange pointerInputChange, long j, float f, float f2) {
        long jM7566getIdJ3iCeTQ = pointerInputChange.m7566getIdJ3iCeTQ();
        long uptimeMillis = pointerInputChange.getUptimeMillis();
        boolean pressed = pointerInputChange.getPressed();
        return new PointerInputChange(jM7566getIdJ3iCeTQ, j, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f)) << 32) | (((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), true, 1.0f, uptimeMillis, pointerInputChange.m7569getPositionF1C5BW0(), pressed, false, 0, 0L, 0.0f, 0L, 7680, (jh2) null);
    }

    public static /* synthetic */ PointerInputChange moveTo$default(PointerInputChange pointerInputChange, long j, float f, float f2, int i, Object obj) {
        if ((i & 2) != 0) {
            f = 0.0f;
        }
        if ((i & 4) != 0) {
            f2 = 0.0f;
        }
        return moveTo(pointerInputChange, j, f, f2);
    }

    public static final PointerInputChange up(PointerInputChange pointerInputChange, long j) {
        long jM7566getIdJ3iCeTQ = pointerInputChange.m7566getIdJ3iCeTQ();
        long uptimeMillis = pointerInputChange.getUptimeMillis();
        boolean pressed = pointerInputChange.getPressed();
        return new PointerInputChange(jM7566getIdJ3iCeTQ, j, pointerInputChange.m7569getPositionF1C5BW0(), false, 1.0f, uptimeMillis, pointerInputChange.m7569getPositionF1C5BW0(), pressed, false, 0, 0L, 0.0f, 0L, 7680, (jh2) null);
    }

    /* JADX INFO: renamed from: invokeOverPasses-hUlJWOE$default, reason: not valid java name */
    public static /* synthetic */ void m7627invokeOverPasseshUlJWOE$default(dm3 dm3Var, PointerEvent pointerEvent, List list, long j, int i, Object obj) {
        if ((i & 4) != 0) {
            j = IntSize.m9208constructorimpl(9223372034707292159L);
        }
        m7625invokeOverPasseshUlJWOE((dm3<? super PointerEvent, ? super PointerEventPass, ? super IntSize, j59>) dm3Var, pointerEvent, (List<? extends PointerEventPass>) list, j);
    }

    /* JADX INFO: renamed from: invokeOverPasses-hUlJWOE, reason: not valid java name */
    public static final void m7626invokeOverPasseshUlJWOE(dm3<? super PointerEvent, ? super PointerEventPass, ? super IntSize, j59> dm3Var, PointerEvent pointerEvent, PointerEventPass[] pointerEventPassArr, long j) {
        m7625invokeOverPasseshUlJWOE(dm3Var, pointerEvent, (List<? extends PointerEventPass>) yr.h0(pointerEventPassArr), j);
    }
}
