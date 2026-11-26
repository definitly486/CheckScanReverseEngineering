package defpackage;

import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.text.input.TextFieldValue;
import yads.as2;
import yads.bn1;
import yads.fs2;
import yads.jk1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class wf0 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ wf0(Object obj, Object obj2, Object obj3, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return BasicTextFieldKt.BasicTextField$lambda$24$0((nl3) this.c, (MutableState) this.d, (MutableState) this.e, (TextFieldValue) obj);
            default:
                return jk1.d((bn1) this.c, (as2) this.d, (fs2) this.e, obj);
        }
    }
}
