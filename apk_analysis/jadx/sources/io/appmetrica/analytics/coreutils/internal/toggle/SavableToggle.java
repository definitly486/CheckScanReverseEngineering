package io.appmetrica.analytics.coreutils.internal.toggle;

import defpackage.lt0;
import io.appmetrica.analytics.coreapi.internal.data.Savable;
import io.appmetrica.analytics.coreapi.internal.data.Updatable;

/* JADX INFO: loaded from: classes5.dex */
public final class SavableToggle extends SimpleThreadSafeToggle implements Updatable<Boolean> {
    private final Savable d;

    public SavableToggle(String str, Savable<Boolean> savable) {
        super(savable.getValue().booleanValue(), lt0.d(']', "[SavableToggle - ", str));
        this.d = savable;
    }

    public void update(boolean z) {
        updateState(z);
        this.d.setValue(Boolean.valueOf(getActualState()));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Updatable
    public /* bridge */ /* synthetic */ void update(Boolean bool) {
        update(bool.booleanValue());
    }
}
