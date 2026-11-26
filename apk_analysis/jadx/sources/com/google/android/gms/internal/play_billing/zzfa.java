package com.google.android.gms.internal.play_billing;

import com.google.android.gms.internal.play_billing.zzez;
import com.google.android.gms.internal.play_billing.zzfa;
import defpackage.kqb;
import defpackage.me0;
import defpackage.mg;
import defpackage.ngb;
import defpackage.qfb;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzfa<MessageType extends zzfa<MessageType, BuilderType>, BuilderType extends zzez<MessageType, BuilderType>> implements zzhr {
    protected transient int zza = 0;

    public int a(kqb kqbVar) {
        throw null;
    }

    public final byte[] zzQ() {
        try {
            int iZzn = zzn();
            byte[] bArr = new byte[iZzn];
            ngb ngbVar = new ngb(bArr, iZzn);
            zzD(ngbVar);
            ngbVar.zzA();
            return bArr;
        } catch (IOException e) {
            mg.e(me0.c("Serializing ", getClass().getName(), " to a byte array threw an IOException (should never happen)."), e);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhr
    public final zzfp zzj() {
        try {
            int iZzn = zzn();
            zzfp zzfpVar = zzfp.zza;
            byte[] bArr = new byte[iZzn];
            ngb ngbVar = new ngb(bArr, iZzn);
            zzD(ngbVar);
            ngbVar.zzA();
            return new qfb(bArr);
        } catch (IOException e) {
            mg.e(me0.c("Serializing ", getClass().getName(), " to a ByteString threw an IOException (should never happen)."), e);
            return null;
        }
    }
}
