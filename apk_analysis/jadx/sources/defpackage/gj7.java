package defpackage;

import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.material3.SearchBarDefaults;
import androidx.compose.ui.focus.FocusState;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class gj7 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ nl3 c;

    public /* synthetic */ gj7(nl3 nl3Var, int i) {
        this.b = i;
        this.c = nl3Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return SearchBarDefaults.InputField$lambda$25$lambda$24(this.c, (FocusState) obj);
            default:
                return SuspendAnimationKt.callWithFrameNanos$lambda$0(this.c, ((Long) obj).longValue());
        }
    }
}
