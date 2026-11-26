package defpackage;

import com.my.target.m1;
import java.util.Collections;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class y7a implements Runnable {
    public final /* synthetic */ m1.a b;
    public final /* synthetic */ String c;
    public final /* synthetic */ long d;

    public /* synthetic */ y7a(m1.a aVar, String str, long j) {
        this.b = aVar;
        this.c = str;
        this.d = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String strA = m1.a(this.c, Collections.EMPTY_MAP, true);
        if (strA != null) {
            this.b.a.a(strA, "", this.d, i7a.e);
        }
    }
}
