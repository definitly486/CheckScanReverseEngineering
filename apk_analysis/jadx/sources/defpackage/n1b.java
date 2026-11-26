package defpackage;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.internal.auth.zzcb;
import com.google.android.gms.internal.auth.zzcc;
import com.google.android.gms.internal.auth.zzcj;
import com.google.android.gms.internal.auth.zzck;
import defpackage.n1b;

/* JADX INFO: loaded from: classes4.dex */
public final class n1b implements a1b {
    public static n1b c;
    public final Context a;
    public final i1b b;

    public n1b(Context context) {
        this.a = context;
        i1b i1bVar = new i1b(null);
        this.b = i1bVar;
        context.getContentResolver().registerContentObserver(zzcb.zza, true, i1bVar);
    }

    @Override // defpackage.a1b
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String zzb(final String str) {
        Context context = this.a;
        if (context != null && !zzcc.zza(context)) {
            try {
                return (String) zzcj.zza(new zzck() { // from class: com.google.android.gms.internal.auth.zzcm
                    @Override // com.google.android.gms.internal.auth.zzck
                    public final Object zza() {
                        n1b n1bVar = this.zza;
                        return zzcb.zza(n1bVar.a.getContentResolver(), str, null);
                    }
                });
            } catch (IllegalStateException | NullPointerException | SecurityException e) {
                Log.e("GservicesLoader", "Unable to read GServices for: ".concat(String.valueOf(str)), e);
            }
        }
        return null;
    }

    public n1b() {
        this.a = null;
        this.b = null;
    }
}
