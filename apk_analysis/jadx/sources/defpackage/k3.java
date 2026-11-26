package defpackage;

import androidx.arch.core.util.Function;
import androidx.paging.PositionalDataSource;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.messaging.FirebaseMessaging;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class k3 implements xl3, OnSuccessListener, Function {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ k3(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (c18) ((e4) obj2).invoke(obj);
            case 1:
                return (r31) ((s9) obj2).invoke(obj);
            default:
                return PositionalDataSource.map$lambda$0((Function) obj2, (List) obj);
        }
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        ((FirebaseMessaging) this.c).lambda$setNotificationDelegationEnabled$7((Void) obj);
    }
}
