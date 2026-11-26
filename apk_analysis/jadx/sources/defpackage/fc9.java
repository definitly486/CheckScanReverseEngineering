package defpackage;

import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.ui.unit.IntOffset;
import yads.ni1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class fc9 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ fc9(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return VectorConvertersKt.IntOffsetToVector$lambda$0((IntOffset) obj);
            case 1:
                return ((WindowInsetsHolder) obj).getWaterfall();
            default:
                return Boolean.valueOf(ni1.e(obj));
        }
    }
}
