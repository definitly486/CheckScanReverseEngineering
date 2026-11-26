package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.qka;

/* JADX INFO: loaded from: classes4.dex */
public final class zah extends qka {
    public final ListenerHolder.ListenerKey zab;

    public zah(ListenerHolder.ListenerKey listenerKey, TaskCompletionSource taskCompletionSource) {
        super(4, taskCompletionSource);
        this.zab = listenerKey;
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final Feature[] zaa(zabk zabkVar) {
        zacc zaccVar = (zacc) zabkVar.zag().get(this.zab);
        if (zaccVar == null) {
            return null;
        }
        return zaccVar.zaa.getRequiredFeatures();
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final boolean zab(zabk zabkVar) {
        zacc zaccVar = (zacc) zabkVar.zag().get(this.zab);
        return zaccVar != null && zaccVar.zaa.zaa();
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final int zac(zabk zabkVar) {
        zacc zaccVar = (zacc) zabkVar.zag().get(this.zab);
        if (zaccVar != null) {
            return zaccVar.zaa.zab();
        }
        return -1;
    }

    @Override // defpackage.qka, com.google.android.gms.common.api.internal.zai
    public final /* bridge */ /* synthetic */ void zaf(zaaa zaaaVar, boolean z) {
    }

    @Override // defpackage.qka
    public final void zah(zabk zabkVar) {
        zacc zaccVar = (zacc) zabkVar.zag().remove(this.zab);
        TaskCompletionSource taskCompletionSource = this.a;
        if (zaccVar == null) {
            taskCompletionSource.trySetResult(Boolean.FALSE);
            return;
        }
        zaccVar.zab.a(zabkVar.zaf(), taskCompletionSource);
        zaccVar.zaa.clearListener();
    }
}
