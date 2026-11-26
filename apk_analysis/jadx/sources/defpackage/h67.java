package defpackage;

import androidx.compose.material3.SearchBarState;
import androidx.compose.material3.WideNavigationRailStateImpl;
import androidx.compose.material3.internal.TextFieldImplKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.retain.RetainedEffectKt;
import yads.nq0;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class h67 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ h67(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return RetainedEffectKt.RetainedEffect$lambda$3$0((nl3) obj);
            case 1:
                return SearchBarState.currentValue_delegate$lambda$0((SearchBarState) obj);
            case 2:
                return Boolean.valueOf(TextFieldImplKt.CommonDecorationBox$lambda$18$lambda$10$lambda$9((State) obj));
            case 3:
                return WideNavigationRailStateImpl._currentVal$lambda$0((WideNavigationRailStateImpl) obj);
            default:
                return nq0.C((nq0) obj);
        }
    }
}
