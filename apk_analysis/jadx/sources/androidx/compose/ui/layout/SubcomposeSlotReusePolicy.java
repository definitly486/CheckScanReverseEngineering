package androidx.compose.ui.layout;

import androidx.collection.MutableOrderedScatterSet;
import androidx.collection.OrderedScatterSetKt;
import androidx.collection.SieveCacheKt;
import defpackage.hn1;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.re4;
import java.util.Collection;
import java.util.Iterator;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes2.dex */
public interface SubcomposeSlotReusePolicy {
    boolean areCompatible(Object obj, Object obj2);

    void getSlotsToRetain(SlotIdsSet slotIdsSet);

    /* JADX INFO: loaded from: classes.dex */
    public static final class SlotIdsSet implements Collection<Object>, re4 {
        public static final int $stable = 8;
        private final MutableOrderedScatterSet<Object> set;

        public /* synthetic */ SlotIdsSet(MutableOrderedScatterSet mutableOrderedScatterSet, int i, jh2 jh2Var) {
            this((i & 1) != 0 ? OrderedScatterSetKt.mutableOrderedScatterSetOf() : mutableOrderedScatterSet);
        }

        public static /* synthetic */ void getSet$annotations() {
        }

        @Override // java.util.Collection
        /* JADX INFO: renamed from: add$ui, reason: merged with bridge method [inline-methods] */
        public final boolean add(Object obj) {
            return this.set.add(obj);
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends Object> collection) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.Collection
        public final void clear() {
            this.set.clear();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return this.set.contains(obj);
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                if (!this.set.contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        public final void fastForEach(nl3<Object, j59> nl3Var) {
            MutableOrderedScatterSet<Object> set = getSet();
            Object[] objArr = set.elements;
            long[] jArr = set.nodes;
            int i = set.tail;
            while (i != Integer.MAX_VALUE) {
                int i2 = (int) ((jArr[i] >> 31) & SieveCacheKt.NodeLinkMask);
                nl3Var.invoke(objArr[i]);
                i = i2;
            }
        }

        public final void forEach(nl3<Object, j59> nl3Var) {
            MutableOrderedScatterSet<Object> mutableOrderedScatterSet = this.set;
            Object[] objArr = mutableOrderedScatterSet.elements;
            long[] jArr = mutableOrderedScatterSet.nodes;
            int i = mutableOrderedScatterSet.tail;
            while (i != Integer.MAX_VALUE) {
                int i2 = (int) ((jArr[i] >> 31) & SieveCacheKt.NodeLinkMask);
                nl3Var.invoke(objArr[i]);
                i = i2;
            }
        }

        public final MutableOrderedScatterSet<Object> getSet() {
            return this.set;
        }

        public int getSize() {
            return this.set.getSize();
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return this.set.isEmpty();
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<Object> iterator() {
            return this.set.asMutableSet().iterator();
        }

        @Override // java.util.Collection
        public final boolean remove(Object obj) {
            return this.set.remove(obj);
        }

        public final boolean removeAll(nl3<Object, Boolean> nl3Var) {
            int size = this.set.getSize();
            MutableOrderedScatterSet<Object> mutableOrderedScatterSet = this.set;
            Object[] objArr = mutableOrderedScatterSet.elements;
            long[] jArr = mutableOrderedScatterSet.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i = 0;
                while (true) {
                    long j = jArr[i];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i2 = 8 - ((~(i - length)) >>> 31);
                        for (int i3 = 0; i3 < i2; i3++) {
                            if ((255 & j) < 128) {
                                int i4 = (i << 3) + i3;
                                if (nl3Var.invoke(objArr[i4]).booleanValue()) {
                                    mutableOrderedScatterSet.removeElementAt(i4);
                                }
                            }
                            j >>= 8;
                        }
                        if (i2 != 8) {
                            break;
                        }
                    }
                    if (i == length) {
                        break;
                    }
                    i++;
                }
            }
            return size != this.set.getSize();
        }

        @Override // java.util.Collection
        public boolean removeIf(Predicate<? super Object> predicate) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public final boolean retainAll(nl3<Object, Boolean> nl3Var) {
            MutableOrderedScatterSet<Object> mutableOrderedScatterSet = this.set;
            Object[] objArr = mutableOrderedScatterSet.elements;
            int size = mutableOrderedScatterSet.getSize();
            long[] jArr = mutableOrderedScatterSet.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i = 0;
                while (true) {
                    long j = jArr[i];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i2 = 8 - ((~(i - length)) >>> 31);
                        for (int i3 = 0; i3 < i2; i3++) {
                            if ((255 & j) < 128) {
                                int i4 = (i << 3) + i3;
                                if (!nl3Var.invoke(objArr[i4]).booleanValue()) {
                                    mutableOrderedScatterSet.removeElementAt(i4);
                                }
                            }
                            j >>= 8;
                        }
                        if (i2 != 8) {
                            break;
                        }
                    }
                    if (i == length) {
                        break;
                    }
                    i++;
                }
            }
            return size != mutableOrderedScatterSet.getSize();
        }

        @Override // java.util.Collection
        public final /* bridge */ int size() {
            return getSize();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return hn1.c(this);
        }

        public final void trimToSize(int i) {
            this.set.trimToSize(i);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) hn1.d(this, tArr);
        }

        public SlotIdsSet(MutableOrderedScatterSet<Object> mutableOrderedScatterSet) {
            this.set = mutableOrderedScatterSet;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public SlotIdsSet() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        @Override // java.util.Collection
        public final boolean retainAll(Collection<?> collection) {
            return this.set.retainAll((Collection<? extends Object>) collection);
        }

        @Override // java.util.Collection
        public final boolean removeAll(Collection<?> collection) {
            return this.set.remove(collection);
        }
    }
}
