package androidx.compose.ui.node;

import androidx.compose.runtime.CompositionLocalMap;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposeUiNode$Companion$SetResolvedCompositionLocals$1 extends gh4 implements bm3<ComposeUiNode, CompositionLocalMap, j59> {
    public static final ComposeUiNode$Companion$SetResolvedCompositionLocals$1 INSTANCE = new ComposeUiNode$Companion$SetResolvedCompositionLocals$1();

    public ComposeUiNode$Companion$SetResolvedCompositionLocals$1() {
        super(2);
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(ComposeUiNode composeUiNode, CompositionLocalMap compositionLocalMap) {
        invoke2(composeUiNode, compositionLocalMap);
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(ComposeUiNode composeUiNode, CompositionLocalMap compositionLocalMap) {
        composeUiNode.setCompositionLocalMap(compositionLocalMap);
    }
}
