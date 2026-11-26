package defpackage;

import androidx.camera.core.SessionConfig;
import androidx.core.content.IntentSanitizer;
import androidx.core.util.Consumer;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class i84 implements Consumer {
    public final /* synthetic */ int b;

    public /* synthetic */ i84(int i) {
        this.b = i;
    }

    @Override // androidx.core.util.Consumer
    public final void accept(Object obj) {
        switch (this.b) {
            case 0:
                IntentSanitizer.lambda$sanitizeByFiltering$0((String) obj);
                break;
            default:
                SessionConfig.featureSelectionListener$lambda$0((Set) obj);
                break;
        }
    }
}
