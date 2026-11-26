package defpackage;

import android.content.Context;
import androidx.compose.material3.TextFieldColors;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import com.yandex.mobile.ads.features.debugpanel.ui.IntegrationInspectorActivity;
import java.util.ArrayList;
import yads.nq0;
import yads.ts3;
import yads.wq0;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class d84 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ d84(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return IntegrationInspectorActivity.d((IntegrationInspectorActivity) obj);
            case 1:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodGetActivityStackTokenValid$lambda$54((SafeActivityEmbeddingComponentProvider) obj));
            case 2:
                return ((ef4) ((ArrayList) obj).get(0)).d();
            case 3:
                return ((TextFieldColors) obj).textSelectionColors;
            case 4:
                return nq0.z((nq0) obj);
            case 5:
                return ts3.a((Context) obj);
            default:
                return wq0.c((wq0) obj);
        }
    }
}
