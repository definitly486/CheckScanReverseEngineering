package defpackage;

import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes4.dex */
public final class d1c extends l0 {
    public Task i;

    @Override // defpackage.l0
    public final void d() {
        this.i = null;
    }

    @Override // defpackage.l0
    public final String k() {
        Task task = this.i;
        return task == null ? "" : task.toString();
    }
}
