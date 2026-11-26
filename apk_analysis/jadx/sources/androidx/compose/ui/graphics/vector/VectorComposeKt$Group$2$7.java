package androidx.compose.ui.graphics.vector;

import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class VectorComposeKt$Group$2$7 extends gh4 implements bm3<GroupComponent, Float, j59> {
    public static final VectorComposeKt$Group$2$7 INSTANCE = new VectorComposeKt$Group$2$7();

    public VectorComposeKt$Group$2$7() {
        super(2);
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(GroupComponent groupComponent, Float f) {
        invoke(groupComponent, f.floatValue());
        return j59.a;
    }

    public final void invoke(GroupComponent groupComponent, float f) {
        groupComponent.setTranslationX(f);
    }
}
