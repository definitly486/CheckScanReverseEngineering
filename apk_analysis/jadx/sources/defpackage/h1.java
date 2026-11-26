package defpackage;

import androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode;
import androidx.compose.foundation.text.input.internal.TextFieldTextLayoutModifierNode;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;
import androidx.compose.ui.layout.Placeable;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h1 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ h1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(AbstractPersistentList.retainAll$lambda$0((Collection) obj2, obj));
            case 1:
                return Boolean.valueOf(TextFieldDecoratorModifierNode.applySemantics$lambda$2((TextFieldDecoratorModifierNode) obj2, (List) obj));
            default:
                return TextFieldTextLayoutModifierNode.measure_3p2s80s$lambda$0((Placeable) obj2, (Placeable.PlacementScope) obj);
        }
    }
}
