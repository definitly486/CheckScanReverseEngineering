package defpackage;

import com.google.firebase.inappmessaging.internal.InAppMessageStreamManager;
import com.google.firebase.inappmessaging.internal.InstallationIdResult;
import yads.pe;
import yads.tt3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class i34 implements xl3, tt3 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ i34(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return ((InAppMessageStreamManager) this.b).lambda$createFirebaseInAppMessageStream$16((j21) this.c, (InstallationIdResult) obj);
    }

    @Override // yads.tt3
    public void invoke(Object obj) {
        ((pe) obj).getClass();
    }
}
