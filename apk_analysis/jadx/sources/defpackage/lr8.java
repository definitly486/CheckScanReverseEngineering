package defpackage;

import android.graphics.Bitmap;
import androidx.compose.foundation.text.TextFieldScrollKt;
import androidx.compose.foundation.text.TextFieldScrollerPosition;
import yads.ii1;
import yads.yi1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lr8 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ lr8(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return Float.valueOf(TextFieldScrollKt.textFieldScrollable$lambda$1$0$0((TextFieldScrollerPosition) obj2, ((Float) obj).floatValue()));
            default:
                return ii1.a((yi1) obj2, (Bitmap) obj);
        }
    }
}
