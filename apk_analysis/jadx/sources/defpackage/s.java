package defpackage;

import androidx.compose.foundation.AbstractClickableNode;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.internal.PredictiveBackState;
import androidx.compose.runtime.State;
import androidx.window.layout.SafeWindowLayoutComponentProvider;
import androidx.work.impl.WorkDatabase_Impl;
import yads.nq0;
import yads.vq0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class s implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ s(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(AbstractClickableNode.applySemantics$lambda$0((AbstractClickableNode) obj));
            case 1:
                return LazyLayoutKt.LazyLayout$lambda$1$0$0((State) obj);
            case 2:
                return Integer.valueOf(PagerState.targetPage_delegate$lambda$0((PagerState) obj));
            case 3:
                return Boolean.valueOf(SafeWindowLayoutComponentProvider.isFoldingFeatureValid$lambda$1((SafeWindowLayoutComponentProvider) obj));
            case 4:
                return ((PredictiveBackState) obj).getValue();
            case 5:
                return WorkDatabase_Impl._rawWorkInfoDao$lambda$7((WorkDatabase_Impl) obj);
            case 6:
                return nq0.j0((nq0) obj);
            default:
                return vq0.c((vq0) obj);
        }
    }
}
