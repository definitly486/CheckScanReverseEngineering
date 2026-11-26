package defpackage;

import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.graphics.colorspace.Rgb;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class n3 implements xl3, DoubleFunction {
    public final /* synthetic */ nl3 b;

    public /* synthetic */ n3(nl3 nl3Var) {
        this.b = nl3Var;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (c4.a) this.b.invoke(obj);
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double invoke(double d) {
        return Rgb._init_$lambda$2(this.b, d);
    }
}
