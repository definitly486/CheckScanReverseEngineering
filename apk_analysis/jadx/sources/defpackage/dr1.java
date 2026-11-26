package defpackage;

import android.net.Uri;
import com.warefly.checkscan.presentation.Deeplink;
import com.warefly.checkscan.tasks.presentation.flows.TasksReason;

/* JADX INFO: loaded from: classes5.dex */
public final class dr1 implements he2 {
    @Override // defpackage.he2
    public final Deeplink a(Uri uri) {
        uri.getClass();
        return new Deeplink.Desktop.Tasks(TasksReason.CompletedTasks.b);
    }

    @Override // defpackage.he2
    public final String b() {
        return null;
    }

    @Override // defpackage.he2
    public final String c() {
        return "completed-tasks";
    }
}
