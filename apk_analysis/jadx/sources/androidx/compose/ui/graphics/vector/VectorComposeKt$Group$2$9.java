package androidx.compose.ui.graphics.vector;

import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class VectorComposeKt$Group$2$9 extends gh4 implements bm3<GroupComponent, List<? extends PathNode>, j59> {
    public static final VectorComposeKt$Group$2$9 INSTANCE = new VectorComposeKt$Group$2$9();

    public VectorComposeKt$Group$2$9() {
        super(2);
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(GroupComponent groupComponent, List<? extends PathNode> list) {
        invoke2(groupComponent, list);
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(GroupComponent groupComponent, List<? extends PathNode> list) {
        groupComponent.setClipPathData(list);
    }
}
