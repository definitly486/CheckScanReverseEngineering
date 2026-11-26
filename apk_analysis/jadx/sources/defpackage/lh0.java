package defpackage;

import android.view.View;
import androidx.compose.foundation.BasicTooltipKt;
import androidx.compose.foundation.BasicTooltipState;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import yads.fs2;
import yads.p41;
import yads.v41;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lh0 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ lh0(Object obj, Object obj2, Object obj3, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.e;
        Object obj3 = this.d;
        Object obj4 = this.c;
        switch (i) {
            case 0:
                return BasicTooltipKt.anchorSemantics$lambda$0((String) obj4, (y22) obj3, (BasicTooltipState) obj2, (SemanticsPropertyReceiver) obj);
            default:
                return v41.a((View) obj4, (p41) obj3, (fs2) obj2, obj);
        }
    }
}
