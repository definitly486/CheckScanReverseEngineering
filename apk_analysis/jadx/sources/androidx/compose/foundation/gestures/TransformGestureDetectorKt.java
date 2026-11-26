package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.spatial.RectListKt;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f57;
import defpackage.fm3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.sc7;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class TransformGestureDetectorKt {

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TransformGestureDetectorKt$detectTransformGestures$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.TransformGestureDetectorKt$detectTransformGestures$2", f = "TransformGestureDetector.kt", l = {60, RectListKt.BitOffsetForGesturable}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
        final /* synthetic */ fm3<Offset, Offset, Float, Float, j59> $onGesture;
        final /* synthetic */ boolean $panZoomLock;
        float F$0;
        float F$1;
        float F$2;
        int I$0;
        int I$1;
        long J$0;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(boolean z, fm3<? super Offset, ? super Offset, ? super Float, ? super Float, j59> fm3Var, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$panZoomLock = z;
            this.$onGesture = fm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$panZoomLock, this.$onGesture, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:19:0x00a6  */
        /* JADX WARN: Code duplicated, block: B:22:0x00b4 A[LOOP:0: B:18:0x00a4->B:22:0x00b4, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:72:0x00b7 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:73:0x00b2 A[SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x008e -> B:17:0x0091). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r25) {
            /*
                Method dump skipped, instruction units count: 419
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TransformGestureDetectorKt.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: angle-k-4lQ0M, reason: not valid java name */
    private static final float m1644anglek4lQ0M(long j) {
        int i = (int) (j >> 32);
        if (Float.intBitsToFloat(i) == 0.0f && Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) == 0.0f) {
            return 0.0f;
        }
        return ((-((float) Math.atan2(Float.intBitsToFloat(i), Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE))))) * 180.0f) / 3.1415927f;
    }

    public static final long calculateCentroid(PointerEvent pointerEvent, boolean z, nl3<? super PointerInputChange, Boolean> nl3Var) {
        long jM6003getZeroF1C5BW0 = Offset.Companion.m6003getZeroF1C5BW0();
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int size = changes.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            PointerInputChange pointerInputChange = changes.get(i2);
            if (nl3Var.invoke(pointerInputChange).booleanValue()) {
                jM6003getZeroF1C5BW0 = Offset.m5992plusMKHz9U(jM6003getZeroF1C5BW0, z ? pointerInputChange.m7569getPositionF1C5BW0() : pointerInputChange.m7570getPreviousPositionF1C5BW0());
                i++;
            }
        }
        return i == 0 ? Offset.Companion.m6002getUnspecifiedF1C5BW0() : Offset.m5982divtuRUvjQ(jM6003getZeroF1C5BW0, i);
    }

    public static /* synthetic */ long calculateCentroid$default(PointerEvent pointerEvent, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return calculateCentroid(pointerEvent, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean calculateCentroid$lambda$0(PointerInputChange pointerInputChange) {
        return pointerInputChange.getPressed() && pointerInputChange.getPreviousPressed();
    }

    public static final float calculateCentroidSize(PointerEvent pointerEvent, boolean z) {
        long jCalculateCentroid = calculateCentroid(pointerEvent, z);
        float fM5985getDistanceimpl = 0.0f;
        if (Offset.m5984equalsimpl0(jCalculateCentroid, Offset.Companion.m6002getUnspecifiedF1C5BW0())) {
            return 0.0f;
        }
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int size = changes.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            PointerInputChange pointerInputChange = changes.get(i2);
            if (pointerInputChange.getPressed() && pointerInputChange.getPreviousPressed()) {
                i++;
                fM5985getDistanceimpl = Offset.m5985getDistanceimpl(Offset.m5991minusMKHz9U(z ? pointerInputChange.m7569getPositionF1C5BW0() : pointerInputChange.m7570getPreviousPositionF1C5BW0(), jCalculateCentroid)) + fM5985getDistanceimpl;
            }
        }
        return fM5985getDistanceimpl / i;
    }

    public static /* synthetic */ float calculateCentroidSize$default(PointerEvent pointerEvent, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return calculateCentroidSize(pointerEvent, z);
    }

    public static final long calculatePan(PointerEvent pointerEvent) {
        long jCalculateCentroid = calculateCentroid(pointerEvent, true);
        Offset.Companion companion = Offset.Companion;
        return Offset.m5984equalsimpl0(jCalculateCentroid, companion.m6002getUnspecifiedF1C5BW0()) ? companion.m6003getZeroF1C5BW0() : Offset.m5991minusMKHz9U(jCalculateCentroid, calculateCentroid(pointerEvent, false));
    }

    public static final float calculateRotation(PointerEvent pointerEvent) {
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int size = changes.size();
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = 1;
            if (i >= size) {
                break;
            }
            PointerInputChange pointerInputChange = changes.get(i);
            if (!pointerInputChange.getPreviousPressed() || !pointerInputChange.getPressed()) {
                i3 = 0;
            }
            i2 += i3;
            i++;
        }
        if (i2 < 2) {
            return 0.0f;
        }
        long jCalculateCentroid = calculateCentroid(pointerEvent, true);
        long jCalculateCentroid2 = calculateCentroid(pointerEvent, false);
        List<PointerInputChange> changes2 = pointerEvent.getChanges();
        int size2 = changes2.size();
        float f = 0.0f;
        float f2 = 0.0f;
        for (int i4 = 0; i4 < size2; i4++) {
            PointerInputChange pointerInputChange2 = changes2.get(i4);
            if (pointerInputChange2.getPressed() && pointerInputChange2.getPreviousPressed()) {
                long jM7569getPositionF1C5BW0 = pointerInputChange2.m7569getPositionF1C5BW0();
                long jM5991minusMKHz9U = Offset.m5991minusMKHz9U(pointerInputChange2.m7570getPreviousPositionF1C5BW0(), jCalculateCentroid2);
                long jM5991minusMKHz9U2 = Offset.m5991minusMKHz9U(jM7569getPositionF1C5BW0, jCalculateCentroid);
                float fM1644anglek4lQ0M = m1644anglek4lQ0M(jM5991minusMKHz9U2) - m1644anglek4lQ0M(jM5991minusMKHz9U);
                float fM5985getDistanceimpl = Offset.m5985getDistanceimpl(Offset.m5992plusMKHz9U(jM5991minusMKHz9U2, jM5991minusMKHz9U)) / 2.0f;
                if (fM1644anglek4lQ0M > 180.0f) {
                    fM1644anglek4lQ0M -= 360.0f;
                } else if (fM1644anglek4lQ0M < -180.0f) {
                    fM1644anglek4lQ0M += 360.0f;
                }
                f2 += fM1644anglek4lQ0M * fM5985getDistanceimpl;
                f += fM5985getDistanceimpl;
            }
        }
        if (f == 0.0f) {
            return 0.0f;
        }
        return f2 / f;
    }

    public static final float calculateZoom(PointerEvent pointerEvent) {
        float fCalculateCentroidSize = calculateCentroidSize(pointerEvent, true);
        float fCalculateCentroidSize2 = calculateCentroidSize(pointerEvent, false);
        if (fCalculateCentroidSize == 0.0f || fCalculateCentroidSize2 == 0.0f) {
            return 1.0f;
        }
        return fCalculateCentroidSize / fCalculateCentroidSize2;
    }

    public static final Object detectTransformGestures(PointerInputScope pointerInputScope, boolean z, fm3<? super Offset, ? super Offset, ? super Float, ? super Float, j59> fm3Var, e02<? super j59> e02Var) {
        Object objAwaitEachGesture = ForEachGestureKt.awaitEachGesture(pointerInputScope, new AnonymousClass2(z, fm3Var, null), e02Var);
        return objAwaitEachGesture == a32.COROUTINE_SUSPENDED ? objAwaitEachGesture : j59.a;
    }

    public static /* synthetic */ Object detectTransformGestures$default(PointerInputScope pointerInputScope, boolean z, fm3 fm3Var, e02 e02Var, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return detectTransformGestures(pointerInputScope, z, fm3Var, e02Var);
    }

    public static /* synthetic */ long calculateCentroid$default(PointerEvent pointerEvent, boolean z, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return calculateCentroid(pointerEvent, z, nl3Var);
    }

    public static final long calculateCentroid(PointerEvent pointerEvent, boolean z) {
        return calculateCentroid(pointerEvent, z, new sc7(1));
    }
}
