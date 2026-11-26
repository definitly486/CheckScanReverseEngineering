package defpackage;

import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.graphics.colorspace.Rgb;
import androidx.compose.ui.graphics.colorspace.TransferParameters;
import java.util.List;
import yads.ae4;
import yads.ci4;
import yads.dh4;
import yads.iw4;
import yads.tt3;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class s77 implements DoubleFunction, ci4, tt3 {
    public final /* synthetic */ Object b;

    public /* synthetic */ s77(Object obj) {
        this.b = obj;
    }

    @Override // yads.ci4
    public boolean a(dh4 dh4Var) {
        return ae4.d((ae4) this.b, dh4Var);
    }

    @Override // yads.tt3
    public void invoke(Object obj) {
        ((iw4) obj).onCues((List) this.b);
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double invoke(double d) {
        return Rgb.Companion.generateOetf$lambda$1((TransferParameters) this.b, d);
    }
}
