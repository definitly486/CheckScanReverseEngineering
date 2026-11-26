package defpackage;

import androidx.compose.material3.TextFieldLabelPosition;
import androidx.compose.material3.internal.TextFieldImplKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Size;
import yads.bn1;
import yads.ek1;
import yads.fs2;
import yads.jk1;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class xq8 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ xq8(Object obj, Object obj2, Object obj3, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return TextFieldImplKt.CommonDecorationBox$lambda$18$lambda$17$lambda$16((TextFieldLabelPosition) this.c, (State) this.d, (MutableState) this.e, (Size) obj);
            default:
                return jk1.a((bn1) this.c, (ek1) this.d, (fs2) this.e, obj);
        }
    }
}
