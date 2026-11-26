package defpackage;

import androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MovableContent;
import androidx.compose.runtime.MovableContentKt;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class yd5 implements dm3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ yd5(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.dm3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.b;
        Object obj4 = this.c;
        switch (i) {
            case 0:
                return MovableContentKt.movableContentOf$lambda$1((MovableContent) obj4, obj, (Composer) obj2, ((Integer) obj3).intValue());
            default:
                return Boolean.valueOf(TextFieldDecoratorModifierNode.applySemantics$lambda$5((TextFieldDecoratorModifierNode) obj4, ((Integer) obj).intValue(), ((Integer) obj2).intValue(), ((Boolean) obj3).booleanValue()));
        }
    }
}
