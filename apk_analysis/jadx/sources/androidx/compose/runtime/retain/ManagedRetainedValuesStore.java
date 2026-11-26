package androidx.compose.runtime.retain;

import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.retain.impl.PreconditionsKt;
import androidx.compose.runtime.retain.impl.SafeMultiValueMap;

/* JADX INFO: loaded from: classes2.dex */
public final class ManagedRetainedValuesStore implements RetainedValuesStore {
    public static final int $stable = 8;
    private boolean isContentComposed;
    private boolean isDisposed;
    private boolean isEnabled = true;
    private final MutableScatterMap<Object, Object> keptExitedValues = SafeMultiValueMap.m5606constructorimpl$default(null, 1, null);

    /* JADX WARN: Code duplicated, block: B:24:0x0061 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:25:0x0063 A[LOOP:0: B:5:0x000d->B:25:0x0063, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:29:0x0066 A[EDGE_INSN: B:29:0x0066->B:26:0x0066 BREAK  A[LOOP:0: B:5:0x000d->B:25:0x0063], SYNTHETIC] */
    private final void purgeUnusedExitedValues() {
        MutableScatterMap<Object, Object> mutableScatterMap = this.keptExitedValues;
        Object[] objArr = mutableScatterMap.values;
        long[] jArr = mutableScatterMap.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i != length) {
                        break;
                        break;
                    }
                    i++;
                } else {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            Object obj = objArr[(i << 3) + i3];
                            if (obj instanceof MutableObjectList) {
                                MutableObjectList mutableObjectList = (MutableObjectList) obj;
                                Object[] objArr2 = mutableObjectList.content;
                                int i4 = mutableObjectList._size;
                                for (int i5 = 0; i5 < i4; i5++) {
                                    Object obj2 = objArr2[i5];
                                    if (obj2 instanceof RetainObserver) {
                                        ((RetainObserver) obj2).onRetired();
                                    }
                                }
                            } else if (obj instanceof RetainObserver) {
                                ((RetainObserver) obj).onRetired();
                            }
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        break;
                    } else if (i != length) {
                        break;
                    } else {
                        i++;
                    }
                }
            }
        }
        SafeMultiValueMap.m5604clearimpl(this.keptExitedValues);
    }

    @Override // androidx.compose.runtime.retain.RetainedValuesStore
    public Object consumeExitedValueOrDefault(Object obj, Object obj2) {
        return SafeMultiValueMap.m5617removeLastimpl(this.keptExitedValues, obj, obj2);
    }

    public final void disableRetainingExitedValues() {
        this.isEnabled = false;
        purgeUnusedExitedValues();
    }

    public final void dispose() {
        this.isDisposed = true;
        disableRetainingExitedValues();
    }

    public final void enableRetainingExitedValues() {
        if (this.isDisposed) {
            PreconditionsKt.throwIllegalStateException("Cannot call enableRetainingExitedValues on a disposed store");
        }
        this.isEnabled = true;
    }

    public final boolean isRetainingExitedValues() {
        return this.isEnabled && !this.isContentComposed;
    }

    @Override // androidx.compose.runtime.retain.RetainedValuesStore
    public void onContentEnteredComposition() {
        if (this.isDisposed) {
            return;
        }
        if (this.isContentComposed) {
            PreconditionsKt.throwIllegalStateException("ManagedValuesStore tried to enter composition twice. Did you attempt to install the same store multiple times or into two compositions?");
        }
        purgeUnusedExitedValues();
        this.isContentComposed = true;
    }

    @Override // androidx.compose.runtime.retain.RetainedValuesStore
    public void onContentExitComposition() {
        if (this.isDisposed) {
            return;
        }
        if (!this.isContentComposed) {
            PreconditionsKt.throwIllegalStateException("ManagedValuesStore tried to leave composition twice. Is the store installed in multiple places?");
        }
        if (!SafeMultiValueMap.m5613isEmptyimpl(this.keptExitedValues)) {
            PreconditionsKt.throwIllegalStateException("Attempted to start retaining exited values with pending exited values");
        }
        this.isContentComposed = false;
    }

    @Override // androidx.compose.runtime.retain.RetainedValuesStore
    public void saveExitingValue(Object obj, Object obj2) {
        if (isRetainingExitedValues()) {
            SafeMultiValueMap.m5602addimpl(this.keptExitedValues, obj, obj2);
        } else if (obj2 instanceof RetainObserver) {
            ((RetainObserver) obj2).onRetired();
        }
    }
}
