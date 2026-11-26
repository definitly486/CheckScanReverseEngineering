package defpackage;

import com.google.android.material.color.utilities.DynamicScheme;
import com.google.android.material.color.utilities.MaterialDynamicColors;
import java.util.function.Function;
import yads.ry2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class h55 implements Function {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ h55(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                return ((MaterialDynamicColors) obj2).lambda$secondaryContainer$75((DynamicScheme) obj);
            default:
                return ry2.a((ji) obj2, obj);
        }
    }
}
