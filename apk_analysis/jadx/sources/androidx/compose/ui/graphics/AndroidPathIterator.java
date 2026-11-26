package androidx.compose.ui.graphics;

import defpackage.me0;
import defpackage.n1;

/* JADX INFO: loaded from: classes2.dex */
final class AndroidPathIterator implements PathIterator {
    private final PathIterator.ConicEvaluation conicEvaluation;
    private final androidx.graphics.path.PathIterator implementation;
    private final Path path;
    private final float[] segmentPoints = new float[8];
    private final float tolerance;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[PathIterator.ConicEvaluation.values().length];
            try {
                iArr[PathIterator.ConicEvaluation.AsConic.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PathIterator.ConicEvaluation.AsQuadratics.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[PathSegment.Type.values().length];
            try {
                iArr2[PathSegment.Type.Move.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[PathSegment.Type.Line.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[PathSegment.Type.Quadratic.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[PathSegment.Type.Conic.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[PathSegment.Type.Cubic.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public AndroidPathIterator(Path path, PathIterator.ConicEvaluation conicEvaluation, float f) {
        androidx.graphics.path.PathIterator.ConicEvaluation conicEvaluation2;
        this.path = path;
        this.conicEvaluation = conicEvaluation;
        this.tolerance = f;
        Path path2 = getPath();
        if (!(path2 instanceof AndroidPath)) {
            n1.e("Unable to obtain android.graphics.Path");
            throw null;
        }
        android.graphics.Path internalPath = ((AndroidPath) path2).getInternalPath();
        int i = WhenMappings.$EnumSwitchMapping$0[getConicEvaluation().ordinal()];
        if (i == 1) {
            conicEvaluation2 = androidx.graphics.path.PathIterator.ConicEvaluation.AsConic;
        } else {
            if (i != 2) {
                me0.e();
                throw null;
            }
            conicEvaluation2 = androidx.graphics.path.PathIterator.ConicEvaluation.AsQuadratics;
        }
        this.implementation = new androidx.graphics.path.PathIterator(internalPath, conicEvaluation2, getTolerance());
    }

    @Override // androidx.compose.ui.graphics.PathIterator
    public int calculateSize(boolean z) {
        return this.implementation.calculateSize(z);
    }

    @Override // androidx.compose.ui.graphics.PathIterator
    public PathIterator.ConicEvaluation getConicEvaluation() {
        return this.conicEvaluation;
    }

    @Override // androidx.compose.ui.graphics.PathIterator
    public Path getPath() {
        return this.path;
    }

    @Override // androidx.compose.ui.graphics.PathIterator
    public float getTolerance() {
        return this.tolerance;
    }

    @Override // androidx.compose.ui.graphics.PathIterator, java.util.Iterator
    public boolean hasNext() {
        return this.implementation.hasNext();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Code duplicated, block: B:31:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:32:0x00c7  */
    @Override // java.util.Iterator
    public PathSegment next() {
        PathSegment.Type pathSegmentType;
        float[] fArr;
        float[] fArr2;
        float f;
        float[] fArr3 = this.segmentPoints;
        if (fArr3.length >= 8 && (pathSegmentType = AndroidPathIterator_androidKt.toPathSegmentType(this.implementation.next(fArr3, 0))) != PathSegment.Type.Done) {
            if (pathSegmentType == PathSegment.Type.Close) {
                return PathSegmentKt.getCloseSegment();
            }
            int i = WhenMappings.$EnumSwitchMapping$1[pathSegmentType.ordinal()];
            if (i == 1) {
                fArr = new float[]{fArr3[0], fArr3[1]};
            } else if (i == 2) {
                fArr = new float[]{fArr3[0], fArr3[1], fArr3[2], fArr3[3]};
            } else {
                if (i != 3 && i != 4) {
                    if (i != 5) {
                        fArr2 = new float[0];
                    } else {
                        fArr = new float[]{fArr3[0], fArr3[1], fArr3[2], fArr3[3], fArr3[4], fArr3[5], fArr3[6], fArr3[7]};
                    }
                    if (pathSegmentType == PathSegment.Type.Conic) {
                        f = fArr3[6];
                    } else {
                        f = 0.0f;
                    }
                    return new PathSegment(pathSegmentType, fArr2, f);
                }
                fArr = new float[]{fArr3[0], fArr3[1], fArr3[2], fArr3[3], fArr3[4], fArr3[5]};
            }
            fArr2 = fArr;
            if (pathSegmentType == PathSegment.Type.Conic) {
                f = fArr3[6];
            } else {
                f = 0.0f;
            }
            return new PathSegment(pathSegmentType, fArr2, f);
        }
        return PathSegmentKt.getDoneSegment();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // androidx.compose.ui.graphics.PathIterator
    public PathSegment.Type next(float[] fArr, int i) {
        return AndroidPathIterator_androidKt.toPathSegmentType(this.implementation.next(fArr, i));
    }
}
