package com.google.android.gms.internal.auth;

import com.google.android.gms.internal.auth.zzet;
import com.google.android.gms.internal.auth.zzev;
import defpackage.fg;
import defpackage.qib;

/* JADX INFO: loaded from: classes4.dex */
public class zzet<MessageType extends zzev<MessageType, BuilderType>, BuilderType extends zzet<MessageType, BuilderType>> extends zzdp<MessageType, BuilderType> {
    public final zzev b;
    public zzev c;

    public zzet(zzhs zzhsVar) {
        this.b = zzhsVar;
        if (zzhsVar.g()) {
            fg.c("Default instance must be immutable.");
            throw null;
        }
        this.c = zzhsVar.b();
    }

    @Override // com.google.android.gms.internal.auth.zzdp
    /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final zzet clone() {
        zzet zzetVar = (zzet) this.b.h(5);
        zzetVar.c = zzd();
        return zzetVar;
    }

    @Override // com.google.android.gms.internal.auth.zzfw
    /* JADX INFO: renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public MessageType zzd() {
        boolean zG = this.c.g();
        MessageType messagetype = (MessageType) this.c;
        if (!zG) {
            return messagetype;
        }
        messagetype.getClass();
        qib.c.a(messagetype.getClass()).zze(messagetype);
        messagetype.d();
        return (MessageType) this.c;
    }

    @Override // com.google.android.gms.internal.auth.zzfy
    public final /* bridge */ /* synthetic */ zzfx zze() {
        throw null;
    }
}
