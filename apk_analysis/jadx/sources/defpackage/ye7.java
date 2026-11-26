package defpackage;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class ye7 implements ws6 {
    public final ws6<Context> a;

    public ye7(ws6 ws6Var) {
        this.a = ws6Var;
    }

    @Override // defpackage.ws6
    public final Object get() {
        return new xe7(this.a.get(), "com.google.android.datatransport.events", Integer.valueOf(xe7.e).intValue());
    }
}
