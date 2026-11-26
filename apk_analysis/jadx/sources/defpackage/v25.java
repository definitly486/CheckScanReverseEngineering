package defpackage;

import com.google.android.material.color.utilities.DynamicScheme;
import com.google.android.material.color.utilities.MaterialDynamicColors;
import java.util.function.Function;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class v25 implements Function {
    public final /* synthetic */ int a;

    public /* synthetic */ v25(int i) {
        this.a = i;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        DynamicScheme dynamicScheme = (DynamicScheme) obj;
        switch (this.a) {
            case 0:
                return MaterialDynamicColors.lambda$neutralPaletteKeyColor$7(dynamicScheme);
            default:
                return MaterialDynamicColors.lambda$onPrimaryFixedVariant$114(dynamicScheme);
        }
    }
}
