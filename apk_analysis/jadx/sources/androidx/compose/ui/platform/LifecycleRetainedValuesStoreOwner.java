package androidx.compose.ui.platform;

import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.CancellationHandle;
import androidx.compose.runtime.retain.RetainedValuesStore;
import androidx.lifecycle.ViewModel;
import defpackage.j59;
import defpackage.ll3;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes2.dex */
public final class LifecycleRetainedValuesStoreOwner extends ViewModel {
    public static final int $stable = 8;
    private final MutableIntObjectMap<MutableObjectList<RetainedValuesStoreEntry>> scopes = IntObjectMapKt.mutableIntObjectMapOf();

    public interface FrameEndScheduler {
        CancellationHandle scheduleFrameEndCallback(ll3<j59> ll3Var);
    }

    public static final class RetainedValuesStoreEntry {
        public static final int $stable = 8;
        private final LifecycleRetainedValuesStore _retainedValuesStore;
        private CancellationHandle endRetainCancellationHandle;
        private boolean isInUse;
        private final RetainedValuesStore retainedValuesStore;

        public RetainedValuesStoreEntry() {
            LifecycleRetainedValuesStore lifecycleRetainedValuesStore = new LifecycleRetainedValuesStore(null, 1, null);
            this._retainedValuesStore = lifecycleRetainedValuesStore;
            this.retainedValuesStore = lifecycleRetainedValuesStore;
        }

        private final void setEndRetainCancellationHandle(CancellationHandle cancellationHandle) {
            CancellationHandle cancellationHandle2 = this.endRetainCancellationHandle;
            if (cancellationHandle2 != null) {
                cancellationHandle2.cancel();
            }
            this.endRetainCancellationHandle = cancellationHandle;
        }

        public final RetainedValuesStore getRetainedValuesStore() {
            return this.retainedValuesStore;
        }

        public final boolean isInUse() {
            return this.isInUse;
        }

        public final void onCleared() {
            setEndRetainCancellationHandle(null);
            this._retainedValuesStore.dispose();
        }

        public final void release() {
            this.isInUse = false;
        }

        public final void setInUse(boolean z) {
            this.isInUse = z;
        }

        public final void startRetainingExitedValues() {
            if (this._retainedValuesStore.isRetainingExitedValues()) {
                setEndRetainCancellationHandle(null);
            } else {
                this._retainedValuesStore.startLifecycleTransition();
            }
        }

        public final void stopRetainingExitedValues(FrameEndScheduler frameEndScheduler) {
            CancellationHandle cancellationHandleScheduleFrameEndCallback;
            if (this._retainedValuesStore.isRetainingExitedValues()) {
                try {
                    cancellationHandleScheduleFrameEndCallback = frameEndScheduler.scheduleFrameEndCallback(new LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry$stopRetainingExitedValues$1(this));
                } catch (CancellationException unused) {
                    this._retainedValuesStore.endLifecycleTransition();
                    cancellationHandleScheduleFrameEndCallback = null;
                }
                setEndRetainCancellationHandle(cancellationHandleScheduleFrameEndCallback);
            }
        }
    }

    public final RetainedValuesStoreEntry getOrCreateRetainedValuesStoreEntry(int i) {
        Object obj;
        MutableIntObjectMap<MutableObjectList<RetainedValuesStoreEntry>> mutableIntObjectMap = this.scopes;
        MutableObjectList<RetainedValuesStoreEntry> mutableObjectList = mutableIntObjectMap.get(i);
        if (mutableObjectList == null) {
            mutableObjectList = new MutableObjectList<>(1);
            mutableIntObjectMap.set(i, mutableObjectList);
        }
        MutableObjectList<RetainedValuesStoreEntry> mutableObjectList2 = mutableObjectList;
        Object[] objArr = mutableObjectList2.content;
        int i2 = mutableObjectList2._size;
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                obj = null;
                break;
            }
            obj = objArr[i3];
            if (!((RetainedValuesStoreEntry) obj).isInUse()) {
                break;
            }
            i3++;
        }
        RetainedValuesStoreEntry retainedValuesStoreEntry = (RetainedValuesStoreEntry) obj;
        if (retainedValuesStoreEntry == null) {
            retainedValuesStoreEntry = new RetainedValuesStoreEntry();
            mutableObjectList2.add(retainedValuesStoreEntry);
        }
        retainedValuesStoreEntry.setInUse(true);
        return retainedValuesStoreEntry;
    }

    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        MutableIntObjectMap<MutableObjectList<RetainedValuesStoreEntry>> mutableIntObjectMap = this.scopes;
        int[] iArr = mutableIntObjectMap.keys;
        Object[] objArr = mutableIntObjectMap.values;
        long[] jArr = mutableIntObjectMap.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        int i4 = (i << 3) + i3;
                        int i5 = iArr[i4];
                        MutableObjectList mutableObjectList = (MutableObjectList) objArr[i4];
                        Object[] objArr2 = mutableObjectList.content;
                        int i6 = mutableObjectList._size;
                        for (int i7 = 0; i7 < i6; i7++) {
                            ((RetainedValuesStoreEntry) objArr2[i7]).onCleared();
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }
}
