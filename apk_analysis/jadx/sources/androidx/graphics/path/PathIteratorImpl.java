package androidx.graphics.path;

import android.graphics.Path;
import android.graphics.PointF;
import defpackage.jh2;
import defpackage.n1;

/* JADX INFO: loaded from: classes3.dex */
public abstract class PathIteratorImpl {
    private static final Companion Companion = new Companion(null);
    private final PathIterator.ConicEvaluation conicEvaluation;
    private final Path path;
    private final float[] pointsData;
    private final float tolerance;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PathSegment.Type.values().length];
            try {
                iArr[PathSegment.Type.Move.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PathSegment.Type.Line.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PathSegment.Type.Quadratic.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PathSegment.Type.Conic.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[PathSegment.Type.Cubic.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        System.loadLibrary("androidx.graphics.path");
    }

    public PathIteratorImpl(Path path, PathIterator.ConicEvaluation conicEvaluation, float f) {
        path.getClass();
        conicEvaluation.getClass();
        this.path = path;
        this.conicEvaluation = conicEvaluation;
        this.tolerance = f;
        this.pointsData = new float[8];
    }

    private final PointF[] floatsToPoints(float[] fArr, PathSegment.Type type) {
        int i = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i == 1) {
            return new PointF[]{new PointF(fArr[0], fArr[1])};
        }
        if (i == 2) {
            return new PointF[]{new PointF(fArr[0], fArr[1]), new PointF(fArr[2], fArr[3])};
        }
        if (i == 3 || i == 4) {
            return new PointF[]{new PointF(fArr[0], fArr[1]), new PointF(fArr[2], fArr[3]), new PointF(fArr[4], fArr[5])};
        }
        return i != 5 ? new PointF[0] : new PointF[]{new PointF(fArr[0], fArr[1]), new PointF(fArr[2], fArr[3]), new PointF(fArr[4], fArr[5]), new PointF(fArr[6], fArr[7])};
    }

    public static /* synthetic */ PathSegment.Type next$default(PathIteratorImpl pathIteratorImpl, float[] fArr, int i, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: next");
            return null;
        }
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return pathIteratorImpl.next(fArr, i);
    }

    public abstract int calculateSize(boolean z);

    public final PathIterator.ConicEvaluation getConicEvaluation() {
        return this.conicEvaluation;
    }

    public final Path getPath() {
        return this.path;
    }

    public final float getTolerance() {
        return this.tolerance;
    }

    public abstract boolean hasNext();

    public abstract PathSegment.Type next(float[] fArr, int i);

    public final PathSegment next() {
        PathSegment.Type next = next(this.pointsData, 0);
        if (next == PathSegment.Type.Done) {
            return PathSegmentUtilities.getDoneSegment();
        }
        if (next == PathSegment.Type.Close) {
            return PathSegmentUtilities.getCloseSegment();
        }
        return new PathSegment(next, floatsToPoints(this.pointsData, next), next == PathSegment.Type.Conic ? this.pointsData[6] : 0.0f);
    }

    public abstract PathSegment.Type peek();

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ PathIteratorImpl(Path path, PathIterator.ConicEvaluation conicEvaluation, float f, int i, jh2 jh2Var) {
        this(path, (i & 2) != 0 ? PathIterator.ConicEvaluation.AsQuadratics : conicEvaluation, (i & 4) != 0 ? 0.25f : f);
    }
}
