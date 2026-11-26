package androidx.compose.ui.input.pointer;

import android.os.Build;
import android.util.SparseBooleanArray;
import android.util.SparseLongArray;
import android.view.MotionEvent;
import androidx.collection.LongSparseArray;
import androidx.collection.SieveCacheKt;
import androidx.compose.ui.ComposeUiFlags;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.AndroidIndirectPointerEvent;
import androidx.compose.ui.input.indirect.AndroidIndirectPointerEvent_androidKt;
import androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.core.view.InputDeviceCompat;
import androidx.media3.muxer.MuxerUtil;
import defpackage.jh2;
import defpackage.rg;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class MotionEventAdapter {
    public static final int $stable = 8;
    private Offset inferredCursorRawOffset;
    private boolean isInFakeFingerGesture;
    private boolean isReinterpretingFakeFingerGesture;
    private long nextId;
    private final SparseLongArray motionEventToComposePointerIdMap = new SparseLongArray();
    private final SparseBooleanArray activeHoverIds = new SparseBooleanArray();
    private final List<PointerInputEventData> pointers = new ArrayList();
    private final LongSparseArray<IndirectPointerEventData> previousIndirectPointerEventData = new LongSparseArray<>(0, 1, null);
    private int previousToolType = -1;
    private int previousSource = -1;

    private final void addFreshIds(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0 && actionMasked != 5) {
            if (actionMasked != 9) {
                return;
            }
            int pointerId = motionEvent.getPointerId(0);
            if (this.motionEventToComposePointerIdMap.indexOfKey(pointerId) < 0) {
                SparseLongArray sparseLongArray = this.motionEventToComposePointerIdMap;
                long j = this.nextId;
                this.nextId = 1 + j;
                sparseLongArray.put(pointerId, j);
                return;
            }
            return;
        }
        int actionIndex = motionEvent.getActionIndex();
        int pointerId2 = motionEvent.getPointerId(actionIndex);
        if (this.motionEventToComposePointerIdMap.indexOfKey(pointerId2) < 0) {
            SparseLongArray sparseLongArray2 = this.motionEventToComposePointerIdMap;
            long j2 = this.nextId;
            this.nextId = 1 + j2;
            sparseLongArray2.put(pointerId2, j2);
            if (motionEvent.getToolType(actionIndex) == 3) {
                this.activeHoverIds.put(pointerId2, true);
            }
        }
    }

    private final void clearOnDeviceChange(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() != 1) {
            return;
        }
        int toolType = motionEvent.getToolType(0);
        int source = motionEvent.getSource();
        if (toolType == this.previousToolType && source == this.previousSource) {
            return;
        }
        this.previousToolType = toolType;
        this.previousSource = source;
        this.activeHoverIds.clear();
        this.motionEventToComposePointerIdMap.clear();
    }

    /* JADX INFO: renamed from: convertToIndirectPointerEvent-k92h6UU$ui$default, reason: not valid java name */
    public static /* synthetic */ AndroidIndirectPointerEvent m7476convertToIndirectPointerEventk92h6UU$ui$default(MotionEventAdapter motionEventAdapter, MotionEvent motionEvent, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis, int i, Object obj) {
        if ((i & 2) != 0) {
            indirectPointerEventPrimaryDirectionalMotionAxis = null;
        }
        return motionEventAdapter.m7479convertToIndirectPointerEventk92h6UU$ui(motionEvent, indirectPointerEventPrimaryDirectionalMotionAxis);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0091  */
    /* JADX WARN: Code duplicated, block: B:21:0x0096  */
    /* JADX WARN: Code duplicated, block: B:23:0x0099 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x009b  */
    /* JADX WARN: Code duplicated, block: B:26:0x009e  */
    /* JADX WARN: Code duplicated, block: B:27:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:28:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:29:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:30:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:32:0x00be  */
    /* JADX WARN: Code duplicated, block: B:43:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:48:0x010d  */
    /* JADX WARN: Code duplicated, block: B:68:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:69:0x01de  */
    /* JADX WARN: Code duplicated, block: B:78:0x0207  */
    /* JADX WARN: Code duplicated, block: B:80:0x020b  */
    /* JADX WARN: Code duplicated, block: B:88:0x0242  */
    /* JADX WARN: Code duplicated, block: B:91:0x01b1 A[EDGE_INSN: B:91:0x01b1->B:66:0x01b1 BREAK  A[LOOP:0: B:46:0x0105->B:65:0x01ab], SYNTHETIC] */
    /* JADX INFO: renamed from: createPointerInputEventData-InuC1xA, reason: not valid java name */
    private final PointerInputEventData m7477createPointerInputEventDataInuC1xA(PositionCalculator positionCalculator, MotionEvent motionEvent, Offset offset, int i, boolean z) {
        char c;
        long j;
        long jMo7651localToScreenMKHz9U;
        long j2;
        long jMo7652screenToLocalMKHz9U;
        int toolType;
        char c2;
        int iM7650getUnknownT8wyACA;
        int historySize;
        int i2;
        float fFloatValue;
        long jM6003getZeroF1C5BW0;
        long jM6003getZeroF1C5BW1;
        Float f;
        float historicalX;
        long jM7478getComposePointerId_I2yYro = m7478getComposePointerId_I2yYro(motionEvent.getPointerId(i));
        float pressure = motionEvent.getPressure(i);
        long jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(motionEvent.getY(i))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(motionEvent.getX(i))) << 32));
        if (i != 0) {
            c = ' ';
            j = 4294967295L;
            if (Build.VERSION.SDK_INT >= 29) {
                jMo7651localToScreenMKHz9U = offset != null ? offset.m5997unboximpl() : MotionEventHelper.INSTANCE.m7491toRawOffsetdBAh8RU(motionEvent, i);
                jMo7652screenToLocalMKHz9U = positionCalculator.mo7652screenToLocalMKHz9U(jMo7651localToScreenMKHz9U);
            } else {
                jMo7651localToScreenMKHz9U = positionCalculator.mo7651localToScreenMKHz9U(jM5979constructorimpl);
                j2 = jM5979constructorimpl;
            }
            long j3 = jMo7651localToScreenMKHz9U;
            toolType = motionEvent.getToolType(i);
            if (toolType != 0) {
                c2 = c;
                if (toolType != 1) {
                    if (toolType != 2) {
                        iM7650getUnknownT8wyACA = PointerType.Companion.m7648getStylusT8wyACA();
                    } else if (toolType != 3) {
                        iM7650getUnknownT8wyACA = PointerType.Companion.m7647getMouseT8wyACA();
                    } else if (toolType != 4) {
                        iM7650getUnknownT8wyACA = PointerType.Companion.m7650getUnknownT8wyACA();
                    } else {
                        iM7650getUnknownT8wyACA = PointerType.Companion.m7646getEraserT8wyACA();
                    }
                } else if (!ComposeUiFlags.isTrackpadGestureHandlingEnabled) {
                    iM7650getUnknownT8wyACA = ((!motionEvent.isFromSource(8194) || motionEvent.isFromSource(InputDeviceCompat.SOURCE_TOUCHPAD)) && (!this.isInFakeFingerGesture || this.isReinterpretingFakeFingerGesture)) ? PointerType.Companion.m7647getMouseT8wyACA() : PointerType.Companion.m7649getTouchT8wyACA();
                } else {
                    iM7650getUnknownT8wyACA = PointerType.Companion.m7649getTouchT8wyACA();
                }
            } else {
                c2 = c;
                iM7650getUnknownT8wyACA = PointerType.Companion.m7650getUnknownT8wyACA();
            }
            ArrayList arrayList = new ArrayList(motionEvent.getHistorySize());
            historySize = motionEvent.getHistorySize();
            int i3 = iM7650getUnknownT8wyACA;
            i2 = 0;
            while (true) {
                fFloatValue = 1.0f;
                if (i2 < historySize) {
                    break;
                }
                historicalX = motionEvent.getHistoricalX(i, i2);
                float historicalY = motionEvent.getHistoricalY(i, i2);
                long j4 = jM5979constructorimpl;
                if ((Float.floatToRawIntBits(historicalX) & Integer.MAX_VALUE) >= 2139095040 && (Float.floatToRawIntBits(historicalY) & Integer.MAX_VALUE) < 2139095040) {
                    long jM5979constructorimpl2 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(historicalX)) << c2) | (((long) Float.floatToRawIntBits(historicalY)) & j));
                    long historicalEventTime = motionEvent.getHistoricalEventTime(i2);
                    Float fValueOf = Float.valueOf(motionEvent.getHistoricalAxisValue(52, i, i2));
                    f = fValueOf.floatValue() > 0.0f ? fValueOf : null;
                    arrayList.add(new HistoricalChange(historicalEventTime, jM5979constructorimpl2, f != null ? f.floatValue() : 1.0f, (Build.VERSION.SDK_INT < 29 || motionEvent.getClassification() != 3) ? Offset.Companion.m6003getZeroF1C5BW0() : Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(motionEvent.getHistoricalAxisValue(50, i, i2))) << c2) | (((long) Float.floatToRawIntBits(motionEvent.getHistoricalAxisValue(51, i, i2))) & j)), jM5979constructorimpl2, (jh2) null));
                }
                i2++;
                jM5979constructorimpl = j4;
            }
            long j5 = jM5979constructorimpl;
            if (motionEvent.getActionMasked() == 8) {
                jM6003getZeroF1C5BW0 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((-motionEvent.getAxisValue(9)) + 0.0f)) & j) | (((long) Float.floatToRawIntBits(motionEvent.getAxisValue(10))) << c2));
            } else {
                jM6003getZeroF1C5BW0 = Offset.Companion.m6003getZeroF1C5BW0();
            }
            if (ComposeUiFlags.isTrackpadGestureHandlingEnabled && Build.VERSION.SDK_INT >= 29 && motionEvent.getClassification() == 5) {
                Float fValueOf2 = Float.valueOf(motionEvent.getAxisValue(52, i));
                f = fValueOf2.floatValue() > 0.0f ? fValueOf2 : null;
                if (f != null) {
                    fFloatValue = f.floatValue();
                }
            }
            if (ComposeUiFlags.isTrackpadGestureHandlingEnabled || Build.VERSION.SDK_INT < 29 || motionEvent.getClassification() != 3) {
                jM6003getZeroF1C5BW1 = Offset.Companion.m6003getZeroF1C5BW0();
            } else {
                jM6003getZeroF1C5BW1 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(motionEvent.getAxisValue(50, i))) << c2) | (((long) Float.floatToRawIntBits(motionEvent.getAxisValue(51, i))) & j));
            }
            return new PointerInputEventData(jM7478getComposePointerId_I2yYro, motionEvent.getEventTime(), j3, j2, z, pressure, i3, this.activeHoverIds.get(motionEvent.getPointerId(i), false), arrayList, jM6003getZeroF1C5BW0, fFloatValue, jM6003getZeroF1C5BW1, j5, null);
        }
        if (offset != null) {
            c = ' ';
            jMo7651localToScreenMKHz9U = offset.m5997unboximpl();
            j = 4294967295L;
        } else {
            c = ' ';
            j = 4294967295L;
            jMo7651localToScreenMKHz9U = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(motionEvent.getRawX())) << 32) | (((long) Float.floatToRawIntBits(motionEvent.getRawY())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        jMo7652screenToLocalMKHz9U = positionCalculator.mo7652screenToLocalMKHz9U(jMo7651localToScreenMKHz9U);
        j2 = jMo7652screenToLocalMKHz9U;
        long j6 = jMo7651localToScreenMKHz9U;
        toolType = motionEvent.getToolType(i);
        if (toolType != 0) {
            c2 = c;
            if (toolType != 1) {
                if (toolType != 2) {
                    iM7650getUnknownT8wyACA = PointerType.Companion.m7648getStylusT8wyACA();
                } else if (toolType != 3) {
                    iM7650getUnknownT8wyACA = PointerType.Companion.m7647getMouseT8wyACA();
                } else if (toolType != 4) {
                    iM7650getUnknownT8wyACA = PointerType.Companion.m7650getUnknownT8wyACA();
                } else {
                    iM7650getUnknownT8wyACA = PointerType.Companion.m7646getEraserT8wyACA();
                }
            } else if (!ComposeUiFlags.isTrackpadGestureHandlingEnabled) {
                iM7650getUnknownT8wyACA = PointerType.Companion.m7649getTouchT8wyACA();
            } else if (motionEvent.isFromSource(8194)) {
            }
        } else {
            c2 = c;
            iM7650getUnknownT8wyACA = PointerType.Companion.m7650getUnknownT8wyACA();
        }
        ArrayList arrayList2 = new ArrayList(motionEvent.getHistorySize());
        historySize = motionEvent.getHistorySize();
        int i4 = iM7650getUnknownT8wyACA;
        i2 = 0;
        while (true) {
            fFloatValue = 1.0f;
            if (i2 < historySize) {
                break;
                break;
            }
            historicalX = motionEvent.getHistoricalX(i, i2);
            float historicalY2 = motionEvent.getHistoricalY(i, i2);
            long j7 = jM5979constructorimpl;
            if ((Float.floatToRawIntBits(historicalX) & Integer.MAX_VALUE) >= 2139095040) {
            }
            i2++;
            jM5979constructorimpl = j7;
        }
        long j8 = jM5979constructorimpl;
        if (motionEvent.getActionMasked() == 8) {
            jM6003getZeroF1C5BW0 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((-motionEvent.getAxisValue(9)) + 0.0f)) & j) | (((long) Float.floatToRawIntBits(motionEvent.getAxisValue(10))) << c2));
        } else {
            jM6003getZeroF1C5BW0 = Offset.Companion.m6003getZeroF1C5BW0();
        }
        if (ComposeUiFlags.isTrackpadGestureHandlingEnabled) {
            Float fValueOf3 = Float.valueOf(motionEvent.getAxisValue(52, i));
            if (fValueOf3.floatValue() > 0.0f) {
            }
            if (f != null) {
                fFloatValue = f.floatValue();
            }
        }
        if (ComposeUiFlags.isTrackpadGestureHandlingEnabled) {
            jM6003getZeroF1C5BW1 = Offset.Companion.m6003getZeroF1C5BW0();
        } else {
            jM6003getZeroF1C5BW1 = Offset.Companion.m6003getZeroF1C5BW0();
        }
        return new PointerInputEventData(jM7478getComposePointerId_I2yYro, motionEvent.getEventTime(), j6, j2, z, pressure, i4, this.activeHoverIds.get(motionEvent.getPointerId(i), false), arrayList2, jM6003getZeroF1C5BW0, fFloatValue, jM6003getZeroF1C5BW1, j8, null);
    }

    /* JADX INFO: renamed from: getComposePointerId-_I2yYro, reason: not valid java name */
    private final long m7478getComposePointerId_I2yYro(int i) {
        long jValueAt;
        int iIndexOfKey = this.motionEventToComposePointerIdMap.indexOfKey(i);
        if (iIndexOfKey >= 0) {
            jValueAt = this.motionEventToComposePointerIdMap.valueAt(iIndexOfKey);
        } else {
            long j = this.nextId;
            this.nextId = 1 + j;
            this.motionEventToComposePointerIdMap.put(i, j);
            jValueAt = j;
        }
        return PointerId.m7546constructorimpl(jValueAt);
    }

    public static /* synthetic */ void getMotionEventToComposePointerIdMap$ui$annotations() {
    }

    private final boolean hasPointerId(MotionEvent motionEvent, int i) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i2 = 0; i2 < pointerCount; i2++) {
            if (motionEvent.getPointerId(i2) == i) {
                return true;
            }
        }
        return false;
    }

    private final void removeStaleIds(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 6) {
            int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
            if (!this.activeHoverIds.get(pointerId, false)) {
                this.motionEventToComposePointerIdMap.delete(pointerId);
                this.activeHoverIds.delete(pointerId);
            }
        }
        if (this.motionEventToComposePointerIdMap.size() > motionEvent.getPointerCount()) {
            for (int size = this.motionEventToComposePointerIdMap.size() - 1; -1 < size; size--) {
                int iKeyAt = this.motionEventToComposePointerIdMap.keyAt(size);
                if (!hasPointerId(motionEvent, iKeyAt)) {
                    this.motionEventToComposePointerIdMap.removeAt(size);
                    this.activeHoverIds.delete(iKeyAt);
                }
            }
        }
    }

    private final void resetFakeFingerGesture() {
        this.isInFakeFingerGesture = false;
        this.isReinterpretingFakeFingerGesture = false;
        this.inferredCursorRawOffset = null;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:36:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:38:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:39:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:41:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:42:0x00d7  */
    /* JADX INFO: renamed from: convertToIndirectPointerEvent-k92h6UU$ui, reason: not valid java name */
    public final AndroidIndirectPointerEvent m7479convertToIndirectPointerEventk92h6UU$ui(MotionEvent motionEvent, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis) {
        int actionIndex;
        long eventTime;
        long jM7486getPositionF1C5BW0;
        boolean zM7485getDownimpl;
        int actionMasked = motionEvent.getActionMasked();
        clearOnDeviceChange(motionEvent);
        if (actionMasked == 3) {
            this.motionEventToComposePointerIdMap.clear();
            this.activeHoverIds.clear();
            return null;
        }
        addFreshIds(motionEvent);
        if (actionMasked != 1) {
            actionIndex = actionMasked != 6 ? -1 : motionEvent.getActionIndex();
        } else {
            actionIndex = 0;
        }
        boolean z = actionMasked == 0 || actionMasked == 2 || actionMasked == 5;
        int pointerCount = motionEvent.getPointerCount();
        ArrayList arrayList = new ArrayList(pointerCount);
        int i = 0;
        while (i < pointerCount) {
            long jM7478getComposePointerId_I2yYro = m7478getComposePointerId_I2yYro(motionEvent.getPointerId(i));
            long jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(motionEvent.getY(i))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(motionEvent.getX(i))) << 32));
            boolean z2 = i != actionIndex;
            IndirectPointerEventData indirectPointerEventData = this.previousIndirectPointerEventData.get(jM7478getComposePointerId_I2yYro);
            if (i == actionIndex) {
                this.previousIndirectPointerEventData.remove(jM7478getComposePointerId_I2yYro);
            } else {
                if (z) {
                    this.previousIndirectPointerEventData.put(jM7478getComposePointerId_I2yYro, IndirectPointerEventData.m7480boximpl(IndirectPointerEventData.m7482constructorimpl(motionEvent.getEventTime(), jM5979constructorimpl, true)));
                }
                long eventTime2 = motionEvent.getEventTime();
                float pressure = motionEvent.getPressure(i);
                if (indirectPointerEventData != null) {
                    eventTime = IndirectPointerEventData.m7487getUptimeimpl(indirectPointerEventData.m7490unboximpl());
                } else {
                    eventTime = motionEvent.getEventTime();
                }
                if (indirectPointerEventData != null) {
                    jM7486getPositionF1C5BW0 = IndirectPointerEventData.m7486getPositionF1C5BW0(indirectPointerEventData.m7490unboximpl());
                } else {
                    jM7486getPositionF1C5BW0 = jM5979constructorimpl;
                }
                if (indirectPointerEventData != null) {
                    zM7485getDownimpl = IndirectPointerEventData.m7485getDownimpl(indirectPointerEventData.m7490unboximpl());
                } else {
                    zM7485getDownimpl = false;
                }
                arrayList.add(new IndirectPointerInputChange(jM7478getComposePointerId_I2yYro, eventTime2, jM5979constructorimpl, z2, pressure, eventTime, jM7486getPositionF1C5BW0, zM7485getDownimpl, null));
                i++;
                actionIndex = actionIndex;
                z = z;
            }
            long eventTime3 = motionEvent.getEventTime();
            float pressure2 = motionEvent.getPressure(i);
            if (indirectPointerEventData != null) {
                eventTime = IndirectPointerEventData.m7487getUptimeimpl(indirectPointerEventData.m7490unboximpl());
            } else {
                eventTime = motionEvent.getEventTime();
            }
            if (indirectPointerEventData != null) {
                jM7486getPositionF1C5BW0 = IndirectPointerEventData.m7486getPositionF1C5BW0(indirectPointerEventData.m7490unboximpl());
            } else {
                jM7486getPositionF1C5BW0 = jM5979constructorimpl;
            }
            if (indirectPointerEventData != null) {
                zM7485getDownimpl = IndirectPointerEventData.m7485getDownimpl(indirectPointerEventData.m7490unboximpl());
            } else {
                zM7485getDownimpl = false;
            }
            arrayList.add(new IndirectPointerInputChange(jM7478getComposePointerId_I2yYro, eventTime3, jM5979constructorimpl, z2, pressure2, eventTime, jM7486getPositionF1C5BW0, zM7485getDownimpl, null));
            i++;
            actionIndex = actionIndex;
            z = z;
        }
        removeStaleIds(motionEvent);
        return new AndroidIndirectPointerEvent(arrayList, AndroidIndirectPointerEvent_androidKt.convertActionToIndirectPointerEventType(actionMasked), indirectPointerEventPrimaryDirectionalMotionAxis != null ? indirectPointerEventPrimaryDirectionalMotionAxis.m7058unboximpl() : AndroidIndirectPointerEvent_androidKt.indirectPrimaryDirectionalScrollAxis(motionEvent), motionEvent, null);
    }

    public final PointerInputEvent convertToPointerInputEvent$ui(MotionEvent motionEvent, PositionCalculator positionCalculator) {
        int actionIndex;
        MotionEventAdapter motionEventAdapter;
        MotionEvent motionEvent2;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 3 || actionMasked == 4) {
            this.motionEventToComposePointerIdMap.clear();
            this.activeHoverIds.clear();
            resetFakeFingerGesture();
            return null;
        }
        clearOnDeviceChange(motionEvent);
        addFreshIds(motionEvent);
        boolean z = actionMasked == 9 || actionMasked == 7 || actionMasked == 10;
        boolean z2 = actionMasked == 8;
        if (z) {
            this.activeHoverIds.put(motionEvent.getPointerId(motionEvent.getActionIndex()), true);
        }
        if (actionMasked != 1) {
            actionIndex = actionMasked != 6 ? -1 : motionEvent.getActionIndex();
        } else {
            actionIndex = 0;
        }
        this.pointers.clear();
        if (ComposeUiFlags.isTrackpadGestureHandlingEnabled && motionEvent.getActionMasked() == 0) {
            boolean z3 = Build.VERSION.SDK_INT >= 34 && (motionEvent.getClassification() == 3 || motionEvent.getClassification() == 5);
            boolean z4 = motionEvent.getButtonState() == 0 && (motionEvent.isFromSource(8194) || motionEvent.isFromSource(InputDeviceCompat.SOURCE_TOUCHPAD));
            if (z3 || z4) {
                this.isInFakeFingerGesture = true;
            }
        }
        if (ComposeUiFlags.isTrackpadGestureHandlingEnabled && Build.VERSION.SDK_INT >= 34 && motionEvent.getClassification() == 3) {
            this.isReinterpretingFakeFingerGesture = true;
            if (motionEvent.getActionMasked() == 0) {
                this.inferredCursorRawOffset = Offset.m5976boximpl(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(motionEvent.getRawY(0))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(motionEvent.getRawX(0))) << 32)));
            }
            motionEvent2 = motionEvent;
            motionEventAdapter = this;
            this.pointers.add(m7477createPointerInputEventDataInuC1xA(positionCalculator, motionEvent2, this.inferredCursorRawOffset, 0, false));
        } else {
            motionEventAdapter = this;
            PositionCalculator positionCalculator2 = positionCalculator;
            motionEventAdapter.isReinterpretingFakeFingerGesture = false;
            int pointerCount = motionEvent.getPointerCount();
            int i = 0;
            while (i < pointerCount) {
                motionEventAdapter.pointers.add(motionEventAdapter.m7477createPointerInputEventDataInuC1xA(positionCalculator2, motionEvent, null, i, (z || i == actionIndex || (z2 && motionEvent.getButtonState() == 0)) ? false : true));
                i++;
                positionCalculator2 = positionCalculator2;
            }
            motionEvent2 = motionEvent;
        }
        if (motionEvent2.getActionMasked() == 1) {
            motionEventAdapter.resetFakeFingerGesture();
        }
        motionEventAdapter.removeStaleIds(motionEvent2);
        return new PointerInputEvent(motionEvent2.getEventTime(), motionEventAdapter.pointers, motionEvent2);
    }

    public final void endStream(int i) {
        this.activeHoverIds.delete(i);
        this.motionEventToComposePointerIdMap.delete(i);
    }

    public final SparseLongArray getMotionEventToComposePointerIdMap$ui() {
        return this.motionEventToComposePointerIdMap;
    }

    public static final class IndirectPointerEventData {
        public static final Companion Companion = new Companion(null);
        private final long packedValue;

        private /* synthetic */ IndirectPointerEventData(long j) {
            this.packedValue = j;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ IndirectPointerEventData m7480boximpl(long j) {
            return new IndirectPointerEventData(j);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static long m7482constructorimpl(long j, long j2, boolean z) {
            return m7481constructorimpl(((j & SieveCacheKt.NodeLinkMask) << 1) | (z ? 1L : 0L) | (((long) Companion.packShorts((short) Float.intBitsToFloat((int) (j2 >> 32)), (short) Float.intBitsToFloat((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) << 32));
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m7483equalsimpl(long j, Object obj) {
            return (obj instanceof IndirectPointerEventData) && j == ((IndirectPointerEventData) obj).m7490unboximpl();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m7484equalsimpl0(long j, long j2) {
            return j == j2;
        }

        /* JADX INFO: renamed from: getDown-impl, reason: not valid java name */
        public static final boolean m7485getDownimpl(long j) {
            return (j & 1) != 0;
        }

        /* JADX INFO: renamed from: getPosition-F1C5BW0, reason: not valid java name */
        public static final long m7486getPositionF1C5BW0(long j) {
            int i = (int) (j >>> 32);
            Companion companion = Companion;
            float fUnpackShort1 = companion.unpackShort1(i);
            return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(companion.unpackShort2(i))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fUnpackShort1) << 32));
        }

        /* JADX INFO: renamed from: getUptime-impl, reason: not valid java name */
        public static final long m7487getUptimeimpl(long j) {
            return (j >> 1) & SieveCacheKt.NodeLinkMask;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m7488hashCodeimpl(long j) {
            return Long.hashCode(j);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m7489toStringimpl(long j) {
            return rg.g("IndirectPointerEventData(packedValue=", j, ')');
        }

        public boolean equals(Object obj) {
            return m7483equalsimpl(this.packedValue, obj);
        }

        public final long getPackedValue() {
            return this.packedValue;
        }

        public int hashCode() {
            return m7488hashCodeimpl(this.packedValue);
        }

        public String toString() {
            return m7489toStringimpl(this.packedValue);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ long m7490unboximpl() {
            return this.packedValue;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int packShorts(short s, short s2) {
                return (s << 16) | (65535 & s2);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final short unpackShort1(int i) {
                return (short) (i >>> 16);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final short unpackShort2(int i) {
                return (short) (65535 & i);
            }

            private Companion() {
            }
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static long m7481constructorimpl(long j) {
            return j;
        }
    }
}
