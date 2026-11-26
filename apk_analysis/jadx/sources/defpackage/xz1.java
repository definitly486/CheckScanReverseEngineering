package defpackage;

import androidx.compose.foundation.layout.ContextualFlowRowOverflow;
import androidx.compose.foundation.layout.FlowLayoutOverflowState;
import androidx.compose.runtime.Composer;
import java.util.ArrayList;
import org.json.JSONObject;
import yads.go1;
import yads.tn1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xz1 implements bm3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ xz1(int i, Object obj, Object obj2) {
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
                return ContextualFlowRowOverflow.Companion.expandIndicator$lambda$0$0((FlowLayoutOverflowState) obj4, (dm3) obj3, (Composer) obj, ((Integer) obj2).intValue());
            default:
                return go1.a((go1) obj4, (ArrayList) obj3, (JSONObject) obj, (tn1) obj2);
        }
    }
}
