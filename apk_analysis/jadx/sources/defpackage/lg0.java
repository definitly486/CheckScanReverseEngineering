package defpackage;

import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import androidx.compose.runtime.Composer;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lg0 implements bm3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ int c;
    public final /* synthetic */ Object d;

    public /* synthetic */ lg0(Object obj, int i, int i2) {
        this.b = i2;
        this.d = obj;
        this.c = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.b;
        int i2 = this.c;
        Object obj3 = this.d;
        switch (i) {
            case 0:
                return BasicTextFieldKt.TextFieldSelectionHandles$lambda$8((TextFieldSelectionState) obj3, i2, (Composer) obj, ((Integer) obj2).intValue());
            default:
                return TextLinkScope.LinksComposables$lambda$1((TextLinkScope) obj3, i2, (Composer) obj, ((Integer) obj2).intValue());
        }
    }
}
