package defpackage;

import androidx.compose.foundation.CanvasKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.ui.Modifier;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h31 implements bm3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ int c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ cm3 e;

    public /* synthetic */ h31(Object obj, cm3 cm3Var, int i, int i2) {
        this.b = i2;
        this.d = obj;
        this.e = cm3Var;
        this.c = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.b;
        int i2 = this.c;
        cm3 cm3Var = this.e;
        Object obj3 = this.d;
        switch (i) {
            case 0:
                return CanvasKt.Canvas$lambda$0((Modifier) obj3, (nl3) cm3Var, i2, (Composer) obj, ((Integer) obj2).intValue());
            default:
                return CompositionLocalKt.CompositionLocalProvider$lambda$0((ProvidedValue[]) obj3, (bm3) cm3Var, i2, (Composer) obj, ((Integer) obj2).intValue());
        }
    }
}
