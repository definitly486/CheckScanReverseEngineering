package defpackage;

import android.content.Context;
import android.net.Uri;
import androidx.activity.result.ActivityResultCallback;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.google.firebase.inappmessaging.internal.RateLimitProto;
import com.google.firebase.inappmessaging.internal.RateLimiterClient;
import com.warefly.checkscan.presentation.tasks.completedTasks.view.CompletedTasksFragment;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class vq implements Arrangement.SpacingAlignmentCalculator, xl3, SwipeRefreshLayout.OnRefreshListener, ActivityResultCallback {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ vq(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // androidx.compose.foundation.layout.Arrangement.SpacingAlignmentCalculator
    public int align(int i, LayoutDirection layoutDirection) {
        return Arrangement.spacedBy_D5KLDUw$lambda$1((Alignment.Vertical) this.c, i, layoutDirection);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 1:
                return ((qv) obj2).invoke(obj);
            default:
                return ((RateLimiterClient) obj2).lambda$increment$3((RateLimitProto.RateLimit) obj);
        }
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        Context context;
        g86 g86Var = (g86) this.c;
        Uri uri = (Uri) obj;
        if (uri == null || (context = g86Var.c.getContext()) == null) {
            return;
        }
        tb7 tb7Var = new tb7(new h86(uri, context, g86Var, null));
        oi2 oi2Var = qo2.a;
        px.h(new de3(new df3(ud3.b(tb7Var, sh2.c), new j86(g86Var, null)), new k86(g86Var, null)), z22.a(uy4.a));
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        CompletedTasksFragment completedTasksFragment = (CompletedTasksFragment) this.c;
        CompletedTasksFragment.a aVar = CompletedTasksFragment.j;
        completedTasksFragment.o().refreshContent();
    }
}
