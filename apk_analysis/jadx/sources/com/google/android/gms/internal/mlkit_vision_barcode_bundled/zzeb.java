package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeb;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh;
import defpackage.fg;
import defpackage.lgb;

/* JADX INFO: loaded from: classes4.dex */
public class zzeb<MessageType extends zzeh<MessageType, BuilderType>, BuilderType extends zzeb<MessageType, BuilderType>> extends zzcp<MessageType, BuilderType> {
    public final zzeh b;
    public zzeh c;

    public zzeb(MessageType messagetype) {
        this.b = messagetype;
        if (messagetype.i()) {
            fg.c("Default instance must be immutable.");
            throw null;
        }
        this.c = (zzeh) messagetype.j(4, null);
    }

    public final void e() {
        if (this.c.i()) {
            return;
        }
        h();
    }

    public void h() {
        zzeh zzehVar = (zzeh) this.b.j(4, null);
        lgb.c.a(zzehVar.getClass()).c(zzehVar, this.c);
        this.c = zzehVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfn
    public final /* bridge */ /* synthetic */ zzfm zzac() {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfn
    public final boolean zzad() {
        return zzeh.h(this.c, false);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcp
    /* JADX INFO: renamed from: zzf, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final zzeb zze() {
        zzeb zzebVar = (zzeb) this.b.j(5, null);
        zzebVar.c = zzk();
        return zzebVar;
    }

    public final zzeb zzg(zzeh zzehVar) {
        if (!this.b.equals(zzehVar)) {
            if (!this.c.i()) {
                h();
            }
            zzeh zzehVar2 = this.c;
            lgb.c.a(zzehVar2.getClass()).c(zzehVar2, zzehVar);
        }
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfl
    /* JADX INFO: renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public final MessageType zzj() {
        MessageType messagetype = (MessageType) zzk();
        if (zzeh.h(messagetype, true)) {
            return messagetype;
        }
        throw new zzgr(messagetype);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfl
    /* JADX INFO: renamed from: zzi, reason: merged with bridge method [inline-methods] */
    public MessageType zzk() {
        boolean zI = this.c.i();
        MessageType messagetype = (MessageType) this.c;
        if (!zI) {
            return messagetype;
        }
        messagetype.getClass();
        lgb.c.a(messagetype.getClass()).b(messagetype);
        messagetype.e();
        return (MessageType) this.c;
    }
}
