package defpackage;

import android.content.Context;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.foundation.text.input.internal.CoreTextFieldSemanticsModifierNode;
import androidx.compose.material3.ProgressIndicatorKt;
import yads.b3;
import yads.bo1;
import yads.gf0;
import yads.uh;
import yads.x95;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class z12 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ z12(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return CoreTextFieldSemanticsModifierNode.updateNodeSemantics$lambda$0((CoreTextFieldSemanticsModifierNode) obj);
            case 1:
                return DefaultTextContextMenuDropdownProvider_androidKt.OpenContextMenu$lambda$1$0((TextContextMenuSession) obj);
            case 2:
                return Float.valueOf(ProgressIndicatorKt.LinearProgressIndicator_GJbTh5U$lambda$4$lambda$3((ll3) obj));
            case 3:
                return bo1.f((bo1) obj);
            case 4:
                return gf0.a((Context) obj);
            case 5:
                return uh.a((uh) obj);
            default:
                return Long.valueOf(x95.a((b3) obj));
        }
    }
}
