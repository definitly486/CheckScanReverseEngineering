package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.AndroidPathMeasure_androidKt;
import androidx.compose.ui.graphics.PathMeasure;
import defpackage.gh4;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class PathComponent$pathMeasure$2 extends gh4 implements ll3<PathMeasure> {
    public static final PathComponent$pathMeasure$2 INSTANCE = new PathComponent$pathMeasure$2();

    public PathComponent$pathMeasure$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final PathMeasure invoke() {
        return AndroidPathMeasure_androidKt.PathMeasure();
    }
}
