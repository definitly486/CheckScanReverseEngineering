package androidx.compose.ui.input.pointer;

import androidx.compose.ui.geometry.Offset;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.ul2;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class PointerInputChange {
    public static final int $stable = 0;
    private ConsumedData _consumed;
    private List<HistoricalChange> _historical;
    private PointerInputChange consumedDelegate;
    private boolean downChange;
    private final long id;
    private long originalEventPosition;
    private final long panOffset;
    private final long position;
    private boolean positionChange;
    private final boolean pressed;
    private final float pressure;
    private final long previousPosition;
    private final boolean previousPressed;
    private final long previousUptimeMillis;
    private final float scaleFactor;
    private final long scrollDelta;
    private final int type;
    private final long uptimeMillis;

    public /* synthetic */ PointerInputChange(long j, long j2, long j3, boolean z, float f, long j4, long j5, boolean z2, boolean z3, int i, long j6, float f2, long j7, int i2, jh2 jh2Var) {
        this(j, j2, j3, z, f, j4, j5, z2, z3, (i2 & 512) != 0 ? PointerType.Companion.m7649getTouchT8wyACA() : i, (i2 & 1024) != 0 ? Offset.Companion.m6003getZeroF1C5BW0() : j6, (i2 & 2048) != 0 ? 1.0f : f2, (i2 & 4096) != 0 ? Offset.Companion.m6003getZeroF1C5BW0() : j7, (jh2) null);
    }

    /* JADX INFO: renamed from: copy-0GkPj7c$default, reason: not valid java name */
    public static /* synthetic */ PointerInputChange m7552copy0GkPj7c$default(PointerInputChange pointerInputChange, long j, long j2, long j3, boolean z, long j4, long j5, boolean z2, ConsumedData consumedData, int i, long j6, int i2, Object obj) {
        long j7;
        long j8 = (i2 & 1) != 0 ? pointerInputChange.id : j;
        long j9 = (i2 & 2) != 0 ? pointerInputChange.uptimeMillis : j2;
        long j10 = (i2 & 4) != 0 ? pointerInputChange.position : j3;
        boolean z3 = (i2 & 8) != 0 ? pointerInputChange.pressed : z;
        long j11 = (i2 & 16) != 0 ? pointerInputChange.previousUptimeMillis : j4;
        long j12 = (i2 & 32) != 0 ? pointerInputChange.previousPosition : j5;
        boolean z4 = (i2 & 64) != 0 ? pointerInputChange.previousPressed : z2;
        int i3 = (i2 & 256) != 0 ? pointerInputChange.type : i;
        if ((i2 & 512) != 0) {
            j7 = pointerInputChange.scrollDelta;
            j8 = j8;
        } else {
            j7 = j6;
        }
        return pointerInputChange.m7559copy0GkPj7c(j8, j9, j10, z3, j11, j12, z4, consumedData, i3, j7);
    }

    /* JADX INFO: renamed from: copy-JKmWfYY$default, reason: not valid java name */
    public static /* synthetic */ PointerInputChange m7554copyJKmWfYY$default(PointerInputChange pointerInputChange, long j, long j2, long j3, boolean z, long j4, long j5, boolean z2, int i, long j6, int i2, Object obj) {
        long j7;
        long j8;
        long j9 = (i2 & 1) != 0 ? pointerInputChange.id : j;
        long j10 = (i2 & 2) != 0 ? pointerInputChange.uptimeMillis : j2;
        long j11 = (i2 & 4) != 0 ? pointerInputChange.position : j3;
        boolean z3 = (i2 & 8) != 0 ? pointerInputChange.pressed : z;
        long j12 = (i2 & 16) != 0 ? pointerInputChange.previousUptimeMillis : j4;
        long j13 = (i2 & 32) != 0 ? pointerInputChange.previousPosition : j5;
        boolean z4 = (i2 & 64) != 0 ? pointerInputChange.previousPressed : z2;
        int i3 = (i2 & 128) != 0 ? pointerInputChange.type : i;
        if ((i2 & 256) != 0) {
            j7 = pointerInputChange.scrollDelta;
            j8 = j9;
        } else {
            j7 = j6;
            j8 = j9;
        }
        return pointerInputChange.m7561copyJKmWfYY(j8, j10, j11, z3, j12, j13, z4, i3, j7);
    }

    /* JADX INFO: renamed from: copy-OHpmEuE$default, reason: not valid java name */
    public static /* synthetic */ PointerInputChange m7555copyOHpmEuE$default(PointerInputChange pointerInputChange, long j, long j2, long j3, boolean z, long j4, long j5, boolean z2, int i, List list, long j6, int i2, Object obj) {
        long j7;
        long j8 = (i2 & 1) != 0 ? pointerInputChange.id : j;
        long j9 = (i2 & 2) != 0 ? pointerInputChange.uptimeMillis : j2;
        long j10 = (i2 & 4) != 0 ? pointerInputChange.position : j3;
        boolean z3 = (i2 & 8) != 0 ? pointerInputChange.pressed : z;
        long j11 = (i2 & 16) != 0 ? pointerInputChange.previousUptimeMillis : j4;
        long j12 = (i2 & 32) != 0 ? pointerInputChange.previousPosition : j5;
        boolean z4 = (i2 & 64) != 0 ? pointerInputChange.previousPressed : z2;
        int i3 = (i2 & 128) != 0 ? pointerInputChange.type : i;
        if ((i2 & 512) != 0) {
            j7 = pointerInputChange.scrollDelta;
            j8 = j8;
        } else {
            j7 = j6;
        }
        return pointerInputChange.m7562copyOHpmEuE(j8, j9, j10, z3, j11, j12, z4, i3, list, j7);
    }

    /* JADX INFO: renamed from: copy-Tn9QgHE$default, reason: not valid java name */
    public static /* synthetic */ PointerInputChange m7556copyTn9QgHE$default(PointerInputChange pointerInputChange, long j, long j2, long j3, boolean z, float f, long j4, long j5, boolean z2, int i, long j6, int i2, Object obj) {
        long j7;
        long j8;
        long j9 = (i2 & 1) != 0 ? pointerInputChange.id : j;
        long j10 = (i2 & 2) != 0 ? pointerInputChange.uptimeMillis : j2;
        long j11 = (i2 & 4) != 0 ? pointerInputChange.position : j3;
        boolean z3 = (i2 & 8) != 0 ? pointerInputChange.pressed : z;
        float f2 = (i2 & 16) != 0 ? pointerInputChange.pressure : f;
        long j12 = (i2 & 32) != 0 ? pointerInputChange.previousUptimeMillis : j4;
        long j13 = (i2 & 64) != 0 ? pointerInputChange.previousPosition : j5;
        boolean z4 = (i2 & 128) != 0 ? pointerInputChange.previousPressed : z2;
        int i3 = (i2 & 256) != 0 ? pointerInputChange.type : i;
        if ((i2 & 512) != 0) {
            j7 = pointerInputChange.scrollDelta;
            j8 = j9;
        } else {
            j7 = j6;
            j8 = j9;
        }
        return pointerInputChange.m7563copyTn9QgHE(j8, j10, j11, z3, f2, j12, j13, z4, i3, j7);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: copy-lGhnTh8$default, reason: not valid java name */
    public static /* synthetic */ PointerInputChange m7557copylGhnTh8$default(PointerInputChange pointerInputChange, long j, long j2, long j3, boolean z, float f, long j4, long j5, boolean z2, int i, List list, long j6, float f2, long j7, int i2, Object obj) {
        long j8;
        float f3;
        long j9 = (i2 & 1) != 0 ? pointerInputChange.id : j;
        long j10 = (i2 & 2) != 0 ? pointerInputChange.uptimeMillis : j2;
        long j11 = (i2 & 4) != 0 ? pointerInputChange.position : j3;
        boolean z3 = (i2 & 8) != 0 ? pointerInputChange.pressed : z;
        float f4 = (i2 & 16) != 0 ? pointerInputChange.pressure : f;
        long j12 = (i2 & 32) != 0 ? pointerInputChange.previousUptimeMillis : j4;
        long j13 = (i2 & 64) != 0 ? pointerInputChange.previousPosition : j5;
        boolean z4 = (i2 & 128) != 0 ? pointerInputChange.previousPressed : z2;
        int i3 = (i2 & 256) != 0 ? pointerInputChange.type : i;
        long j14 = j9;
        List historical = (i2 & 512) != 0 ? pointerInputChange.getHistorical() : list;
        long j15 = (i2 & 1024) != 0 ? pointerInputChange.scrollDelta : j6;
        float f5 = (i2 & 2048) != 0 ? pointerInputChange.scaleFactor : f2;
        if ((i2 & 4096) != 0) {
            f3 = f5;
            j8 = pointerInputChange.panOffset;
        } else {
            j8 = j7;
            f3 = f5;
        }
        return pointerInputChange.m7564copylGhnTh8(j14, j10, j11, z3, f4, j12, j13, z4, i3, historical, j15, f3, j8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: copy-wbzehF4$default, reason: not valid java name */
    public static /* synthetic */ PointerInputChange m7558copywbzehF4$default(PointerInputChange pointerInputChange, long j, long j2, long j3, boolean z, float f, long j4, long j5, boolean z2, int i, List list, long j6, int i2, Object obj) {
        long j7;
        List list2;
        long j8 = (i2 & 1) != 0 ? pointerInputChange.id : j;
        long j9 = (i2 & 2) != 0 ? pointerInputChange.uptimeMillis : j2;
        long j10 = (i2 & 4) != 0 ? pointerInputChange.position : j3;
        boolean z3 = (i2 & 8) != 0 ? pointerInputChange.pressed : z;
        float f2 = (i2 & 16) != 0 ? pointerInputChange.pressure : f;
        long j11 = (i2 & 32) != 0 ? pointerInputChange.previousUptimeMillis : j4;
        long j12 = (i2 & 64) != 0 ? pointerInputChange.previousPosition : j5;
        boolean z4 = (i2 & 128) != 0 ? pointerInputChange.previousPressed : z2;
        int i3 = (i2 & 256) != 0 ? pointerInputChange.type : i;
        long j13 = j8;
        List historical = (i2 & 512) != 0 ? pointerInputChange.getHistorical() : list;
        if ((i2 & 1024) != 0) {
            list2 = historical;
            j7 = pointerInputChange.scrollDelta;
        } else {
            j7 = j6;
            list2 = historical;
        }
        return pointerInputChange.m7565copywbzehF4(j13, j9, j10, z3, f2, j11, j12, z4, i3, list2, j7);
    }

    @ul2
    public static /* synthetic */ void getConsumed$annotations() {
    }

    private static /* synthetic */ void get_consumed$annotations() {
    }

    public final void consume() {
        PointerInputChange pointerInputChange = this.consumedDelegate;
        if (pointerInputChange == null) {
            this.downChange = true;
            this.positionChange = true;
        } else if (pointerInputChange != null) {
            pointerInputChange.consume();
        }
    }

    @ul2
    /* JADX INFO: renamed from: copy-0GkPj7c, reason: not valid java name */
    public final PointerInputChange m7559copy0GkPj7c(long j, long j2, long j3, boolean z, long j4, long j5, boolean z2, ConsumedData consumedData, int i, long j6) {
        PointerInputChange pointerInputChange = new PointerInputChange(j, j2, j3, z, this.pressure, j4, j5, z2, consumedData.getDownChange() || consumedData.getPositionChange(), i, getHistorical(), j6, this.scaleFactor, this.panOffset, this.originalEventPosition, null);
        pointerInputChange.positionChange = this.positionChange;
        pointerInputChange.downChange = this.downChange;
        return pointerInputChange;
    }

    @ul2
    /* JADX INFO: renamed from: copy-Ezr-O64, reason: not valid java name */
    public final /* synthetic */ PointerInputChange m7560copyEzrO64(long j, long j2, long j3, boolean z, long j4, long j5, boolean z2, ConsumedData consumedData, int i) {
        PointerInputChange pointerInputChange = new PointerInputChange(j, j2, j3, z, this.pressure, j4, j5, z2, consumedData.getDownChange() || consumedData.getPositionChange(), i, getHistorical(), this.scrollDelta, this.scaleFactor, this.panOffset, this.originalEventPosition, null);
        pointerInputChange.positionChange = this.positionChange;
        pointerInputChange.downChange = this.downChange;
        return pointerInputChange;
    }

    /* JADX INFO: renamed from: copy-JKmWfYY, reason: not valid java name */
    public final PointerInputChange m7561copyJKmWfYY(long j, long j2, long j3, boolean z, long j4, long j5, boolean z2, int i, long j6) {
        PointerInputChange pointerInputChange = this;
        PointerInputChange pointerInputChangeM7565copywbzehF4 = pointerInputChange.m7565copywbzehF4(j, j2, j3, z, pointerInputChange.pressure, j4, j5, z2, i, pointerInputChange.getHistorical(), j6);
        PointerInputChange pointerInputChange2 = pointerInputChange.consumedDelegate;
        if (pointerInputChange2 != null) {
            pointerInputChange = pointerInputChange2;
        }
        pointerInputChangeM7565copywbzehF4.consumedDelegate = pointerInputChange;
        return pointerInputChangeM7565copywbzehF4;
    }

    /* JADX INFO: renamed from: copy-OHpmEuE, reason: not valid java name */
    public final PointerInputChange m7562copyOHpmEuE(long j, long j2, long j3, boolean z, long j4, long j5, boolean z2, int i, List<HistoricalChange> list, long j6) {
        PointerInputChange pointerInputChange = this;
        PointerInputChange pointerInputChangeM7565copywbzehF4 = pointerInputChange.m7565copywbzehF4(j, j2, j3, z, pointerInputChange.pressure, j4, j5, z2, i, list, j6);
        PointerInputChange pointerInputChange2 = pointerInputChange.consumedDelegate;
        if (pointerInputChange2 != null) {
            pointerInputChange = pointerInputChange2;
        }
        pointerInputChangeM7565copywbzehF4.consumedDelegate = pointerInputChange;
        return pointerInputChangeM7565copywbzehF4;
    }

    /* JADX INFO: renamed from: copy-Tn9QgHE, reason: not valid java name */
    public final PointerInputChange m7563copyTn9QgHE(long j, long j2, long j3, boolean z, float f, long j4, long j5, boolean z2, int i, long j6) {
        PointerInputChange pointerInputChange = this;
        PointerInputChange pointerInputChange2 = new PointerInputChange(j, j2, j3, z, f, j4, j5, z2, false, i, pointerInputChange.getHistorical(), j6, pointerInputChange.scaleFactor, pointerInputChange.panOffset, pointerInputChange.originalEventPosition, null);
        PointerInputChange pointerInputChange3 = pointerInputChange.consumedDelegate;
        if (pointerInputChange3 != null) {
            pointerInputChange = pointerInputChange3;
        }
        pointerInputChange2.consumedDelegate = pointerInputChange;
        return pointerInputChange2;
    }

    /* JADX INFO: renamed from: copy-lGhnTh8, reason: not valid java name */
    public final PointerInputChange m7564copylGhnTh8(long j, long j2, long j3, boolean z, float f, long j4, long j5, boolean z2, int i, List<HistoricalChange> list, long j6, float f2, long j7) {
        PointerInputChange pointerInputChange = this;
        PointerInputChange pointerInputChange2 = new PointerInputChange(j, j2, j3, z, f, j4, j5, z2, false, i, list, j6, f2, j7, pointerInputChange.originalEventPosition, null);
        PointerInputChange pointerInputChange3 = pointerInputChange.consumedDelegate;
        if (pointerInputChange3 != null) {
            pointerInputChange = pointerInputChange3;
        }
        pointerInputChange2.consumedDelegate = pointerInputChange;
        return pointerInputChange2;
    }

    /* JADX INFO: renamed from: copy-wbzehF4, reason: not valid java name */
    public final PointerInputChange m7565copywbzehF4(long j, long j2, long j3, boolean z, float f, long j4, long j5, boolean z2, int i, List<HistoricalChange> list, long j6) {
        PointerInputChange pointerInputChange = this;
        PointerInputChange pointerInputChange2 = new PointerInputChange(j, j2, j3, z, f, j4, j5, z2, false, i, list, j6, pointerInputChange.scaleFactor, pointerInputChange.panOffset, pointerInputChange.originalEventPosition, null);
        PointerInputChange pointerInputChange3 = pointerInputChange.consumedDelegate;
        if (pointerInputChange3 != null) {
            pointerInputChange = pointerInputChange3;
        }
        pointerInputChange2.consumedDelegate = pointerInputChange;
        return pointerInputChange2;
    }

    public final ConsumedData getConsumed() {
        ConsumedData consumedData = this._consumed;
        if (consumedData != null) {
            return consumedData;
        }
        ConsumedData consumedData2 = new ConsumedData(this);
        this._consumed = consumedData2;
        return consumedData2;
    }

    public final PointerInputChange getConsumedDelegate$ui() {
        return this.consumedDelegate;
    }

    public final boolean getDownChange$ui() {
        return this.downChange;
    }

    public final List<HistoricalChange> getHistorical() {
        List<HistoricalChange> list = this._historical;
        return list == null ? kx2.b : list;
    }

    /* JADX INFO: renamed from: getId-J3iCeTQ, reason: not valid java name */
    public final long m7566getIdJ3iCeTQ() {
        return this.id;
    }

    /* JADX INFO: renamed from: getOriginalEventPosition-F1C5BW0$ui, reason: not valid java name */
    public final long m7567getOriginalEventPositionF1C5BW0$ui() {
        return this.originalEventPosition;
    }

    /* JADX INFO: renamed from: getPanOffset-F1C5BW0, reason: not valid java name */
    public final long m7568getPanOffsetF1C5BW0() {
        return this.panOffset;
    }

    /* JADX INFO: renamed from: getPosition-F1C5BW0, reason: not valid java name */
    public final long m7569getPositionF1C5BW0() {
        return this.position;
    }

    public final boolean getPositionChange$ui() {
        return this.positionChange;
    }

    public final boolean getPressed() {
        return this.pressed;
    }

    public final float getPressure() {
        return this.pressure;
    }

    /* JADX INFO: renamed from: getPreviousPosition-F1C5BW0, reason: not valid java name */
    public final long m7570getPreviousPositionF1C5BW0() {
        return this.previousPosition;
    }

    public final boolean getPreviousPressed() {
        return this.previousPressed;
    }

    public final long getPreviousUptimeMillis() {
        return this.previousUptimeMillis;
    }

    public final float getScaleFactor() {
        return this.scaleFactor;
    }

    /* JADX INFO: renamed from: getScrollDelta-F1C5BW0, reason: not valid java name */
    public final long m7571getScrollDeltaF1C5BW0() {
        return this.scrollDelta;
    }

    /* JADX INFO: renamed from: getType-T8wyACA, reason: not valid java name */
    public final int m7572getTypeT8wyACA() {
        return this.type;
    }

    public final long getUptimeMillis() {
        return this.uptimeMillis;
    }

    public final boolean isConsumed() {
        PointerInputChange pointerInputChange = this.consumedDelegate;
        if (pointerInputChange != null) {
            return pointerInputChange.isConsumed();
        }
        return this.downChange || this.positionChange;
    }

    public final void setConsumedDelegate$ui(PointerInputChange pointerInputChange) {
        this.consumedDelegate = pointerInputChange;
    }

    public final void setDownChange$ui(boolean z) {
        this.downChange = z;
    }

    /* JADX INFO: renamed from: setOriginalEventPosition-k-4lQ0M$ui, reason: not valid java name */
    public final void m7573setOriginalEventPositionk4lQ0M$ui(long j) {
        this.originalEventPosition = j;
    }

    public final void setPositionChange$ui(boolean z) {
        this.positionChange = z;
    }

    public String toString() {
        return "PointerInputChange(id=" + ((Object) PointerId.m7550toStringimpl(this.id)) + ", uptimeMillis=" + this.uptimeMillis + ", position=" + ((Object) Offset.m5995toStringimpl(this.position)) + ", pressed=" + this.pressed + ", pressure=" + this.pressure + ", previousUptimeMillis=" + this.previousUptimeMillis + ", previousPosition=" + ((Object) Offset.m5995toStringimpl(this.previousPosition)) + ", previousPressed=" + this.previousPressed + ", isConsumed=" + isConsumed() + ", type=" + ((Object) PointerType.m7644toStringimpl(this.type)) + ", historical=" + getHistorical() + ", scrollDelta=" + ((Object) Offset.m5995toStringimpl(this.scrollDelta)) + ", scaleFactor=" + this.scaleFactor + ", panOffset=" + ((Object) Offset.m5995toStringimpl(this.panOffset)) + ')';
    }

    @ul2
    public /* synthetic */ PointerInputChange(long j, long j2, long j3, boolean z, float f, long j4, long j5, boolean z2, boolean z3, int i, long j6, jh2 jh2Var) {
        this(j, j2, j3, z, f, j4, j5, z2, z3, i, j6);
    }

    public /* synthetic */ PointerInputChange(long j, long j2, long j3, boolean z, float f, long j4, long j5, boolean z2, boolean z3, int i, List list, long j6, float f2, long j7, long j8, jh2 jh2Var) {
        this(j, j2, j3, z, f, j4, j5, z2, z3, i, (List<HistoricalChange>) list, j6, f2, j7, j8);
    }

    @ul2
    public /* synthetic */ PointerInputChange(long j, long j2, long j3, boolean z, long j4, long j5, boolean z2, ConsumedData consumedData, int i, jh2 jh2Var) {
        this(j, j2, j3, z, j4, j5, z2, consumedData, i);
    }

    public /* synthetic */ PointerInputChange(long j, long j2, long j3, boolean z, long j4, long j5, boolean z2, boolean z3, int i, long j6, float f, long j7, jh2 jh2Var) {
        this(j, j2, j3, z, j4, j5, z2, z3, i, j6, f, j7);
    }

    @ul2
    public /* synthetic */ PointerInputChange(long j, long j2, long j3, boolean z, long j4, long j5, boolean z2, boolean z3, int i, long j6, jh2 jh2Var) {
        this(j, j2, j3, z, j4, j5, z2, z3, i, j6);
    }

    private PointerInputChange(long j, long j2, long j3, boolean z, float f, long j4, long j5, boolean z2, boolean z3, int i, long j6, float f2, long j7) {
        this.id = j;
        this.uptimeMillis = j2;
        this.position = j3;
        this.pressed = z;
        this.pressure = f;
        this.previousUptimeMillis = j4;
        this.previousPosition = j5;
        this.previousPressed = z2;
        this.type = i;
        this.scrollDelta = j6;
        this.scaleFactor = f2;
        this.panOffset = j7;
        this.originalEventPosition = Offset.Companion.m6003getZeroF1C5BW0();
        this.downChange = z3;
        this.positionChange = z3;
    }

    public /* synthetic */ PointerInputChange(long j, long j2, long j3, boolean z, float f, long j4, long j5, boolean z2, boolean z3, int i, long j6, float f2, long j7, jh2 jh2Var) {
        this(j, j2, j3, z, f, j4, j5, z2, z3, i, j6, f2, j7);
    }

    public /* synthetic */ PointerInputChange(long j, long j2, long j3, boolean z, long j4, long j5, boolean z2, boolean z3, int i, long j6, float f, long j7, int i2, jh2 jh2Var) {
        this(j, j2, j3, z, j4, j5, z2, z3, (i2 & 256) != 0 ? PointerType.Companion.m7649getTouchT8wyACA() : i, (i2 & 512) != 0 ? Offset.Companion.m6003getZeroF1C5BW0() : j6, (i2 & 1024) != 0 ? 1.0f : f, (i2 & 2048) != 0 ? Offset.Companion.m6003getZeroF1C5BW0() : j7, (jh2) null);
    }

    private PointerInputChange(long j, long j2, long j3, boolean z, long j4, long j5, boolean z2, boolean z3, int i, long j6, float f, long j7) {
        this(j, j2, j3, z, 1.0f, j4, j5, z2, z3, i, j6, f, j7, (jh2) null);
    }

    public /* synthetic */ PointerInputChange(long j, long j2, long j3, boolean z, float f, long j4, long j5, boolean z2, boolean z3, int i, long j6, int i2, jh2 jh2Var) {
        this(j, j2, j3, z, f, j4, j5, z2, z3, (i2 & 512) != 0 ? PointerType.Companion.m7649getTouchT8wyACA() : i, (i2 & 1024) != 0 ? Offset.Companion.m6003getZeroF1C5BW0() : j6, (jh2) null);
    }

    private PointerInputChange(long j, long j2, long j3, boolean z, float f, long j4, long j5, boolean z2, boolean z3, int i, long j6) {
        this(j, j2, j3, z, f, j4, j5, z2, z3, i, j6, 0.0f, 0L, 6144, (jh2) null);
    }

    public /* synthetic */ PointerInputChange(long j, long j2, long j3, boolean z, long j4, long j5, boolean z2, boolean z3, int i, long j6, int i2, jh2 jh2Var) {
        this(j, j2, j3, z, j4, j5, z2, z3, (i2 & 256) != 0 ? PointerType.Companion.m7649getTouchT8wyACA() : i, (i2 & 512) != 0 ? Offset.Companion.m6003getZeroF1C5BW0() : j6, (jh2) null);
    }

    private PointerInputChange(long j, long j2, long j3, boolean z, long j4, long j5, boolean z2, boolean z3, int i, long j6) {
        this(j, j2, j3, z, j4, j5, z2, z3, i, j6, 0.0f, 0L, 3072, (jh2) null);
    }

    public /* synthetic */ PointerInputChange(long j, long j2, long j3, boolean z, long j4, long j5, boolean z2, ConsumedData consumedData, int i, int i2, jh2 jh2Var) {
        this(j, j2, j3, z, j4, j5, z2, consumedData, (i2 & 256) != 0 ? PointerType.Companion.m7649getTouchT8wyACA() : i, (jh2) null);
    }

    private PointerInputChange(long j, long j2, long j3, boolean z, long j4, long j5, boolean z2, ConsumedData consumedData, int i) {
        this(j, j2, j3, z, 1.0f, j4, j5, z2, consumedData.getDownChange() || consumedData.getPositionChange(), i, Offset.Companion.m6003getZeroF1C5BW0(), 0.0f, 0L, 6144, (jh2) null);
    }

    private PointerInputChange(long j, long j2, long j3, boolean z, float f, long j4, long j5, boolean z2, boolean z3, int i, List<HistoricalChange> list, long j6, float f2, long j7, long j8) {
        this(j, j2, j3, z, f, j4, j5, z2, z3, i, j6, f2, j7, (jh2) null);
        this._historical = list;
        this.originalEventPosition = j8;
    }
}
