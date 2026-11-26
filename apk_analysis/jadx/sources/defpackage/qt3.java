package defpackage;

import androidx.camera.camera2.adapter.GuaranteedConfigurationsUtil;
import androidx.compose.foundation.DefaultDebugIndication;
import yads.wd0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qt3 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ qt3(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return GuaranteedConfigurationsUtil.QUERYABLE_BAKLAVA_FCQ_COMBINATIONS_delegate$lambda$0();
            case 1:
                return DefaultDebugIndication.INSTANCE;
            default:
                return wd0.a();
        }
    }
}
