package defpackage;

import androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode;
import androidx.room.AmbiguousColumnResolver;
import java.util.List;
import yads.k45;
import yads.or5;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ad implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ad(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return AmbiguousColumnResolver.resolve$lambda$19((r07) obj2, (List) obj);
            case 1:
                return TextFieldDecoratorModifierNode.focusableNode$lambda$0((TextFieldDecoratorModifierNode) obj2, ((Boolean) obj).booleanValue());
            default:
                return Boolean.valueOf(or5.a((String) obj2, (k45) obj));
        }
    }
}
