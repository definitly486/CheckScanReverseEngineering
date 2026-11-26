package defpackage;

import android.view.View;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.composer.linkbuffer.SlotTableEditor;
import androidx.compose.runtime.composer.linkbuffer.SlotTableKt;
import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.graphics.colorspace.Rgb;
import com.my.target.l;
import com.my.target.w2;
import com.my.target.wf;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class p9 implements xl3, li0, DoubleFunction, SlotTableEditor.VisitSlotsInRememberOrderCallback, wf.b {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ p9(ts5 ts5Var, ms5 ms5Var) {
        this.b = 2;
        this.c = ms5Var;
    }

    @Override // com.my.target.wf.b
    public void a(View view, pfa pfaVar) {
        l.a aVar;
        wf wfVar = (wf) this.c;
        if (!view.isEnabled() || (aVar = wfVar.t) == null) {
            return;
        }
        ((w2.b) aVar).b(1, pfaVar);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (List) ((nl3) obj2).invoke(obj);
            default:
                Throwable th = (Throwable) obj;
                th.getClass();
                return ts5.e((ms5) obj2, a57.a(418, ts5.d(th.getMessage())));
        }
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double invoke(double d) {
        return Rgb.eotfFunc$lambda$0((Rgb) this.c, d);
    }

    @Override // androidx.compose.runtime.composer.linkbuffer.SlotTableEditor.VisitSlotsInRememberOrderCallback
    public boolean visit(int i, int i2, Object obj) {
        return SlotTableKt.deactivateCurrentGroup$lambda$0((RememberManager) this.c, i, i2, obj);
    }

    public /* synthetic */ p9(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.li0
    public Object apply(Object obj, Object obj2) {
        return ((bm0.a) this.c).invoke(obj, obj2);
    }
}
