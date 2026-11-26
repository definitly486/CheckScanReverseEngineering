package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.PathFillType;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class VectorComposeKt$Path$2$3 extends gh4 implements bm3<PathComponent, PathFillType, j59> {
    public static final VectorComposeKt$Path$2$3 INSTANCE = new VectorComposeKt$Path$2$3();

    public VectorComposeKt$Path$2$3() {
        super(2);
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(PathComponent pathComponent, PathFillType pathFillType) {
        m6978invokepweu1eQ(pathComponent, pathFillType.m6527unboximpl());
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke-pweu1eQ, reason: not valid java name */
    public final void m6978invokepweu1eQ(PathComponent pathComponent, int i) {
        pathComponent.m6970setPathFillTypeoQ8Xj4U(i);
    }
}
