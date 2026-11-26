package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.StrokeJoin;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class VectorComposeKt$Path$2$9 extends gh4 implements bm3<PathComponent, StrokeJoin, j59> {
    public static final VectorComposeKt$Path$2$9 INSTANCE = new VectorComposeKt$Path$2$9();

    public VectorComposeKt$Path$2$9() {
        super(2);
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(PathComponent pathComponent, StrokeJoin strokeJoin) {
        m6979invokekLtJ_vA(pathComponent, strokeJoin.m6615unboximpl());
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke-kLtJ_vA, reason: not valid java name */
    public final void m6979invokekLtJ_vA(PathComponent pathComponent, int i) {
        pathComponent.m6972setStrokeLineJoinWw9F2mQ(i);
    }
}
