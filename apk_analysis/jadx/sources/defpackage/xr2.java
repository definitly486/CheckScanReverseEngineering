package defpackage;

import androidx.compose.foundation.gestures.Draggable2DKt;
import androidx.compose.ui.unit.Velocity;
import yads.ck1;
import yads.gz2;
import yads.u13;
import yads.w13;
import yads.z71;
import yads.zg1;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class xr2 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ xr2(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return Draggable2DKt.NoOpOnDragStop$lambda$0((Velocity) obj);
            case 1:
                ((gm9) obj).getClass();
                return Boolean.TRUE;
            case 2:
                return ck1.a((String) obj);
            case 3:
                return gz2.a((dc4) obj);
            case 4:
                return u13.a((w13) obj);
            case 5:
                return Boolean.valueOf(z71.a(obj));
            default:
                return Boolean.valueOf(zg1.b(obj));
        }
    }
}
