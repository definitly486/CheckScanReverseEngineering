package androidx.compose.ui.input.pointer;

import androidx.compose.ui.geometry.Offset;
import defpackage.aa4;
import defpackage.e2;
import defpackage.jh2;
import defpackage.jn;
import defpackage.tg;
import defpackage.vg;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class PointerInputEventData {
    public static final int $stable = 8;
    private final boolean activeHover;
    private final boolean down;
    private final List<HistoricalChange> historical;
    private final long id;
    private final long originalEventPosition;
    private final long panGestureOffset;
    private final long position;
    private final long positionOnScreen;
    private final float pressure;
    private final float scaleGestureFactor;
    private final long scrollDelta;
    private final int type;
    private final long uptime;

    public /* synthetic */ PointerInputEventData(long j, long j2, long j3, long j4, boolean z, float f, int i, boolean z2, List list, long j5, float f2, long j6, long j7, int i2, jh2 jh2Var) {
        this(j, j2, j3, j4, z, f, i, (i2 & 128) != 0 ? false : z2, (i2 & 256) != 0 ? new ArrayList() : list, (i2 & 512) != 0 ? Offset.Companion.m6003getZeroF1C5BW0() : j5, f2, j6, (i2 & 4096) != 0 ? Offset.Companion.m6003getZeroF1C5BW0() : j7, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: copy-hf9UmOk$default, reason: not valid java name */
    public static /* synthetic */ PointerInputEventData m7575copyhf9UmOk$default(PointerInputEventData pointerInputEventData, long j, long j2, long j3, long j4, boolean z, float f, int i, boolean z2, List list, long j5, float f2, long j6, long j7, int i2, Object obj) {
        long j8;
        long j9;
        long j10 = (i2 & 1) != 0 ? pointerInputEventData.id : j;
        long j11 = (i2 & 2) != 0 ? pointerInputEventData.uptime : j2;
        long j12 = (i2 & 4) != 0 ? pointerInputEventData.positionOnScreen : j3;
        long j13 = (i2 & 8) != 0 ? pointerInputEventData.position : j4;
        boolean z3 = (i2 & 16) != 0 ? pointerInputEventData.down : z;
        float f3 = (i2 & 32) != 0 ? pointerInputEventData.pressure : f;
        int i3 = (i2 & 64) != 0 ? pointerInputEventData.type : i;
        boolean z4 = (i2 & 128) != 0 ? pointerInputEventData.activeHover : z2;
        List list2 = (i2 & 256) != 0 ? pointerInputEventData.historical : list;
        long j14 = (i2 & 512) != 0 ? pointerInputEventData.scrollDelta : j5;
        float f4 = (i2 & 1024) != 0 ? pointerInputEventData.scaleGestureFactor : f2;
        long j15 = (i2 & 2048) != 0 ? pointerInputEventData.panGestureOffset : j6;
        if ((i2 & 4096) != 0) {
            j9 = j15;
            j8 = pointerInputEventData.originalEventPosition;
        } else {
            j8 = j7;
            j9 = j15;
        }
        return pointerInputEventData.m7583copyhf9UmOk(j10, j11, j12, j13, z3, f3, i3, z4, list2, j14, f4, j9, j8);
    }

    /* JADX INFO: renamed from: component1-J3iCeTQ, reason: not valid java name */
    public final long m7576component1J3iCeTQ() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10-F1C5BW0, reason: not valid java name */
    public final long m7577component10F1C5BW0() {
        return this.scrollDelta;
    }

    public final float component11() {
        return this.scaleGestureFactor;
    }

    /* JADX INFO: renamed from: component12-F1C5BW0, reason: not valid java name */
    public final long m7578component12F1C5BW0() {
        return this.panGestureOffset;
    }

    /* JADX INFO: renamed from: component13-F1C5BW0, reason: not valid java name */
    public final long m7579component13F1C5BW0() {
        return this.originalEventPosition;
    }

    public final long component2() {
        return this.uptime;
    }

    /* JADX INFO: renamed from: component3-F1C5BW0, reason: not valid java name */
    public final long m7580component3F1C5BW0() {
        return this.positionOnScreen;
    }

    /* JADX INFO: renamed from: component4-F1C5BW0, reason: not valid java name */
    public final long m7581component4F1C5BW0() {
        return this.position;
    }

    public final boolean component5() {
        return this.down;
    }

    public final float component6() {
        return this.pressure;
    }

    /* JADX INFO: renamed from: component7-T8wyACA, reason: not valid java name */
    public final int m7582component7T8wyACA() {
        return this.type;
    }

    public final boolean component8() {
        return this.activeHover;
    }

    public final List<HistoricalChange> component9() {
        return this.historical;
    }

    /* JADX INFO: renamed from: copy-hf9UmOk, reason: not valid java name */
    public final PointerInputEventData m7583copyhf9UmOk(long j, long j2, long j3, long j4, boolean z, float f, int i, boolean z2, List<HistoricalChange> list, long j5, float f2, long j6, long j7) {
        return new PointerInputEventData(j, j2, j3, j4, z, f, i, z2, list, j5, f2, j6, j7, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PointerInputEventData)) {
            return false;
        }
        PointerInputEventData pointerInputEventData = (PointerInputEventData) obj;
        return PointerId.m7548equalsimpl0(this.id, pointerInputEventData.id) && this.uptime == pointerInputEventData.uptime && Offset.m5984equalsimpl0(this.positionOnScreen, pointerInputEventData.positionOnScreen) && Offset.m5984equalsimpl0(this.position, pointerInputEventData.position) && this.down == pointerInputEventData.down && Float.compare(this.pressure, pointerInputEventData.pressure) == 0 && PointerType.m7642equalsimpl0(this.type, pointerInputEventData.type) && this.activeHover == pointerInputEventData.activeHover && aa4.e(this.historical, pointerInputEventData.historical) && Offset.m5984equalsimpl0(this.scrollDelta, pointerInputEventData.scrollDelta) && Float.compare(this.scaleGestureFactor, pointerInputEventData.scaleGestureFactor) == 0 && Offset.m5984equalsimpl0(this.panGestureOffset, pointerInputEventData.panGestureOffset) && Offset.m5984equalsimpl0(this.originalEventPosition, pointerInputEventData.originalEventPosition);
    }

    public final boolean getActiveHover() {
        return this.activeHover;
    }

    public final boolean getDown() {
        return this.down;
    }

    public final List<HistoricalChange> getHistorical() {
        return this.historical;
    }

    /* JADX INFO: renamed from: getId-J3iCeTQ, reason: not valid java name */
    public final long m7584getIdJ3iCeTQ() {
        return this.id;
    }

    /* JADX INFO: renamed from: getOriginalEventPosition-F1C5BW0, reason: not valid java name */
    public final long m7585getOriginalEventPositionF1C5BW0() {
        return this.originalEventPosition;
    }

    /* JADX INFO: renamed from: getPanGestureOffset-F1C5BW0, reason: not valid java name */
    public final long m7586getPanGestureOffsetF1C5BW0() {
        return this.panGestureOffset;
    }

    /* JADX INFO: renamed from: getPosition-F1C5BW0, reason: not valid java name */
    public final long m7587getPositionF1C5BW0() {
        return this.position;
    }

    /* JADX INFO: renamed from: getPositionOnScreen-F1C5BW0, reason: not valid java name */
    public final long m7588getPositionOnScreenF1C5BW0() {
        return this.positionOnScreen;
    }

    public final float getPressure() {
        return this.pressure;
    }

    public final float getScaleGestureFactor() {
        return this.scaleGestureFactor;
    }

    /* JADX INFO: renamed from: getScrollDelta-F1C5BW0, reason: not valid java name */
    public final long m7589getScrollDeltaF1C5BW0() {
        return this.scrollDelta;
    }

    /* JADX INFO: renamed from: getType-T8wyACA, reason: not valid java name */
    public final int m7590getTypeT8wyACA() {
        return this.type;
    }

    public final long getUptime() {
        return this.uptime;
    }

    public int hashCode() {
        return Offset.m5989hashCodeimpl(this.originalEventPosition) + ((Offset.m5989hashCodeimpl(this.panGestureOffset) + jn.b(this.scaleGestureFactor, (Offset.m5989hashCodeimpl(this.scrollDelta) + e2.b(this.historical, tg.c((PointerType.m7643hashCodeimpl(this.type) + jn.b(this.pressure, tg.c((Offset.m5989hashCodeimpl(this.position) + ((Offset.m5989hashCodeimpl(this.positionOnScreen) + vg.b(PointerId.m7549hashCodeimpl(this.id) * 31, 31, this.uptime)) * 31)) * 31, 31, this.down), 31)) * 31, 31, this.activeHover), 31)) * 31, 31)) * 31);
    }

    public String toString() {
        return "PointerInputEventData(id=" + ((Object) PointerId.m7550toStringimpl(this.id)) + ", uptime=" + this.uptime + ", positionOnScreen=" + ((Object) Offset.m5995toStringimpl(this.positionOnScreen)) + ", position=" + ((Object) Offset.m5995toStringimpl(this.position)) + ", down=" + this.down + ", pressure=" + this.pressure + ", type=" + ((Object) PointerType.m7644toStringimpl(this.type)) + ", activeHover=" + this.activeHover + ", historical=" + this.historical + ", scrollDelta=" + ((Object) Offset.m5995toStringimpl(this.scrollDelta)) + ", scaleGestureFactor=" + this.scaleGestureFactor + ", panGestureOffset=" + ((Object) Offset.m5995toStringimpl(this.panGestureOffset)) + ", originalEventPosition=" + ((Object) Offset.m5995toStringimpl(this.originalEventPosition)) + ')';
    }

    private PointerInputEventData(long j, long j2, long j3, long j4, boolean z, float f, int i, boolean z2, List<HistoricalChange> list, long j5, float f2, long j6, long j7) {
        this.id = j;
        this.uptime = j2;
        this.positionOnScreen = j3;
        this.position = j4;
        this.down = z;
        this.pressure = f;
        this.type = i;
        this.activeHover = z2;
        this.historical = list;
        this.scrollDelta = j5;
        this.scaleGestureFactor = f2;
        this.panGestureOffset = j6;
        this.originalEventPosition = j7;
    }

    public /* synthetic */ PointerInputEventData(long j, long j2, long j3, long j4, boolean z, float f, int i, boolean z2, List list, long j5, float f2, long j6, long j7, jh2 jh2Var) {
        this(j, j2, j3, j4, z, f, i, z2, list, j5, f2, j6, j7);
    }
}
