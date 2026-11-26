package defpackage;

import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LifecycleEffectKt;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class rm4 implements bm3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ int c;
    public final /* synthetic */ int d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;
    public final /* synthetic */ Object g;
    public final /* synthetic */ cm3 h;

    public /* synthetic */ rm4(Object obj, Object obj2, Object obj3, cm3 cm3Var, int i, int i2, int i3) {
        this.b = i3;
        this.e = obj;
        this.f = obj2;
        this.g = obj3;
        this.h = cm3Var;
        this.c = i;
        this.d = i2;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                int iIntValue = ((Integer) obj2).intValue();
                return LazyLayoutKt.LazyLayout$lambda$0((ll3) this.e, (Modifier) this.f, (LazyLayoutPrefetchState) this.g, (bm3) this.h, this.c, this.d, (Composer) obj, iIntValue);
            default:
                int iIntValue2 = ((Integer) obj2).intValue();
                return LifecycleEffectKt.LifecycleStartEffect$lambda$3(this.e, this.f, (LifecycleOwner) this.g, (nl3) this.h, this.c, this.d, (Composer) obj, iIntValue2);
        }
    }
}
