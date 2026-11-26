package androidx.graphics.path;

import android.graphics.Path;

/* JADX INFO: loaded from: classes3.dex */
public final class PathUtilities {
    public static final PathIterator iterator(Path path) {
        path.getClass();
        return new PathIterator(path, null, 0.0f, 6, null);
    }

    public static /* synthetic */ PathIterator iterator$default(Path path, PathIterator.ConicEvaluation conicEvaluation, float f, int i, Object obj) {
        if ((i & 2) != 0) {
            f = 0.25f;
        }
        return iterator(path, conicEvaluation, f);
    }

    public static final PathIterator iterator(Path path, PathIterator.ConicEvaluation conicEvaluation, float f) {
        path.getClass();
        conicEvaluation.getClass();
        return new PathIterator(path, conicEvaluation, f);
    }
}
