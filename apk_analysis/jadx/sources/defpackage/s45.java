package defpackage;

import com.google.android.material.color.utilities.DynamicScheme;
import com.google.android.material.color.utilities.MaterialDynamicColors;
import java.util.function.Function;
import org.jsoup.nodes.n;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class s45 implements Function {
    public final /* synthetic */ int a;

    public /* synthetic */ s45(int i) {
        this.a = i;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.a) {
            case 0:
                return MaterialDynamicColors.lambda$controlActivated$146((DynamicScheme) obj);
            default:
                return ((n) obj).x();
        }
    }
}
