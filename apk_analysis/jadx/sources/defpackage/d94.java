package defpackage;

import androidx.compose.material3.InteractiveComponentSizeKt;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import yads.eh5;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class d94 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ d94(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return InteractiveComponentSizeKt.LocalMinimumInteractiveComponentSize$lambda$1();
            case 1:
                return SaveableStateRegistryKt.LocalSaveableStateRegistry$lambda$0();
            default:
                return eh5.a();
        }
    }
}
