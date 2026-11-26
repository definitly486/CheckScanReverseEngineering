package defpackage;

import android.view.View;
import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.graphics.colorspace.Rgb;
import androidx.compose.ui.graphics.colorspace.TransferParameters;
import com.my.target.l;
import com.my.target.w2;
import com.my.target.wf;
import com.my.target.wj;
import yads.ae4;
import yads.ci4;
import yads.dh4;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ul0 implements xl3, DoubleFunction, ci4, wf.b {
    public final /* synthetic */ Object b;

    public /* synthetic */ ul0(Object obj) {
        this.b = obj;
    }

    @Override // com.my.target.wf.b
    public void a(View view, pfa pfaVar) {
        l.a aVar;
        wf.a aVar2 = (wf.a) this.b;
        int i = wj.k;
        wf wfVar = (wf) ((ml0) aVar2).c;
        if (!view.isEnabled() || (aVar = wfVar.t) == null) {
            return;
        }
        ((w2.b) aVar).b(1, pfaVar);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (b36) ((nl3) this.b).invoke(obj);
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double invoke(double d) {
        return Rgb.Companion.generateEotf$lambda$2((TransferParameters) this.b, d);
    }

    @Override // yads.ci4
    public boolean a(dh4 dh4Var) {
        return ae4.c((ae4) this.b, dh4Var);
    }
}
