package androidx.compose.ui.spatial;

import androidx.compose.ui.Actual_androidKt;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
final class ExecuteDelayUsingPostAndRemove implements ExecuteDelayed {
    public static final ExecuteDelayUsingPostAndRemove INSTANCE = new ExecuteDelayUsingPostAndRemove();

    private ExecuteDelayUsingPostAndRemove() {
    }

    @Override // androidx.compose.ui.spatial.ExecuteDelayed
    public Object executeDelayed(long j, ll3<j59> ll3Var) {
        return Actual_androidKt.postDelayed(j, ll3Var);
    }

    @Override // androidx.compose.ui.spatial.ExecuteDelayed
    public void removeDelayedExecution(Object obj) {
        Actual_androidKt.removePost(obj);
    }
}
