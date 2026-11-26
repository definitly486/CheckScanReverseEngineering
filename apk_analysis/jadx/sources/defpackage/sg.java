package defpackage;

import android.graphics.Rect;
import android.view.View;
import android.view.inputmethod.DeleteGesture;
import androidx.compose.runtime.ShouldPauseCallback;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.firebase.remoteconfig.internal.ConfigFetchHandler;
import java.util.List;
import yads.ih2;
import yads.l66;
import yads.ni1;
import yads.pq3;
import yads.st3;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class sg implements DoubleFunction, SuccessContinuation, ShouldPauseCallback, l66, st3 {
    public final /* synthetic */ int b;

    public /* synthetic */ sg(int i) {
        this.b = i;
    }

    public static /* bridge */ /* synthetic */ DeleteGesture c(Object obj) {
        return (DeleteGesture) obj;
    }

    public static String d(StringBuilder sb, boolean z, char c) {
        sb.append(z);
        sb.append(c);
        return sb.toString();
    }

    public static void e(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        rect.getClass();
        view.getClass();
        recyclerView.getClass();
        state.getClass();
    }

    public static void f(String str, Throwable th, char c, ic6 ic6Var) {
        ic6Var.a(str + th + c);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        switch (this.b) {
            case 10:
                return ih2.b(((Long) obj).longValue());
            default:
                return pq3.a((String) obj);
        }
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double invoke(double d) {
        return ColorSpaces.Bt2020Pq$lambda$0(d);
    }

    @Override // androidx.compose.runtime.ShouldPauseCallback
    public boolean shouldPause() {
        return LayoutNodeSubcompositionsState.applyPausedPrecomposition$lambda$0$0$0();
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public Task then(Object obj) {
        return FirebaseRemoteConfig.lambda$fetch$3((ConfigFetchHandler.FetchResponse) obj);
    }

    @Override // yads.st3
    public boolean a(List list) {
        return ni1.a(list);
    }
}
