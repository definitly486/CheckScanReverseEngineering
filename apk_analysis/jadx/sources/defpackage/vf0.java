package defpackage;

import androidx.collection.MutableScatterSet;
import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.runtime.ControlledComposition;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.Recomposer;
import androidx.compose.ui.text.input.TextFieldValue;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class vf0 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ vf0(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return BasicTextFieldKt.BasicTextField$lambda$20$0((TextFieldValue) obj2, (MutableState) obj);
            default:
                return Recomposer.performRecompose$lambda$0$0((MutableScatterSet) obj2, (ControlledComposition) obj);
        }
    }
}
