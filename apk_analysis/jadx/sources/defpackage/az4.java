package defpackage;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.moduleinstall.internal.zaf;
import com.google.android.gms.common.moduleinstall.internal.zay;
import com.google.android.gms.common.moduleinstall.internal.zaz;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class az4 implements RemoteCall {
    public final Object b;
    public final Object c;

    public az4() {
        Looper mainLooper = Looper.getMainLooper();
        mainLooper.getClass();
        this.b = mainLooper;
        this.c = new Handler(mainLooper);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        ((zaf) ((zaz) obj).getService()).zai(new rla((zay) this.b, (TaskCompletionSource) obj2), (uia) this.c);
    }

    public /* synthetic */ az4(zay zayVar, uia uiaVar) {
        this.b = zayVar;
        this.c = uiaVar;
    }
}
