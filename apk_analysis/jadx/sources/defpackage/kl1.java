package defpackage;

import androidx.camera.camera2.impl.State3AControl;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.GestureConnection;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import java.util.List;
import yads.fs2;
import yads.g82;
import yads.ty1;
import yads.vy1;
import yads.zo1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class kl1 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ kl1(int i, Object obj, Object obj2) {
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
                return Boolean.valueOf(ClickableKt.hasInterestedParent$lambda$0((IndirectPointerInputChange) obj3, (n07) obj2, (GestureConnection) obj));
            case 1:
                return State3AControl.applyUpdate$lambda$3((List) obj3, (State3AControl) obj2, (Throwable) obj);
            case 2:
                return g82.a((g82) obj3, (zo1) obj2, (String) obj);
            default:
                return Boolean.valueOf(vy1.a((fs2) obj3, (String) obj2, (ty1) obj));
        }
    }
}
