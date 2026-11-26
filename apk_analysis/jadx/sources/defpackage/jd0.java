package defpackage;

import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.perf.config.RemoteConfigManager;
import com.my.target.b1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class jd0 implements b1.a, OnSuccessListener {
    public final /* synthetic */ Object b;

    public /* synthetic */ jd0(Object obj) {
        this.b = obj;
    }

    @Override // com.my.target.b1.a
    public void a(vha vhaVar, j8a j8aVar) {
        ((kd0) this.b).a((kia) vhaVar, j8aVar);
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        ((RemoteConfigManager) this.b).lambda$triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch$0((Boolean) obj);
    }
}
