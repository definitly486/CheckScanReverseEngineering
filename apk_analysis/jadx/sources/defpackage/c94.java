package defpackage;

import androidx.compose.material3.InteractiveComponentSizeKt;
import androidx.compose.runtime.saveable.SaveableStateHolderKt;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class c94 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ c94(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return Boolean.valueOf(InteractiveComponentSizeKt.LocalMinimumInteractiveComponentEnforcement$lambda$0());
            default:
                return SaveableStateHolderKt.rememberSaveableStateHolder$lambda$0$0();
        }
    }
}
