package defpackage;

import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes2.dex */
public final class mo2 implements jo2 {
    @Override // defpackage.jo2
    public final void a(f18.a aVar) {
        ((ThreadPoolExecutor) po2.a.getValue()).execute(new jj2(aVar, 1));
    }
}
