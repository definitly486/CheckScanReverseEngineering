package defpackage;

import com.google.android.material.color.utilities.DynamicScheme;
import com.google.android.material.color.utilities.MaterialDynamicColors;
import java.util.function.Function;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class b45 implements Function {
    public final /* synthetic */ int a;

    public /* synthetic */ b45(int i) {
        this.a = i;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.a) {
            case 0:
                return MaterialDynamicColors.lambda$tertiaryFixed$132((DynamicScheme) obj);
            default:
                ja8.a aVar = (ja8.a) obj;
                String strK = ja8.k(aVar.a);
                aVar.a = null;
                return strK;
        }
    }
}
