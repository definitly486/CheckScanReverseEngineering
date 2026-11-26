package androidx.compose.ui.graphics;

import defpackage.g03;
import defpackage.h03;
import defpackage.n1;
import defpackage.re4;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public interface PathIterator extends Iterator<PathSegment>, re4 {

    public enum ConicEvaluation {
        AsConic,
        AsQuadratics;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<ConicEvaluation> getEntries() {
            return $ENTRIES;
        }
    }

    static /* synthetic */ int calculateSize$default(PathIterator pathIterator, boolean z, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: calculateSize");
            return 0;
        }
        if ((i & 1) != 0) {
            z = true;
        }
        return pathIterator.calculateSize(z);
    }

    static /* synthetic */ PathSegment.Type next$default(PathIterator pathIterator, float[] fArr, int i, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: next");
            return null;
        }
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return pathIterator.next(fArr, i);
    }

    int calculateSize(boolean z);

    ConicEvaluation getConicEvaluation();

    Path getPath();

    float getTolerance();

    @Override // java.util.Iterator
    boolean hasNext();

    PathSegment.Type next(float[] fArr, int i);

    @Override // java.util.Iterator
    PathSegment next();
}
