package defpackage;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* JADX INFO: loaded from: classes5.dex */
public final class p64 implements Externalizable {
    public long b;
    public int c;

    public p64(long j, int i) {
        this.b = j;
        this.c = i;
    }

    private final Object readResolve() {
        g64 g64Var = g64.d;
        return g64.a.a(this.c, this.b);
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        objectInput.getClass();
        this.b = objectInput.readLong();
        this.c = objectInput.readInt();
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.getClass();
        objectOutput.writeLong(this.b);
        objectOutput.writeInt(this.c);
    }

    public p64() {
        this(0L, 0);
    }
}
