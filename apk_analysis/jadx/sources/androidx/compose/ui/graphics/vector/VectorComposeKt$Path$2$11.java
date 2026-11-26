package androidx.compose.ui.graphics.vector;

import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class VectorComposeKt$Path$2$11 extends gh4 implements bm3<PathComponent, Float, j59> {
    public static final VectorComposeKt$Path$2$11 INSTANCE = new VectorComposeKt$Path$2$11();

    public VectorComposeKt$Path$2$11() {
        super(2);
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(PathComponent pathComponent, Float f) {
        invoke(pathComponent, f.floatValue());
        return j59.a;
    }

    public final void invoke(PathComponent pathComponent, float f) {
        pathComponent.setStrokeLineMiter(f);
    }
}
