package defpackage;

import com.google.android.material.color.utilities.DynamicScheme;
import com.google.android.material.color.utilities.MaterialDynamicColors;
import java.util.function.Function;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class q35 implements Function {
    public final /* synthetic */ int a;

    public /* synthetic */ q35(int i) {
        this.a = i;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        DynamicScheme dynamicScheme = (DynamicScheme) obj;
        switch (this.a) {
            case 0:
                return MaterialDynamicColors.lambda$inverseSurface$38(dynamicScheme);
            default:
                return dynamicScheme.neutralVariantPalette;
        }
    }
}
