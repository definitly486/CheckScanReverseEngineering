package defpackage;

import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.GestureConnection;
import androidx.compose.ui.input.pointer.PointerInputChange;
import yads.bp1;
import yads.g82;
import yads.zo1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ml1 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ml1(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(ClickableKt.hasInterestedParent$lambda$1((PointerInputChange) obj3, (n07) obj2, (GestureConnection) obj));
            default:
                return g82.b((g82) obj3, (zo1) obj2, (bp1) obj);
        }
    }
}
