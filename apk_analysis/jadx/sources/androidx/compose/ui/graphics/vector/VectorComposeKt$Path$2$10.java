package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.StrokeCap;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class VectorComposeKt$Path$2$10 extends gh4 implements bm3<PathComponent, StrokeCap, j59> {
    public static final VectorComposeKt$Path$2$10 INSTANCE = new VectorComposeKt$Path$2$10();

    public VectorComposeKt$Path$2$10() {
        super(2);
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(PathComponent pathComponent, StrokeCap strokeCap) {
        m6977invokeCSYIeUk(pathComponent, strokeCap.m6605unboximpl());
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke-CSYIeUk, reason: not valid java name */
    public final void m6977invokeCSYIeUk(PathComponent pathComponent, int i) {
        pathComponent.m6971setStrokeLineCapBeK7IIE(i);
    }
}
