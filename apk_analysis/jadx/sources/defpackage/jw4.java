package defpackage;

import androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode;
import androidx.compose.ui.tooling.preview.datasource.LoremIpsum;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class jw4 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ int c;
    public final /* synthetic */ Object d;

    public /* synthetic */ jw4(Object obj, int i, int i2) {
        this.b = i2;
        this.d = obj;
        this.c = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        int i2 = this.c;
        Object obj = this.d;
        switch (i) {
            case 0:
                return LoremIpsum.generateLoremIpsum$lambda$0((p07) obj, i2);
            default:
                return Boolean.valueOf(TextFieldDecoratorModifierNode.applySemantics$lambda$6((TextFieldDecoratorModifierNode) obj, i2));
        }
    }
}
