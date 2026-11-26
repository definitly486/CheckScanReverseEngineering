package defpackage;

import androidx.compose.material3.RangeSliderState;
import androidx.compose.material3.SliderKt;
import yads.bn1;
import yads.jk1;
import yads.ur;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class h38 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ h38(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(SliderKt.rangeSliderStartThumbSemantics$lambda$55$lambda$54((nm1) obj3, (RangeSliderState) obj2, ((Float) obj).floatValue()));
            default:
                return jk1.a((r07) obj3, (bn1) obj2, (ur) obj);
        }
    }
}
