package defpackage;

import com.google.android.material.color.utilities.DynamicScheme;
import java.util.function.Function;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class b25 implements Function {
    public final /* synthetic */ int a;

    public /* synthetic */ b25(int i) {
        this.a = i;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        DynamicScheme dynamicScheme = (DynamicScheme) obj;
        switch (this.a) {
            case 0:
                return dynamicScheme.secondaryPalette;
            default:
                return dynamicScheme.neutralPalette;
        }
    }
}
