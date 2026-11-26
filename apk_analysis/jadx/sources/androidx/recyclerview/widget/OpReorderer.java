package androidx.recyclerview.widget;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class OpReorderer {
    final Callback mCallback;

    public interface Callback {
        AdapterHelper.UpdateOp obtainUpdateOp(int i, int i2, int i3, Object obj);

        void recycleUpdateOp(AdapterHelper.UpdateOp updateOp);
    }

    public OpReorderer(Callback callback) {
        this.mCallback = callback;
    }

    private int getLastMoveOutOfOrder(List<AdapterHelper.UpdateOp> list) {
        boolean z = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).cmd != 8) {
                z = true;
            } else if (z) {
                return size;
            }
        }
        return -1;
    }

    private void swapMoveAdd(List<AdapterHelper.UpdateOp> list, int i, AdapterHelper.UpdateOp updateOp, int i2, AdapterHelper.UpdateOp updateOp2) {
        int i3 = updateOp.itemCount;
        int i4 = updateOp2.positionStart;
        int i5 = i3 < i4 ? -1 : 0;
        int i6 = updateOp.positionStart;
        if (i6 < i4) {
            i5++;
        }
        if (i4 <= i6) {
            updateOp.positionStart = i6 + updateOp2.itemCount;
        }
        int i7 = updateOp2.positionStart;
        if (i7 <= i3) {
            updateOp.itemCount = i3 + updateOp2.itemCount;
        }
        updateOp2.positionStart = i7 + i5;
        list.set(i, updateOp2);
        list.set(i2, updateOp);
    }

    private void swapMoveOp(List<AdapterHelper.UpdateOp> list, int i, int i2) {
        AdapterHelper.UpdateOp updateOp = list.get(i);
        AdapterHelper.UpdateOp updateOp2 = list.get(i2);
        int i3 = updateOp2.cmd;
        if (i3 == 1) {
            swapMoveAdd(list, i, updateOp, i2, updateOp2);
        } else if (i3 == 2) {
            swapMoveRemove(list, i, updateOp, i2, updateOp2);
        } else {
            if (i3 != 4) {
                return;
            }
            swapMoveUpdate(list, i, updateOp, i2, updateOp2);
        }
    }

    public void reorderOps(List<AdapterHelper.UpdateOp> list) {
        while (true) {
            int lastMoveOutOfOrder = getLastMoveOutOfOrder(list);
            if (lastMoveOutOfOrder == -1) {
                return;
            } else {
                swapMoveOp(list, lastMoveOutOfOrder, lastMoveOutOfOrder + 1);
            }
        }
    }

    public void swapMoveRemove(List<AdapterHelper.UpdateOp> list, int i, AdapterHelper.UpdateOp updateOp, int i2, AdapterHelper.UpdateOp updateOp2) {
        int i3;
        boolean z;
        int i4 = updateOp.positionStart;
        int i5 = updateOp.itemCount;
        boolean z2 = false;
        if (i4 < i5) {
            i3 = updateOp2.positionStart;
            if (i3 == i4 && updateOp2.itemCount == i5 - i4) {
                z = false;
                z2 = true;
            } else {
                z = false;
            }
        } else {
            i3 = updateOp2.positionStart;
            if (i3 == i5 + 1 && updateOp2.itemCount == i4 - i5) {
                z = true;
                z2 = true;
            } else {
                z = true;
            }
        }
        if (i5 < i3) {
            i3--;
            updateOp2.positionStart = i3;
        } else {
            int i6 = updateOp2.itemCount;
            if (i5 < i3 + i6) {
                updateOp2.itemCount = i6 - 1;
                updateOp.cmd = 2;
                updateOp.itemCount = 1;
                if (updateOp2.itemCount == 0) {
                    list.remove(i2);
                    this.mCallback.recycleUpdateOp(updateOp2);
                    return;
                }
                return;
            }
        }
        int i7 = updateOp.positionStart;
        AdapterHelper.UpdateOp updateOpObtainUpdateOp = null;
        if (i7 <= i3) {
            updateOp2.positionStart = i3 + 1;
        } else {
            int i8 = updateOp2.itemCount;
            if (i7 < i3 + i8) {
                updateOpObtainUpdateOp = this.mCallback.obtainUpdateOp(2, i7 + 1, (i3 + i8) - i7, null);
                updateOp2.itemCount = updateOp.positionStart - updateOp2.positionStart;
            }
        }
        if (z2) {
            list.set(i, updateOp2);
            list.remove(i2);
            this.mCallback.recycleUpdateOp(updateOp);
            return;
        }
        if (z) {
            if (updateOpObtainUpdateOp != null) {
                int i9 = updateOp.positionStart;
                if (i9 > updateOpObtainUpdateOp.positionStart) {
                    updateOp.positionStart = i9 - updateOpObtainUpdateOp.itemCount;
                }
                int i10 = updateOp.itemCount;
                if (i10 > updateOpObtainUpdateOp.positionStart) {
                    updateOp.itemCount = i10 - updateOpObtainUpdateOp.itemCount;
                }
            }
            int i11 = updateOp.positionStart;
            if (i11 > updateOp2.positionStart) {
                updateOp.positionStart = i11 - updateOp2.itemCount;
            }
            int i12 = updateOp.itemCount;
            if (i12 > updateOp2.positionStart) {
                updateOp.itemCount = i12 - updateOp2.itemCount;
            }
        } else {
            if (updateOpObtainUpdateOp != null) {
                int i13 = updateOp.positionStart;
                if (i13 >= updateOpObtainUpdateOp.positionStart) {
                    updateOp.positionStart = i13 - updateOpObtainUpdateOp.itemCount;
                }
                int i14 = updateOp.itemCount;
                if (i14 >= updateOpObtainUpdateOp.positionStart) {
                    updateOp.itemCount = i14 - updateOpObtainUpdateOp.itemCount;
                }
            }
            int i15 = updateOp.positionStart;
            if (i15 >= updateOp2.positionStart) {
                updateOp.positionStart = i15 - updateOp2.itemCount;
            }
            int i16 = updateOp.itemCount;
            if (i16 >= updateOp2.positionStart) {
                updateOp.itemCount = i16 - updateOp2.itemCount;
            }
        }
        list.set(i, updateOp2);
        if (updateOp.positionStart != updateOp.itemCount) {
            list.set(i2, updateOp);
        } else {
            list.remove(i2);
        }
        if (updateOpObtainUpdateOp != null) {
            list.add(i, updateOpObtainUpdateOp);
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0027  */
    /* JADX WARN: Code duplicated, block: B:12:0x002b  */
    /* JADX WARN: Code duplicated, block: B:14:0x0031  */
    /* JADX WARN: Code duplicated, block: B:17:0x0048  */
    /* JADX WARN: Code duplicated, block: B:18:0x004c  */
    /* JADX WARN: Code duplicated, block: B:20:0x0056  */
    /* JADX WARN: Code duplicated, block: B:22:0x005b  */
    /* JADX WARN: Code duplicated, block: B:24:? A[RETURN, SYNTHETIC] */
    public void swapMoveUpdate(List<AdapterHelper.UpdateOp> list, int i, AdapterHelper.UpdateOp updateOp, int i2, AdapterHelper.UpdateOp updateOp2) {
        AdapterHelper.UpdateOp updateOpObtainUpdateOp;
        int i3;
        int i4;
        int i5;
        int i6 = updateOp.itemCount;
        int i7 = updateOp2.positionStart;
        AdapterHelper.UpdateOp updateOpObtainUpdateOp2 = null;
        if (i6 >= i7) {
            int i8 = updateOp2.itemCount;
            if (i6 < i7 + i8) {
                updateOp2.itemCount = i8 - 1;
                updateOpObtainUpdateOp = this.mCallback.obtainUpdateOp(4, updateOp.positionStart, 1, updateOp2.payload);
            }
            i3 = updateOp.positionStart;
            i4 = updateOp2.positionStart;
            if (i3 <= i4) {
                updateOp2.positionStart = i4 + 1;
            } else {
                i5 = updateOp2.itemCount;
                if (i3 < i4 + i5) {
                    int i9 = (i4 + i5) - i3;
                    updateOpObtainUpdateOp2 = this.mCallback.obtainUpdateOp(4, i3 + 1, i9, updateOp2.payload);
                    updateOp2.itemCount -= i9;
                }
            }
            list.set(i2, updateOp);
            if (updateOp2.itemCount > 0) {
                list.set(i, updateOp2);
            } else {
                list.remove(i);
                this.mCallback.recycleUpdateOp(updateOp2);
            }
            if (updateOpObtainUpdateOp != null) {
                list.add(i, updateOpObtainUpdateOp);
            }
            if (updateOpObtainUpdateOp2 != null) {
                list.add(i, updateOpObtainUpdateOp2);
            }
        }
        updateOp2.positionStart = i7 - 1;
        updateOpObtainUpdateOp = null;
        i3 = updateOp.positionStart;
        i4 = updateOp2.positionStart;
        if (i3 <= i4) {
            updateOp2.positionStart = i4 + 1;
        } else {
            i5 = updateOp2.itemCount;
            if (i3 < i4 + i5) {
                int i10 = (i4 + i5) - i3;
                updateOpObtainUpdateOp2 = this.mCallback.obtainUpdateOp(4, i3 + 1, i10, updateOp2.payload);
                updateOp2.itemCount -= i10;
            }
        }
        list.set(i2, updateOp);
        if (updateOp2.itemCount > 0) {
            list.set(i, updateOp2);
        } else {
            list.remove(i);
            this.mCallback.recycleUpdateOp(updateOp2);
        }
        if (updateOpObtainUpdateOp != null) {
            list.add(i, updateOpObtainUpdateOp);
        }
        if (updateOpObtainUpdateOp2 != null) {
            list.add(i, updateOpObtainUpdateOp2);
        }
    }
}
