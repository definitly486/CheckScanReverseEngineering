package defpackage;

import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.input.internal.CoreTextFieldSemanticsModifierNode;
import androidx.compose.material3.DefaultTwoRowsTopAppBarOverride;
import androidx.compose.material3.TwoRowsTopAppBarOverrideScope;
import androidx.compose.ui.text.AnnotatedString;
import yads.bo6;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class pg0 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ pg0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return BasicTextKt.LayoutWithLinksAndInlineContent_11Od_4g$lambda$2$0((AnnotatedString) obj);
            case 1:
                return CameraQuirks.quirks_delegate$lambda$0((CameraQuirks) obj);
            case 2:
                return Boolean.valueOf(CoreTextFieldSemanticsModifierNode.applySemantics$lambda$6((CoreTextFieldSemanticsModifierNode) obj));
            case 3:
                return Float.valueOf(DefaultTwoRowsTopAppBarOverride.TwoRowsTopAppBar$lambda$5$lambda$4((TwoRowsTopAppBarOverrideScope) obj));
            default:
                return bo6.a((bo6) obj);
        }
    }
}
