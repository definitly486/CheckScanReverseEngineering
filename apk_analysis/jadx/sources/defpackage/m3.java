package defpackage;

import com.google.android.gms.cloudmessaging.CloudMessage;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.messaging.FirebaseMessaging;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class m3 implements xl3, OnSuccessListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ m3(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (qq1) ((t4) obj2).invoke(obj);
            default:
                return (String) ((nl3) obj2).invoke(obj);
        }
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        ((FirebaseMessaging) this.c).lambda$handleProxiedNotificationData$6((CloudMessage) obj);
    }
}
