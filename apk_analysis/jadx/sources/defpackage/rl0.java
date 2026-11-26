package defpackage;

import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.graphics.colorspace.Rgb;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class rl0 implements xl3, DoubleFunction {
    public final /* synthetic */ nl3 b;

    public /* synthetic */ rl0(nl3 nl3Var) {
        this.b = nl3Var;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (List) this.b.invoke(obj);
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double invoke(double d) {
        return Rgb._init_$lambda$3(this.b, d);
    }
}
