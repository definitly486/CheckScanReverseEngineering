package defpackage;

import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.material3.SearchBarDefaults;
import androidx.compose.material3.SearchBarState;
import androidx.compose.material3.internal.AnimatedShapeKt;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class im implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ im(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return AnimatedShapeKt.rememberAnimatedShape$lambda$4$lambda$3((x81) this.c, (RoundedCornerShape) this.d);
            default:
                return SearchBarDefaults.InputField$lambda$17$lambda$16((SearchBarState) this.c, (y22) this.d);
        }
    }
}
