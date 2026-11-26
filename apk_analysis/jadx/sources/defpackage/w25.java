package defpackage;

import com.google.android.material.color.utilities.DynamicScheme;
import com.google.android.material.color.utilities.MaterialDynamicColors;
import java.util.function.Function;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class w25 implements Function {
    public final /* synthetic */ int a;
    public final /* synthetic */ MaterialDynamicColors b;

    public /* synthetic */ w25(MaterialDynamicColors materialDynamicColors, int i) {
        this.a = i;
        this.b = materialDynamicColors;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        int i = this.a;
        MaterialDynamicColors materialDynamicColors = this.b;
        DynamicScheme dynamicScheme = (DynamicScheme) obj;
        switch (i) {
            case 0:
                return materialDynamicColors.lambda$onTertiaryContainer$89(dynamicScheme);
            default:
                return materialDynamicColors.lambda$onPrimaryFixedVariant$115(dynamicScheme);
        }
    }
}
