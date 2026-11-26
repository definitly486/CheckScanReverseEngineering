package com.google.firebase.inappmessaging.internal;

import defpackage.he7;

/* JADX INFO: loaded from: classes4.dex */
public class Schedulers {
    private final he7 computeScheduler;
    private final he7 ioScheduler;
    private final he7 mainThreadScheduler;

    public Schedulers(he7 he7Var, he7 he7Var2, he7 he7Var3) {
        this.ioScheduler = he7Var;
        this.computeScheduler = he7Var2;
        this.mainThreadScheduler = he7Var3;
    }

    public he7 computation() {
        return this.computeScheduler;
    }

    public he7 io() {
        return this.ioScheduler;
    }

    public he7 mainThread() {
        return this.mainThreadScheduler;
    }
}
