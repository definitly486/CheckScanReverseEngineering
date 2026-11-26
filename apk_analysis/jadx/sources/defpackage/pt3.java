package defpackage;

import androidx.camera.camera2.adapter.GuaranteedConfigurationsUtil;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class pt3 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ pt3(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return GuaranteedConfigurationsUtil.QUERYABLE_VIC_FCQ_COMBINATIONS_delegate$lambda$0();
            default:
                return UUID.randomUUID();
        }
    }
}
