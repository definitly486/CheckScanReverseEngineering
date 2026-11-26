package defpackage;

import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.graphics.colorspace.Rgb;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class w90 implements xl3, DoubleFunction {
    public final /* synthetic */ nl3 b;

    public /* synthetic */ w90(nl3 nl3Var) {
        this.b = nl3Var;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (c18) this.b.invoke(obj);
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double invoke(double d) {
        return Rgb._init_$lambda$1(this.b, d);
    }
}
