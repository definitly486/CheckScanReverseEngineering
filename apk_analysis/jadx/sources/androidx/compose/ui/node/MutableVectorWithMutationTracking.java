package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class MutableVectorWithMutationTracking<T> {
    public static final int $stable = MutableVector.$stable;
    private final ll3<j59> onVectorMutated;
    private final MutableVector<T> vector;

    public MutableVectorWithMutationTracking(MutableVector<T> mutableVector, ll3<j59> ll3Var) {
        this.vector = mutableVector;
        this.onVectorMutated = ll3Var;
    }

    public final void add(int i, T t) {
        this.vector.add(i, t);
        this.onVectorMutated.invoke();
    }

    public final List<T> asList() {
        return getVector().asMutableList();
    }

    public final void clear() {
        this.vector.clear();
        this.onVectorMutated.invoke();
    }

    public final void forEach(nl3<? super T, j59> nl3Var) {
        MutableVector<T> vector = getVector();
        T[] tArr = vector.content;
        int size = vector.getSize();
        for (int i = 0; i < size; i++) {
            nl3Var.invoke(tArr[i]);
        }
    }

    public final T get(int i) {
        return getVector().content[i];
    }

    public final ll3<j59> getOnVectorMutated() {
        return this.onVectorMutated;
    }

    public final int getSize() {
        return getVector().getSize();
    }

    public final MutableVector<T> getVector() {
        return this.vector;
    }

    public final T removeAt(int i) {
        T tRemoveAt = this.vector.removeAt(i);
        this.onVectorMutated.invoke();
        return tRemoveAt;
    }
}
