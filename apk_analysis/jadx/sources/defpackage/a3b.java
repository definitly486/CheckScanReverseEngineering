package defpackage;

import android.content.Context;
import androidx.core.content.PermissionChecker;
import com.google.android.gms.internal.mlkit_common.zzj;
import com.google.android.gms.internal.mlkit_common.zzk;

/* JADX INFO: loaded from: classes4.dex */
public final class a3b extends zzk {
    @Override // com.google.android.gms.internal.mlkit_common.zzk
    public final int a(Context context, zzj zzjVar) {
        return (zzjVar.zza.getAuthority().lastIndexOf(64) < 0 || PermissionChecker.checkSelfPermission(context, "android.permission.INTERACT_ACROSS_USERS") != 0) ? 3 : 2;
    }
}
