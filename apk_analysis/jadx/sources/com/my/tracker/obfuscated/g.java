package com.my.tracker.obfuscated;

import defpackage.rg;

/* JADX INFO: loaded from: classes4.dex */
public final class g {
    public final String a;
    public final int b;

    public g(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AppSetIdData{id='");
        sb.append(this.a);
        sb.append("', scope=");
        return rg.h(sb, this.b, '}');
    }
}
