package androidx.graphics.path;

import android.graphics.Path;
import dalvik.annotation.optimization.FastNative;
import defpackage.jh2;

/* JADX INFO: loaded from: classes3.dex */
public final class PathIteratorPreApi34Impl extends PathIteratorImpl {
    private final long internalPathIterator;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PathIteratorPreApi34Impl(Path path, PathIterator.ConicEvaluation conicEvaluation, float f) {
        super(path, conicEvaluation, f);
        path.getClass();
        conicEvaluation.getClass();
        this.internalPathIterator = createInternalPathIterator(path, conicEvaluation.ordinal(), f);
    }

    private final native long createInternalPathIterator(Path path, int i, float f);

    private final native void destroyInternalPathIterator(long j);

    @FastNative
    private final native boolean internalPathIteratorHasNext(long j);

    @FastNative
    private final native int internalPathIteratorNext(long j, float[] fArr, int i);

    @FastNative
    private final native int internalPathIteratorPeek(long j);

    @FastNative
    private final native int internalPathIteratorRawSize(long j);

    @FastNative
    private final native int internalPathIteratorSize(long j);

    @Override // androidx.graphics.path.PathIteratorImpl
    public int calculateSize(boolean z) {
        return (!z || getConicEvaluation() == PathIterator.ConicEvaluation.AsConic) ? internalPathIteratorRawSize(this.internalPathIterator) : internalPathIteratorSize(this.internalPathIterator);
    }

    public final void finalize() {
        destroyInternalPathIterator(this.internalPathIterator);
    }

    @Override // androidx.graphics.path.PathIteratorImpl
    public boolean hasNext() {
        return internalPathIteratorHasNext(this.internalPathIterator);
    }

    @Override // androidx.graphics.path.PathIteratorImpl
    public PathSegment.Type next(float[] fArr, int i) {
        fArr.getClass();
        return PathIteratorImplKt.PathSegmentTypes[internalPathIteratorNext(this.internalPathIterator, fArr, i)];
    }

    @Override // androidx.graphics.path.PathIteratorImpl
    public PathSegment.Type peek() {
        return PathIteratorImplKt.PathSegmentTypes[internalPathIteratorPeek(this.internalPathIterator)];
    }

    public /* synthetic */ PathIteratorPreApi34Impl(Path path, PathIterator.ConicEvaluation conicEvaluation, float f, int i, jh2 jh2Var) {
        this(path, (i & 2) != 0 ? PathIterator.ConicEvaluation.AsQuadratics : conicEvaluation, (i & 4) != 0 ? 0.25f : f);
    }
}
