package androidx.compose.ui.graphics.vector;

import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class VectorComposeKt$Group$2$1 extends gh4 implements bm3<GroupComponent, String, j59> {
    public static final VectorComposeKt$Group$2$1 INSTANCE = new VectorComposeKt$Group$2$1();

    public VectorComposeKt$Group$2$1() {
        super(2);
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(GroupComponent groupComponent, String str) {
        invoke2(groupComponent, str);
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(GroupComponent groupComponent, String str) {
        groupComponent.setName(str);
    }
}
