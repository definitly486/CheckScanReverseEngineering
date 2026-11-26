package defpackage;

import com.google.android.gms.common.api.internal.ListenerHolder;

/* JADX INFO: loaded from: classes4.dex */
public final class d9b implements ListenerHolder.Notifier {
    public final /* synthetic */ e9b a;

    public d9b(e9b e9bVar) {
        this.a = e9bVar;
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final /* synthetic */ void notifyListener(Object obj) {
        this.a.a.zzc();
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void onNotifyListenerFailed() {
    }
}
