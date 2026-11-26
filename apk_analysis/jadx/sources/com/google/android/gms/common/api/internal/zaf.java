package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.qka;

/* JADX INFO: loaded from: classes4.dex */
public final class zaf extends qka {
    public final zacc zab;

    public zaf(zacc zaccVar, TaskCompletionSource taskCompletionSource) {
        super(3, taskCompletionSource);
        this.zab = zaccVar;
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final Feature[] zaa(zabk zabkVar) {
        return this.zab.zaa.getRequiredFeatures();
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final boolean zab(zabk zabkVar) {
        return this.zab.zaa.zaa();
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final int zac(zabk zabkVar) {
        return this.zab.zaa.zab();
    }

    @Override // defpackage.qka, com.google.android.gms.common.api.internal.zai
    public final /* bridge */ /* synthetic */ void zaf(zaaa zaaaVar, boolean z) {
    }

    @Override // defpackage.qka
    public final void zah(zabk zabkVar) {
        zacc zaccVar = this.zab;
        RegisterListenerMethod registerListenerMethod = zaccVar.zaa;
        registerListenerMethod.a(zabkVar.zaf(), this.a);
        ListenerHolder.ListenerKey listenerKey = registerListenerMethod.getListenerKey();
        if (listenerKey != null) {
            zabkVar.zag().put(listenerKey, zaccVar);
        }
    }
}
