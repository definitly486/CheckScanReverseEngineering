package defpackage;

import androidx.compose.material3.ColorSchemeKt;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class xn1 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ xn1(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() throws NoSuchMethodException {
        boolean zLocalTonalElevationEnabled$lambda$2;
        switch (this.b) {
            case 0:
                zLocalTonalElevationEnabled$lambda$2 = ColorSchemeKt.LocalTonalElevationEnabled$lambda$2();
                break;
            case 1:
                return ev1.a;
            default:
                zLocalTonalElevationEnabled$lambda$2 = SafeActivityEmbeddingComponentProvider.isClassSplitPlaceholderRuleBuilderLevel1Valid$lambda$12();
                break;
        }
        return Boolean.valueOf(zLocalTonalElevationEnabled$lambda$2);
    }
}
