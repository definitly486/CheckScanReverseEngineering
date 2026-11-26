package defpackage;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.compose.foundation.layout.ContextualFlowRowOverflow;
import androidx.compose.foundation.layout.FlowColumnOverflow;
import androidx.compose.foundation.layout.FlowLayoutOverflowState;
import androidx.compose.runtime.Composer;
import yads.tq;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c02 implements bm3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ c02(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.b;
        Object obj3 = this.d;
        Object obj4 = this.c;
        switch (i) {
            case 0:
                return ContextualFlowRowOverflow.Companion.expandOrCollapseIndicator__jt2gSs$lambda$1$0$0((FlowLayoutOverflowState) obj4, (dm3) obj3, (Composer) obj, ((Integer) obj2).intValue());
            case 1:
                return FlowColumnOverflow.Companion.expandOrCollapseIndicator__jt2gSs$lambda$1$1$0((FlowLayoutOverflowState) obj4, (dm3) obj3, (Composer) obj, ((Integer) obj2).intValue());
            default:
                return Boolean.valueOf(tq.a((bm3) obj4, (GestureDetector) obj3, (View) obj, (MotionEvent) obj2));
        }
    }
}
