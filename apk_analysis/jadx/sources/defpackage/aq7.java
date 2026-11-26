package defpackage;

import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class aq7 implements Externalizable {
    public Map<?, ?> b = mx2.b;

    private final Object readResolve() {
        return this.b;
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) throws IOException {
        objectInput.getClass();
        byte b = objectInput.readByte();
        if (b != 0) {
            throw new InvalidObjectException(jh.b(b, "Unsupported flags value: "));
        }
        int i = objectInput.readInt();
        if (i < 0) {
            throw new InvalidObjectException(qz0.d("Illegal size value: ", i, '.'));
        }
        uz4 uz4Var = new uz4(i);
        for (int i2 = 0; i2 < i; i2++) {
            uz4Var.put(objectInput.readObject(), objectInput.readObject());
        }
        this.b = uz4Var.b();
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.getClass();
        objectOutput.writeByte(0);
        objectOutput.writeInt(this.b.size());
        for (Map.Entry<?, ?> entry : this.b.entrySet()) {
            objectOutput.writeObject(entry.getKey());
            objectOutput.writeObject(entry.getValue());
        }
    }
}
