package defpackage;

import com.google.android.material.color.utilities.DynamicScheme;
import com.google.android.material.color.utilities.MaterialDynamicColors;
import java.util.function.Function;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class m65 implements Function {
    public final /* synthetic */ MaterialDynamicColors a;

    public /* synthetic */ m65(MaterialDynamicColors materialDynamicColors) {
        this.a = materialDynamicColors;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return this.a.highestSurface((DynamicScheme) obj);
    }
}
