package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcp;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcq;
import defpackage.e5b;
import defpackage.jib;
import defpackage.me0;
import defpackage.mg;
import defpackage.z3b;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzcq<MessageType extends zzcq<MessageType, BuilderType>, BuilderType extends zzcp<MessageType, BuilderType>> implements zzfm {
    protected int zza = 0;

    public int a(jib jibVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfm
    public final zzdf zzC() {
        try {
            int iZzF = zzF();
            zzdf zzdfVar = zzdf.zzb;
            byte[] bArr = new byte[iZzF];
            e5b e5bVar = new e5b(bArr, iZzF);
            zzab(e5bVar);
            e5bVar.zzC();
            return new z3b(bArr);
        } catch (IOException e) {
            mg.e(me0.c("Serializing ", getClass().getName(), " to a ByteString threw an IOException (should never happen)."), e);
            return null;
        }
    }

    public final byte[] zzD() {
        try {
            int iZzF = zzF();
            byte[] bArr = new byte[iZzF];
            e5b e5bVar = new e5b(bArr, iZzF);
            zzab(e5bVar);
            e5bVar.zzC();
            return bArr;
        } catch (IOException e) {
            mg.e(me0.c("Serializing ", getClass().getName(), " to a byte array threw an IOException (should never happen)."), e);
            return null;
        }
    }
}
