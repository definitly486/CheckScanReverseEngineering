package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes5.dex */
public abstract class j1 extends dx6 {
    @Override // defpackage.dx6
    public final int a(int i) {
        return b().nextInt(i);
    }

    public abstract Random b();

    public final int d() {
        return b().nextInt();
    }
}
