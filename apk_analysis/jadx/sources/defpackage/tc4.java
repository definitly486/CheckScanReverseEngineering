package defpackage;

import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import java.util.regex.Pattern;
import yads.gf0;
import yads.hf;
import yads.ly4;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class tc4 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ tc4(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return sd4.b;
            case 1:
                try {
                    Pattern pattern = j95.e;
                    return j95.a.a("application/json; charset=utf-8");
                } catch (Throwable unused) {
                    return null;
                }
            case 2:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isClassActivityRuleBuilderLevel1Valid$lambda$7());
            case 3:
                return gf0.l();
            case 4:
                return hf.a();
            default:
                return ly4.a();
        }
    }
}
