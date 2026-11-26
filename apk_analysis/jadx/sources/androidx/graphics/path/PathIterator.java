package androidx.graphics.path;

import android.graphics.Path;
import android.os.Build;
import defpackage.jh2;
import defpackage.re4;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public final class PathIterator implements Iterator<PathSegment>, re4 {
    private final ConicEvaluation conicEvaluation;
    private final PathIteratorImpl implementation;
    private final Path path;
    private final float tolerance;

    public enum ConicEvaluation {
        AsConic,
        AsQuadratics
    }

    public PathIterator(Path path, ConicEvaluation conicEvaluation, float f) {
        path.getClass();
        conicEvaluation.getClass();
        this.path = path;
        this.conicEvaluation = conicEvaluation;
        this.tolerance = f;
        this.implementation = Build.VERSION.SDK_INT >= 34 ? new PathIteratorApi34Impl(path, conicEvaluation, f) : new PathIteratorPreApi34Impl(path, conicEvaluation, f);
    }

    public static /* synthetic */ int calculateSize$default(PathIterator pathIterator, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return pathIterator.calculateSize(z);
    }

    public static /* synthetic */ PathSegment.Type next$default(PathIterator pathIterator, float[] fArr, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return pathIterator.next(fArr, i);
    }

    public final int calculateSize(boolean z) {
        return this.implementation.calculateSize(z);
    }

    public final ConicEvaluation getConicEvaluation() {
        return this.conicEvaluation;
    }

    public final Path getPath() {
        return this.path;
    }

    public final float getTolerance() {
        return this.tolerance;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.implementation.hasNext();
    }

    public final PathSegment.Type next(float[] fArr) {
        fArr.getClass();
        return next$default(this, fArr, 0, 2, null);
    }

    public final PathSegment.Type peek() {
        return this.implementation.peek();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final PathSegment.Type next(float[] fArr, int i) {
        fArr.getClass();
        return this.implementation.next(fArr, i);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public PathSegment next() {
        return this.implementation.next();
    }

    public /* synthetic */ PathIterator(Path path, ConicEvaluation conicEvaluation, float f, int i, jh2 jh2Var) {
        this(path, (i & 2) != 0 ? ConicEvaluation.AsQuadratics : conicEvaluation, (i & 4) != 0 ? 0.25f : f);
    }
}
