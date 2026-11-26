package defpackage;

import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.internal.auth.zzau;
import com.google.android.gms.internal.auth.zzaz;
import com.google.android.gms.internal.auth.zzbb;

/* JADX INFO: loaded from: classes4.dex */
public final class kza extends n6c {
    public final /* synthetic */ int c = 0;
    public final /* synthetic */ AbstractSafeParcelable d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kza(zzaz zzazVar) {
        super(1606);
        this.d = zzazVar;
    }

    @Override // defpackage.n1c
    public final void a(zzau zzauVar) {
        int i = this.c;
        AbstractSafeParcelable abstractSafeParcelable = this.d;
        f4c f4cVar = this.b;
        switch (i) {
            case 0:
                zzauVar.zzh(f4cVar, (zzaz) abstractSafeParcelable);
                break;
            default:
                zzauVar.zze(f4cVar, (zzbb) abstractSafeParcelable);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kza(zzbb zzbbVar) {
        super(1609);
        this.d = zzbbVar;
    }
}
