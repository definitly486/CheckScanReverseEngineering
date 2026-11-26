package defpackage;

import android.text.TextUtils;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.internal.p001authapiphone.zzaf;
import com.google.android.gms.internal.p001authapiphone.zzah;
import com.google.android.gms.internal.p001authapiphone.zzk;
import com.google.android.gms.measurement.internal.zzji;
import com.google.android.gms.measurement.internal.zzjl;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class g27 implements RemoteCall {
    public Object b;

    public /* synthetic */ g27(Object obj) {
        this.b = obj;
    }

    public static g27 b(String str) {
        return new g27((TextUtils.isEmpty(str) || str.length() > 1) ? zzji.UNINITIALIZED : zzjl.c(str.charAt(0)));
    }

    public void a(vr6 vr6Var, Object obj) {
        HashMap map = (HashMap) this.b;
        if (obj == null) {
            map.remove(vr6Var);
        } else {
            map.put(vr6Var, obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        ((zzk) ((zzah) obj).getService()).zzh(new uqa((zzaf) this.b, (TaskCompletionSource) obj2));
    }
}
