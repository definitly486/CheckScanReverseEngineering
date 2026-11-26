package defpackage;

import androidx.compose.foundation.layout.ContextualFlowColumnOverflow;
import androidx.compose.foundation.layout.FlowLayoutOverflowState;
import androidx.compose.runtime.CompositionLocalAccessorScope;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.HostDefaultKey;
import java.util.List;
import java.util.Set;
import yads.ku4;
import yads.r5;
import yads.ts3;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class nu1 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ nu1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return CompositionLocalKt.compositionLocalWithHostDefaultOf$lambda$0((HostDefaultKey) obj2, (CompositionLocalAccessorScope) obj);
            case 1:
                return ContextualFlowColumnOverflow.Companion.expandIndicator$lambda$0((dm3) obj2, (FlowLayoutOverflowState) obj);
            case 2:
                df4 df4Var = (df4) obj2;
                ((List) obj).getClass();
                return df4Var;
            case 3:
                return Boolean.valueOf(ku4.a((Set) obj2, (r5) obj));
            default:
                return ts3.a((ts3) obj2, (String) obj);
        }
    }
}
