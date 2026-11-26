package defpackage;

import com.google.android.gms.common.api.internal.ListenerHolder;

/* JADX INFO: loaded from: classes4.dex */
public final class c7b implements ListenerHolder.Notifier {
    public final /* synthetic */ i7b a;

    public c7b(i7b i7bVar) {
        this.a = i7bVar;
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final /* synthetic */ void notifyListener(Object obj) {
        this.a.a.zzc();
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void onNotifyListenerFailed() {
    }
}
