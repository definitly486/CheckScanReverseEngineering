package defpackage;

import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.inappmessaging.internal.MetricsLoggerClient;
import com.google.firebase.inappmessaging.model.InAppMessage;
import yads.pe;
import yads.tt3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class za5 implements OnSuccessListener, tt3 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ za5(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // yads.tt3
    public void invoke(Object obj) {
        ((pe) obj).getClass();
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        ((MetricsLoggerClient) this.b).lambda$logImpression$0((InAppMessage) this.c, (String) obj);
    }
}
