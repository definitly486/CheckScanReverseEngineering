package defpackage;

import androidx.compose.material3.MaterialThemeKt;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import yads.hl2;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zq2 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ zq2(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return j59.a;
            case 1:
                return LocalLifecycleOwnerKt.LocalLifecycleOwner$lambda$0$1();
            case 2:
                return Boolean.valueOf(MaterialThemeKt.LocalUsingExpressiveTheme$lambda$3());
            case 3:
                return Boolean.valueOf(TopAppBarDefaults.enterAlwaysScrollBehavior$lambda$7$lambda$6());
            default:
                return hl2.a(null);
        }
    }
}
