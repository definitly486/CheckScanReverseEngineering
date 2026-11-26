package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzaca;
import com.google.android.gms.internal.measurement.zzacb;
import defpackage.kh;
import defpackage.mg;
import defpackage.mqa;
import defpackage.nsa;
import defpackage.qqa;
import defpackage.rqa;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzacb<MessageType extends zzacb<MessageType, BuilderType>, BuilderType extends zzaca<MessageType, BuilderType>> implements zzafc {
    protected transient int zza = 0;

    public int a(nsa nsaVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzafc
    public final zzacr zzcc() {
        try {
            int iZzcq = zzcq();
            zzacr zzacrVar = zzacr.zza;
            byte[] bArr = new byte[iZzcq];
            boolean z = zzada.b;
            qqa qqaVar = new qqa(bArr, iZzcq);
            zzcH(qqaVar);
            qqaVar.zzH();
            return new mqa(bArr);
        } catch (IOException e) {
            String name = getClass().getName();
            mg.e(kh.c(new StringBuilder(name.length() + 72), "Serializing ", name, " to a ByteString threw an IOException (should never happen)."), e);
            return null;
        }
    }

    public final byte[] zzcd() {
        try {
            int iZzcq = zzcq();
            byte[] bArr = new byte[iZzcq];
            boolean z = zzada.b;
            qqa qqaVar = new qqa(bArr, iZzcq);
            zzcH(qqaVar);
            qqaVar.zzH();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            mg.e(kh.c(new StringBuilder(name.length() + 72), "Serializing ", name, " to a byte array threw an IOException (should never happen)."), e);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzafc
    public final void zzce(OutputStream outputStream) throws IOException {
        int iZzcq = zzcq();
        boolean z = zzada.b;
        if (iZzcq > 4096) {
            iZzcq = 4096;
        }
        rqa rqaVar = new rqa(outputStream, iZzcq);
        zzcH(rqaVar);
        rqaVar.zzx();
    }
}
