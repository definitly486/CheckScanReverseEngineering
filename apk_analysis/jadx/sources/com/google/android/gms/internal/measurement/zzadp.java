package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzadp;
import com.google.android.gms.internal.measurement.zzadu;
import defpackage.fg;
import defpackage.fqa;
import defpackage.gqa;
import defpackage.ksa;
import defpackage.mg;
import defpackage.xg;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class zzadp<MessageType extends zzadu<MessageType, BuilderType>, BuilderType extends zzadp<MessageType, BuilderType>> extends zzaca<MessageType, BuilderType> {
    public final zzadu b;
    public zzadu c;

    public zzadp(MessageType messagetype) {
        this.b = messagetype;
        if (messagetype.c()) {
            fg.c("Default instance must be immutable.");
            throw null;
        }
        this.c = messagetype.e();
    }

    public final void e() {
        if (this.c.c()) {
            return;
        }
        zzadu zzaduVarE = this.b.e();
        ksa.c.a(zzaduVarE.getClass()).f(zzaduVarE, this.c);
        this.c = zzaduVarE;
    }

    @Override // com.google.android.gms.internal.measurement.zzaca
    public final /* bridge */ /* synthetic */ zzaca zzaT(byte[] bArr, int i, int i2) throws zzaeh {
        zzadf zzadfVar = zzadf.b;
        int i3 = fqa.a;
        zzbf(bArr, 0, i2, zzadf.c);
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzaca
    public final /* bridge */ /* synthetic */ zzaca zzaU(byte[] bArr, int i, int i2, zzadf zzadfVar) throws zzaeh {
        zzbf(bArr, 0, i2, zzadfVar);
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzaca
    /* JADX INFO: renamed from: zzbb, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final zzadp zzaS() {
        zzadp zzadpVar = (zzadp) this.b.m(5);
        zzadpVar.c = zzbg();
        return zzadpVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzafb
    /* JADX INFO: renamed from: zzbc, reason: merged with bridge method [inline-methods] */
    public MessageType zzbg() {
        boolean zC = this.c.c();
        MessageType messagetype = (MessageType) this.c;
        if (!zC) {
            return messagetype;
        }
        messagetype.getClass();
        ksa.c.a(messagetype.getClass()).a(messagetype);
        messagetype.d();
        return (MessageType) this.c;
    }

    public final MessageType zzbd() {
        MessageType messagetype = (MessageType) zzbg();
        if (messagetype.zzcJ()) {
            return messagetype;
        }
        throw new zzafy(messagetype);
    }

    public final zzadp zzbe(zzadu zzaduVar) {
        zzadu zzaduVar2 = this.b;
        if (!zzaduVar2.equals(zzaduVar)) {
            if (!this.c.c()) {
                zzadu zzaduVarE = zzaduVar2.e();
                ksa.c.a(zzaduVarE.getClass()).f(zzaduVarE, this.c);
                this.c = zzaduVarE;
            }
            zzadu zzaduVar3 = this.c;
            ksa.c.a(zzaduVar3.getClass()).f(zzaduVar3, zzaduVar);
        }
        return this;
    }

    public final zzadp zzbf(byte[] bArr, int i, int i2, zzadf zzadfVar) throws zzaeh {
        if (!this.c.c()) {
            zzadu zzaduVarE = this.b.e();
            ksa.c.a(zzaduVarE.getClass()).f(zzaduVarE, this.c);
            this.c = zzaduVarE;
        }
        try {
            ksa.c.a(this.c.getClass()).c(this.c, bArr, 0, i2, new gqa(zzadfVar));
            return this;
        } catch (zzaeh e) {
            throw e;
        } catch (IOException e2) {
            mg.e("Reading from byte array should not throw IOException.", e2);
            return null;
        } catch (IndexOutOfBoundsException unused) {
            xg.e("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return null;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzafd
    public final boolean zzcJ() {
        return zzadu.k(this.c, false);
    }

    @Override // com.google.android.gms.internal.measurement.zzafd
    public final /* synthetic */ zzafc zzcK() {
        throw null;
    }
}
