package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class jlb implements Runnable {
    public final dlb b;
    public final int c;
    public final Throwable d;
    public final byte[] e;
    public final String f;
    public final Map g;

    public /* synthetic */ jlb(String str, dlb dlbVar, int i, IOException iOException, byte[] bArr, Map map) {
        Preconditions.checkNotNull(dlbVar);
        this.b = dlbVar;
        this.c = i;
        this.d = iOException;
        this.e = bArr;
        this.f = str;
        this.g = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.a(this.f, this.c, this.d, this.e, this.g);
    }
}
