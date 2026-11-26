package defpackage;

import androidx.compose.material3.TooltipState;
import androidx.compose.material3.internal.BasicTooltipKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import yads.fs2;
import yads.yo1;
import yads.yr2;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class uh0 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ uh0(Object obj, Object obj2, Object obj3, int i) {
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
                return BasicTooltipKt.anchorSemantics$lambda$12((String) obj4, (y22) obj3, (TooltipState) obj2, (SemanticsPropertyReceiver) obj);
            default:
                return yo1.a((yo1) obj4, (yr2) obj3, (fs2) obj2, ((Long) obj).longValue());
        }
    }
}
