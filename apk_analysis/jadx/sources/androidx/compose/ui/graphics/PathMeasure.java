package androidx.compose.ui.graphics;

import defpackage.n1;

/* JADX INFO: loaded from: classes2.dex */
public interface PathMeasure {

    public static final class DefaultImpls {
    }

    static /* synthetic */ boolean getSegment$default(PathMeasure pathMeasure, float f, float f2, Path path, boolean z, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: getSegment");
            return false;
        }
        if ((i & 8) != 0) {
            z = true;
        }
        return pathMeasure.getSegment(f, f2, path, z);
    }

    float getLength();

    /* JADX INFO: renamed from: getPosition-tuRUvjQ */
    long mo6127getPositiontuRUvjQ(float f);

    boolean getSegment(float f, float f2, Path path, boolean z);

    /* JADX INFO: renamed from: getTangent-tuRUvjQ */
    long mo6128getTangenttuRUvjQ(float f);

    void setPath(Path path, boolean z);
}
