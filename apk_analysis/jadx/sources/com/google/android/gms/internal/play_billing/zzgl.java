package com.google.android.gms.internal.play_billing;

import com.google.android.gms.internal.play_billing.zzgl;
import com.google.android.gms.internal.play_billing.zzgp;
import defpackage.fg;
import defpackage.kpb;

/* JADX INFO: loaded from: classes4.dex */
public class zzgl<MessageType extends zzgp<MessageType, BuilderType>, BuilderType extends zzgl<MessageType, BuilderType>> extends zzez<MessageType, BuilderType> {
    public final zzgp b;
    public zzgp c;

    public zzgl(MessageType messagetype) {
        this.b = messagetype;
        if (messagetype.e()) {
            fg.c("Default instance must be immutable.");
            throw null;
        }
        this.c = (zzgp) messagetype.g(4);
    }

    public final void e() {
        if (this.c.e()) {
            return;
        }
        h();
    }

    public final void h() {
        zzgp zzgpVar = (zzgp) this.b.g(4);
        kpb.b.a(zzgpVar.getClass()).c(zzgpVar, this.c);
        this.c = zzgpVar;
    }

    @Override // com.google.android.gms.internal.play_billing.zzez
    /* JADX INFO: renamed from: zzg, reason: merged with bridge method [inline-methods] */
    public final zzgl clone() {
        zzgl zzglVar = (zzgl) this.b.g(5);
        zzglVar.c = zzk();
        return zzglVar;
    }

    public final zzgl zzh(zzgp zzgpVar) {
        zzgp zzgpVar2 = this.b;
        if (!zzgpVar2.getClass().isInstance(zzgpVar)) {
            fg.c("mergeFrom(MessageLite) can only merge messages of the same type.");
            return null;
        }
        if (!zzgpVar2.equals(zzgpVar)) {
            if (!this.c.e()) {
                h();
            }
            zzgp zzgpVar3 = this.c;
            kpb.b.a(zzgpVar3.getClass()).c(zzgpVar3, zzgpVar);
        }
        return this;
    }

    public final MessageType zzi() {
        MessageType messagetype = (MessageType) zzk();
        if (messagetype.zzo()) {
            return messagetype;
        }
        throw new zzip(messagetype);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhq
    /* JADX INFO: renamed from: zzj, reason: merged with bridge method [inline-methods] */
    public MessageType zzk() {
        boolean zE = this.c.e();
        MessageType messagetype = (MessageType) this.c;
        if (!zE) {
            return messagetype;
        }
        messagetype.getClass();
        kpb.b.a(messagetype.getClass()).b(messagetype);
        messagetype.b();
        return (MessageType) this.c;
    }

    @Override // com.google.android.gms.internal.play_billing.zzhs
    public final /* bridge */ /* synthetic */ zzhr zzl() {
        throw null;
    }

    @Override // com.google.android.gms.internal.play_billing.zzhs
    public final boolean zzo() {
        return zzgp.f(this.c, false);
    }
}
