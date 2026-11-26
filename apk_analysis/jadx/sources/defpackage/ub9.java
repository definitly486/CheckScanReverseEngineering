package defpackage;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* JADX INFO: loaded from: classes5.dex */
public final class ub9 implements Externalizable {
    public long b;
    public long c;

    public ub9(long j, long j2) {
        this.b = j;
        this.c = j2;
    }

    private final Object readResolve() {
        long j = this.b;
        long j2 = this.c;
        return (j == 0 && j2 == 0) ? tb9.d : new tb9(j, j2);
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        objectInput.getClass();
        this.b = objectInput.readLong();
        this.c = objectInput.readLong();
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.getClass();
        objectOutput.writeLong(this.b);
        objectOutput.writeLong(this.c);
    }

    public ub9() {
        this(0L, 0L);
    }
}
