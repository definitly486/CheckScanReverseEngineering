package io.appmetrica.analytics.appsetid.internal;

import android.content.Context;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import io.appmetrica.analytics.coreapi.internal.identifiers.AppSetIdScope;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class AppSetIdRetriever implements IAppSetIdRetriever {
    private final Object a = new Object();
    private final ArrayList b = new ArrayList();

    public static final AppSetIdScope access$convertScope(AppSetIdRetriever appSetIdRetriever, int i) {
        appSetIdRetriever.getClass();
        if (i != 1) {
            return i != 2 ? AppSetIdScope.UNKNOWN : AppSetIdScope.DEVELOPER;
        }
        return AppSetIdScope.APP;
    }

    @Override // io.appmetrica.analytics.appsetid.internal.IAppSetIdRetriever
    public void retrieveAppSetId(Context context, final AppSetIdListener appSetIdListener) {
        Task<AppSetIdInfo> appSetIdInfo = AppSet.getClient(context).getAppSetIdInfo();
        OnCompleteListener<AppSetIdInfo> onCompleteListener = new OnCompleteListener<AppSetIdInfo>() { // from class: io.appmetrica.analytics.appsetid.internal.AppSetIdRetriever$retrieveAppSetId$onCompleteListener$1
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public void onComplete(Task<AppSetIdInfo> task) {
                Object obj = this.a.a;
                AppSetIdRetriever appSetIdRetriever = this.a;
                synchronized (obj) {
                    appSetIdRetriever.b.remove(this);
                }
                boolean zIsSuccessful = task.isSuccessful();
                AppSetIdListener appSetIdListener2 = appSetIdListener;
                if (zIsSuccessful) {
                    appSetIdListener2.onAppSetIdRetrieved(task.getResult().getId(), AppSetIdRetriever.access$convertScope(this.a, task.getResult().getScope()));
                } else {
                    appSetIdListener2.onFailure(task.getException());
                }
            }
        };
        synchronized (this.a) {
            this.b.add(onCompleteListener);
        }
        appSetIdInfo.addOnCompleteListener(onCompleteListener);
    }
}
