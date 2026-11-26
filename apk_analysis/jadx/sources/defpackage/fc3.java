package defpackage;

import android.app.PendingIntent;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.internal.location.zzel;
import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class fc3 implements pq5, RemoteCall, ubc {
    public final Object b;

    public fc3(ez4.h hVar) {
        o8.l(hVar, "object");
        this.b = hVar;
    }

    @Override // defpackage.pq5
    public Object a() {
        return this.b;
    }

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        ((zzec) obj).zzF(zzel.zzb((PendingIntent) this.b), (TaskCompletionSource) obj2);
    }

    @Override // defpackage.pq5
    public void b(Object obj) {
    }

    @Override // defpackage.ubc
    public void zza(String str, String str2, Bundle bundle) {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        zzlj zzljVar = (zzlj) this.b;
        if (zIsEmpty) {
            zzljVar.zzA(TtmlNode.TEXT_EMPHASIS_AUTO, "_err", bundle);
        } else {
            zzljVar.zzH(TtmlNode.TEXT_EMPHASIS_AUTO, "_err", bundle, str);
        }
    }

    public /* synthetic */ fc3(Object obj) {
        this.b = obj;
    }
}
