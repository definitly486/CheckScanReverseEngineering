package androidx.paging;

import defpackage.aa4;
import defpackage.e2;
import defpackage.fg;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.qg;
import defpackage.u96;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class TransformablePage<T> {
    public static final Companion Companion = new Companion(null);
    private final List<T> data;
    private final List<Integer> hintOriginalIndices;
    private final int hintOriginalPageOffset;
    private final int[] originalPageOffsets;

    /* JADX WARN: Multi-variable type inference failed */
    public TransformablePage(int[] iArr, List<? extends T> list, int i, List<Integer> list2) {
        iArr.getClass();
        list.getClass();
        this.originalPageOffsets = iArr;
        this.data = list;
        this.hintOriginalPageOffset = i;
        this.hintOriginalIndices = list2;
        if (iArr.length == 0) {
            fg.c("originalPageOffsets cannot be empty when constructing TransformablePage");
            throw null;
        }
        if (list2 == null || list2.size() == list.size()) {
            return;
        }
        list2.getClass();
        throw new IllegalArgumentException(("If originalIndices (size = " + list2.size() + ") is provided, it must be same length as data (size = " + list.size() + ')').toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TransformablePage copy$default(TransformablePage transformablePage, int[] iArr, List list, int i, List list2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            iArr = transformablePage.originalPageOffsets;
        }
        if ((i2 & 2) != 0) {
            list = transformablePage.data;
        }
        if ((i2 & 4) != 0) {
            i = transformablePage.hintOriginalPageOffset;
        }
        if ((i2 & 8) != 0) {
            list2 = transformablePage.hintOriginalIndices;
        }
        return transformablePage.copy(iArr, list, i, list2);
    }

    public final int[] component1() {
        return this.originalPageOffsets;
    }

    public final List<T> component2() {
        return this.data;
    }

    public final int component3() {
        return this.hintOriginalPageOffset;
    }

    public final List<Integer> component4() {
        return this.hintOriginalIndices;
    }

    public final TransformablePage<T> copy(int[] iArr, List<? extends T> list, int i, List<Integer> list2) {
        iArr.getClass();
        list.getClass();
        return new TransformablePage<>(iArr, list, i, list2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TransformablePage.class != obj.getClass()) {
            return false;
        }
        TransformablePage transformablePage = (TransformablePage) obj;
        return Arrays.equals(this.originalPageOffsets, transformablePage.originalPageOffsets) && aa4.e(this.data, transformablePage.data) && this.hintOriginalPageOffset == transformablePage.hintOriginalPageOffset && aa4.e(this.hintOriginalIndices, transformablePage.hintOriginalIndices);
    }

    public final List<T> getData() {
        return this.data;
    }

    public final List<Integer> getHintOriginalIndices() {
        return this.hintOriginalIndices;
    }

    public final int getHintOriginalPageOffset() {
        return this.hintOriginalPageOffset;
    }

    public final int[] getOriginalPageOffsets() {
        return this.originalPageOffsets;
    }

    public int hashCode() {
        int iB = (e2.b(this.data, Arrays.hashCode(this.originalPageOffsets) * 31, 31) + this.hintOriginalPageOffset) * 31;
        List<Integer> list = this.hintOriginalIndices;
        return iB + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("TransformablePage(originalPageOffsets=");
        sb.append(Arrays.toString(this.originalPageOffsets));
        sb.append(", data=");
        sb.append(this.data);
        sb.append(", hintOriginalPageOffset=");
        sb.append(this.hintOriginalPageOffset);
        sb.append(", hintOriginalIndices=");
        return qg.f(sb, this.hintOriginalIndices, ')');
    }

    public final ViewportHint.Access viewportHintFor(int i, int i2, int i3, int i4, int i5) {
        int i6 = this.hintOriginalPageOffset;
        List<Integer> list = this.hintOriginalIndices;
        if (list != null && u96.f(list).c(i)) {
            i = this.hintOriginalIndices.get(i).intValue();
        }
        return new ViewportHint.Access(i6, i, i2, i3, i4, i5);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final <T> TransformablePage<T> empty() {
            return new TransformablePage<>(0, kx2.b);
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TransformablePage(int i, List<? extends T> list) {
        this(new int[]{i}, list, i, null);
        list.getClass();
    }
}
