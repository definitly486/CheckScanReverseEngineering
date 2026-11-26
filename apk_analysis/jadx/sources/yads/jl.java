package yads;

import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class jl extends ll {
    public final long b;
    public final ArrayList c;
    public final ArrayList d;

    public jl(int i, long j) {
        super(i);
        this.b = j;
        this.c = new ArrayList();
        this.d = new ArrayList();
    }

    public final jl b(int i) {
        int size = this.d.size();
        for (int i2 = 0; i2 < size; i2++) {
            jl jlVar = (jl) this.d.get(i2);
            if (jlVar.a == i) {
                return jlVar;
            }
        }
        return null;
    }

    public final kl c(int i) {
        int size = this.c.size();
        for (int i2 = 0; i2 < size; i2++) {
            kl klVar = (kl) this.c.get(i2);
            if (klVar.a == i) {
                return klVar;
            }
        }
        return null;
    }

    @Override // yads.ll
    public final String toString() {
        return ll.a(this.a) + " leaves: " + Arrays.toString(this.c.toArray()) + " containers: " + Arrays.toString(this.d.toArray());
    }
}
