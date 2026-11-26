package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.Brush;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class VectorComposeKt$Path$2$4 extends gh4 implements bm3<PathComponent, Brush, j59> {
    public static final VectorComposeKt$Path$2$4 INSTANCE = new VectorComposeKt$Path$2$4();

    public VectorComposeKt$Path$2$4() {
        super(2);
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(PathComponent pathComponent, Brush brush) {
        invoke2(pathComponent, brush);
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(PathComponent pathComponent, Brush brush) {
        pathComponent.setFill(brush);
    }
}
