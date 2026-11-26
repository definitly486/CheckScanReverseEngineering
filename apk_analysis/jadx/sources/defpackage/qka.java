package defpackage;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.zaaa;
import com.google.android.gms.common.api.internal.zabk;
import com.google.android.gms.common.api.internal.zac;
import com.google.android.gms.common.api.internal.zai;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public abstract class qka extends zac {
    public final TaskCompletionSource a;

    public qka(int i, TaskCompletionSource taskCompletionSource) {
        super(i);
        this.a = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zad(Status status) {
        this.a.trySetException(new ApiException(status));
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zae(Exception exc) {
        this.a.trySetException(exc);
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public void zaf(zaaa zaaaVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zag(zabk zabkVar) throws DeadObjectException {
        try {
            zah(zabkVar);
        } catch (DeadObjectException e) {
            zad(zai.a(e));
            throw e;
        } catch (RemoteException e2) {
            zad(zai.a(e2));
        } catch (RuntimeException e3) {
            this.a.trySetException(e3);
        }
    }

    public abstract void zah(zabk zabkVar);
}
