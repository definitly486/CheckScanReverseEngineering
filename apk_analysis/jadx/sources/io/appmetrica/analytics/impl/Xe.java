package io.appmetrica.analytics.impl;

import defpackage.aa4;

/* JADX INFO: loaded from: classes5.dex */
public final class Xe {
    public final String a;
    public final Te b;

    public Xe(String str, Te te) {
        this.a = str;
        this.b = te;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Xe)) {
            return false;
        }
        Xe xe = (Xe) obj;
        return aa4.e(this.a, xe.a) && aa4.e(this.b, xe.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "PluginModuleDescriptor(moduleName=" + this.a + ", detectionStrategy=" + this.b + ')';
    }
}
