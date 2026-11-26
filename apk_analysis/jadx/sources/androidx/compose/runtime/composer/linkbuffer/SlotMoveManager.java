package androidx.compose.runtime.composer.linkbuffer;

import defpackage.aq5;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class SlotMoveManager {
    public static final int $stable = 8;
    private Object[] destination;
    private final Object[] source;
    private int pendingMoveOffset = -1;
    private int pendingMoveStart = -1;
    private int pendingMoveEnd = -1;
    private int highest = -1;

    public SlotMoveManager(Object[] objArr, Object[] objArr2) {
        this.source = objArr;
        this.destination = objArr2;
    }

    private final void flush() {
        int i = this.pendingMoveOffset;
        if (i >= 0) {
            Object[] objArr = this.source;
            aq5.m(objArr, i, this.destination, this.pendingMoveStart, this.pendingMoveEnd);
            if (objArr == this.destination) {
                Arrays.fill(objArr, this.pendingMoveStart, this.pendingMoveEnd, SlotTableAddresSpaceKt.Unallocated);
            }
            int i2 = (this.pendingMoveEnd - this.pendingMoveStart) + this.pendingMoveOffset;
            this.pendingMoveOffset = -1;
            this.pendingMoveEnd = -1;
            if (i2 > this.highest) {
                this.highest = i2;
            }
        }
    }

    public final Object[] done() {
        flush();
        int i = this.highest;
        if (i >= 0) {
            Object[] objArr = this.destination;
            if (i < objArr.length) {
                int length = objArr.length;
                if (length == i + 1) {
                    objArr[i] = SlotTableAddresSpaceKt.Unallocated;
                } else {
                    aq5.t(SlotTableAddresSpaceKt.Unallocated, objArr, i, length);
                }
            }
        }
        return this.destination;
    }

    public final Object[] getDestination() {
        return this.destination;
    }

    public final Object[] getSource() {
        return this.source;
    }

    public final void move(int i, int i2, int i3) {
        Object[] objArr = this.source;
        Object[] objArr2 = this.destination;
        if (objArr == objArr2) {
            if (i2 == i) {
                return;
            }
            int i4 = (i3 - i2) + i + i;
            if (i4 >= objArr2.length) {
                Object[] objArr3 = this.source;
                this.destination = Arrays.copyOf(objArr3, objArr3.length);
                break;
            }
            for (int i5 = i; i5 < i4; i5++) {
                if (objArr2[i5] != SlotTableAddresSpaceKt.Unallocated) {
                    Object[] objArr4 = this.source;
                    this.destination = Arrays.copyOf(objArr4, objArr4.length);
                    break;
                }
            }
        }
        if (this.pendingMoveEnd == i2) {
            this.pendingMoveEnd = i3;
            return;
        }
        flush();
        this.pendingMoveOffset = i;
        this.pendingMoveStart = i2;
        this.pendingMoveEnd = i3;
    }

    public final void setDestination(Object[] objArr) {
        this.destination = objArr;
    }
}
