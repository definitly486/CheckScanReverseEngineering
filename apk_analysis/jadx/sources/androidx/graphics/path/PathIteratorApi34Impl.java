package androidx.graphics.path;

import android.graphics.Path;
import defpackage.jh2;

/* JADX INFO: loaded from: classes3.dex */
public final class PathIteratorApi34Impl extends PathIteratorImpl {
    private final ConicConverter conicConverter;
    private final android.graphics.PathIterator platformIterator;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PathIteratorApi34Impl(Path path, PathIterator.ConicEvaluation conicEvaluation, float f) {
        super(path, conicEvaluation, f);
        path.getClass();
        conicEvaluation.getClass();
        android.graphics.PathIterator pathIterator = path.getPathIterator();
        pathIterator.getClass();
        this.platformIterator = pathIterator;
        this.conicConverter = new ConicConverter();
    }

    @Override // androidx.graphics.path.PathIteratorImpl
    public int calculateSize(boolean z) {
        boolean z2 = z && getConicEvaluation() == PathIterator.ConicEvaluation.AsQuadratics;
        android.graphics.PathIterator pathIterator = getPath().getPathIterator();
        pathIterator.getClass();
        float[] fArr = new float[8];
        int quadraticCount = 0;
        while (pathIterator.hasNext()) {
            if (pathIterator.next(fArr, 0) == 3 && z2) {
                ConicConverter conicConverter = this.conicConverter;
                ConicConverter.convert$default(conicConverter, fArr, fArr[6], getTolerance(), 0, 8, null);
                quadraticCount += conicConverter.getQuadraticCount();
            } else {
                quadraticCount++;
            }
        }
        return quadraticCount;
    }

    @Override // androidx.graphics.path.PathIteratorImpl
    public boolean hasNext() {
        return this.platformIterator.hasNext();
    }

    @Override // androidx.graphics.path.PathIteratorImpl
    public PathSegment.Type next(float[] fArr, int i) {
        fArr.getClass();
        if (this.conicConverter.getCurrentQuadratic() < this.conicConverter.getQuadraticCount()) {
            this.conicConverter.nextQuadratic(fArr, i);
            return PathSegment.Type.Quadratic;
        }
        PathSegment.Type typePlatformToAndroidXSegmentType = PathIteratorImplKt.platformToAndroidXSegmentType(this.platformIterator.next(fArr, i));
        if (typePlatformToAndroidXSegmentType != PathSegment.Type.Conic || getConicEvaluation() != PathIterator.ConicEvaluation.AsQuadratics) {
            return typePlatformToAndroidXSegmentType;
        }
        ConicConverter conicConverter = this.conicConverter;
        conicConverter.convert(fArr, fArr[i + 6], getTolerance(), i);
        if (conicConverter.getQuadraticCount() > 0) {
            conicConverter.nextQuadratic(fArr, i);
        }
        return PathSegment.Type.Quadratic;
    }

    @Override // androidx.graphics.path.PathIteratorImpl
    public PathSegment.Type peek() {
        return PathIteratorImplKt.platformToAndroidXSegmentType(this.platformIterator.peek());
    }

    public /* synthetic */ PathIteratorApi34Impl(Path path, PathIterator.ConicEvaluation conicEvaluation, float f, int i, jh2 jh2Var) {
        this(path, (i & 2) != 0 ? PathIterator.ConicEvaluation.AsQuadratics : conicEvaluation, (i & 4) != 0 ? 0.25f : f);
    }
}
