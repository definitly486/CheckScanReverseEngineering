package defpackage;

import com.google.android.material.color.utilities.DynamicScheme;
import com.google.android.material.color.utilities.MaterialDynamicColors;
import java.util.function.Function;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a35 implements Function {
    public final /* synthetic */ int a;
    public final /* synthetic */ MaterialDynamicColors b;

    public /* synthetic */ a35(MaterialDynamicColors materialDynamicColors, int i) {
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
                return materialDynamicColors.lambda$onSecondaryContainer$78(dynamicScheme);
            default:
                return materialDynamicColors.lambda$tertiaryFixedDim$136(dynamicScheme);
        }
    }
}
