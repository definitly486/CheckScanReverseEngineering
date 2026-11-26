package defpackage;

import androidx.compose.material3.DefaultSingleRowTopAppBarOverride;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import yads.az1;
import yads.c11;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class ti2 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ti2(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return DefaultSingleRowTopAppBarOverride.SingleRowTopAppBar$lambda$9$lambda$8((SemanticsPropertyReceiver) obj);
            case 1:
                return Boolean.valueOf(az1.e(obj));
            default:
                return Boolean.valueOf(c11.a(obj));
        }
    }
}
