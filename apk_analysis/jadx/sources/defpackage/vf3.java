package defpackage;

import androidx.compose.foundation.layout.FlowLayoutOverflowState;
import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.utils.StatusRunnable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class vf3 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ vf3(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return FlowRowOverflow.Companion.expandOrCollapseIndicator__jt2gSs$lambda$1$0((dm3) obj2, (FlowLayoutOverflowState) obj);
            default:
                return StatusRunnable.forStringIds$lambda$0((List) obj2, (WorkDatabase) obj);
        }
    }
}
