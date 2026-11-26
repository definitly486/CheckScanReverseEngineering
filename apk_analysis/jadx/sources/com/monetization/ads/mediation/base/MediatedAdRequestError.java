package com.monetization.ads.mediation.base;

import defpackage.aa4;
import defpackage.c9;

/* JADX INFO: loaded from: classes6.dex */
public final class MediatedAdRequestError {
    private final int a;
    private final String b;

    public MediatedAdRequestError(int i, String str) {
        this.a = i;
        this.b = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!MediatedAdRequestError.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        MediatedAdRequestError mediatedAdRequestError = (MediatedAdRequestError) obj;
        if (this.a != mediatedAdRequestError.a) {
            return false;
        }
        return aa4.e(this.b, mediatedAdRequestError.b);
    }

    public final int getCode() {
        return this.a;
    }

    public final String getDescription() {
        return this.b;
    }

    public int hashCode() {
        return this.b.hashCode() + (this.a * 31);
    }

    public String toString() {
        return c9.d(this.a, "AdRequestError (code: ", ", description: ", this.b, ")");
    }
}
