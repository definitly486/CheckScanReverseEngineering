package defpackage;

import com.google.android.gms.internal.auth.zzfx;
import com.google.android.gms.internal.auth.zzhs;

/* JADX INFO: loaded from: classes4.dex */
public final class yib implements ogb {
    public final zzfx a;
    public final Object[] b;
    public final int c;

    public yib(zzhs zzhsVar, Object[] objArr) {
        this.a = zzhsVar;
        this.b = objArr;
        char cCharAt = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(0);
        if (cCharAt < 55296) {
            this.c = cCharAt;
            return;
        }
        int i = cCharAt & 8191;
        int i2 = 1;
        int i3 = 13;
        while (true) {
            int i4 = i2 + 1;
            char cCharAt2 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i2);
            if (cCharAt2 < 55296) {
                this.c = i | (cCharAt2 << i3);
                return;
            } else {
                i |= (cCharAt2 & 8191) << i3;
                i3 += 13;
                i2 = i4;
            }
        }
    }

    @Override // defpackage.ogb
    public final zzfx zza() {
        return this.a;
    }

    @Override // defpackage.ogb
    public final boolean zzb() {
        return (this.c & 2) == 2;
    }

    @Override // defpackage.ogb
    public final int zzc() {
        return (this.c & 1) != 0 ? 1 : 2;
    }
}
