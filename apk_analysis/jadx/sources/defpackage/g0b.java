package defpackage;

import android.database.ContentObserver;
import com.google.android.gms.internal.auth.zzcg;

/* JADX INFO: loaded from: classes4.dex */
public final class g0b extends ContentObserver {
    public final /* synthetic */ zzcg a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g0b(zzcg zzcgVar) {
        super(null);
        this.a = zzcgVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.a.zze();
    }
}
