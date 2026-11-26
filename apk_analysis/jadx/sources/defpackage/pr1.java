package defpackage;

import androidx.activity.ComponentActivity;
import androidx.window.layout.SafeWindowLayoutComponentProvider;
import yads.l44;
import yads.nq0;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class pr1 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ pr1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return ComponentActivity.fullyDrawnReporter_delegate$lambda$0$0((ComponentActivity) obj);
            case 1:
                return Boolean.valueOf(SafeWindowLayoutComponentProvider.isSupportedWindowFeaturesValid$lambda$5((SafeWindowLayoutComponentProvider) obj));
            case 2:
                return l44.a((l44) obj);
            default:
                return nq0.i0((nq0) obj);
        }
    }
}
