package com.my.target;

import defpackage.y14;

/* JADX INFO: loaded from: classes4.dex */
public final class a1 implements Runnable {
    public n b;
    public n.a c;

    @Override // java.lang.Runnable
    public final void run() {
        n.a aVar;
        n nVar = this.b;
        if (nVar == null) {
            return;
        }
        try {
            nVar.getPosition();
            if (this.b.getDuration() <= 0.0f || (aVar = this.c) == null) {
                return;
            }
            aVar.s();
        } catch (Throwable th) {
            String str = this.b.getClass() + ": Error - " + th.getMessage();
            y14.r(null, str);
            n.a aVar2 = this.c;
            if (aVar2 != null) {
                aVar2.b(str);
            }
        }
    }
}
