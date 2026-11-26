package defpackage;

import androidx.compose.foundation.content.internal.ReceiveContentConfigurationKt;
import androidx.paging.PagingData;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class nc1 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ nc1(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return oc1.a;
            case 1:
                return PagingData.Companion.empty$lambda$0();
            default:
                return ReceiveContentConfigurationKt.ModifierLocalReceiveContent$lambda$0();
        }
    }
}
