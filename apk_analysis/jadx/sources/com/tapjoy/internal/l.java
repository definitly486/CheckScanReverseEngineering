package com.tapjoy.internal;

import java.util.ArrayList;
import java.util.Observable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class l extends Observable {
    public final ArrayList a = new ArrayList();

    @Override // java.util.Observable
    public final void setChanged() {
        super.setChanged();
        notifyObservers();
    }
}
