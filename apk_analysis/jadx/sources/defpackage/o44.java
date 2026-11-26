package defpackage;

import androidx.compose.foundation.gestures.IndirectPointerInputEventSmoother;
import androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.work.impl.utils.PreferenceUtils;
import yads.a62;
import yads.jr0;
import yads.lh1;
import yads.t02;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class o44 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ o44(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return Float.valueOf(IndirectPointerInputEventSmoother.smoothEventPosition_tuRUvjQ$lambda$2((IndirectPointerInputChange) obj));
            case 1:
                return PreferenceUtils.lambda$getLastCancelAllTimeMillisLiveData$0((Long) obj);
            case 2:
                return PullToRefreshStateImpl.Saver$lambda$1(((Float) obj).floatValue());
            case 3:
                return a62.a((t02) obj);
            case 4:
                return jr0.a((String) obj);
            default:
                return Boolean.valueOf(lh1.c(obj));
        }
    }
}
