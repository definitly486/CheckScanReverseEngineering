package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes5.dex */
public final class k53 extends j1 {
    public final a d = new a();

    public static final class a extends ThreadLocal<Random> {
        @Override // java.lang.ThreadLocal
        public final Random initialValue() {
            return new Random();
        }
    }

    @Override // defpackage.j1
    public final Random b() {
        Random random = this.d.get();
        random.getClass();
        return random;
    }
}
