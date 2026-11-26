package defpackage;

import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.contextmenu.ContextMenuGesturesKt;
import androidx.compose.foundation.contextmenu.ContextMenuState;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.ui.geometry.Offset;
import androidx.datastore.core.CorruptionException;
import com.google.firebase.sessions.FirebaseSessionsComponent;
import com.google.firebase.sessions.SessionDataSerializer;
import com.posthog.PostHogEvent;
import com.warefly.checkscan.presentation.notifications.presenter.NotificationsPresenter;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class vy1 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ vy1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return ContextMenuGesturesKt.contextMenuGestures$lambda$0((ContextMenuState) obj2, (Offset) obj);
            case 1:
                InputStream inputStream = (InputStream) obj;
                inputStream.getClass();
                wd6 wd6VarB = ((nb6) obj2).b();
                return (PostHogEvent) wd6VarB.a.e(new BufferedReader(new InputStreamReader(inputStream, ha1.b), 8192), new hz2().b);
            case 2:
                return FirebaseSessionsComponent.MainModule.Companion.sessionDataStore$lambda$3((SessionDataSerializer) obj2, (CorruptionException) obj);
            case 3:
                return Float.valueOf(ScrollState.scrollableState$lambda$0((ScrollState) obj2, ((Float) obj).floatValue()));
            case 4:
                j44 j44Var = (j44) obj;
                j44Var.getClass();
                return (Boolean) ((NotificationsPresenter.e) obj2).invoke(Integer.valueOf(j44Var.a), j44Var.b);
            default:
                return SnapshotMutableIntStateImpl.component2$lambda$0((SnapshotMutableIntStateImpl) obj2, ((Integer) obj).intValue());
        }
    }
}
