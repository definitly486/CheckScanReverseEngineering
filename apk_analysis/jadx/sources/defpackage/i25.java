package defpackage;

import com.google.android.material.color.utilities.DynamicScheme;
import com.google.android.material.color.utilities.MaterialDynamicColors;
import java.util.function.Function;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class i25 implements Function {
    public final /* synthetic */ int a;

    public /* synthetic */ i25(int i) {
        this.a = i;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        DynamicScheme dynamicScheme = (DynamicScheme) obj;
        switch (this.a) {
            case 0:
                return MaterialDynamicColors.lambda$surfaceContainerLowest$22(dynamicScheme);
            default:
                return MaterialDynamicColors.lambda$outlineVariant$45(dynamicScheme);
        }
    }
}
