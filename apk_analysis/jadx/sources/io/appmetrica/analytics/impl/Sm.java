package io.appmetrica.analytics.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class Sm {
    public final int a;

    public Sm(int i) {
        this.a = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Sm) && this.a == ((Sm) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return defpackage.rg.h(new StringBuilder("StartupUpdateConfig(intervalSeconds="), this.a, ')');
    }
}
