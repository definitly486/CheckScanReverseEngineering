package defpackage;

import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class zp7 implements Externalizable {
    public Collection<?> b;
    public final int c;

    public zp7(Collection<?> collection, int i) {
        this.b = collection;
        this.c = i;
    }

    private final Object readResolve() {
        return this.b;
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) throws IOException {
        Collection<?> collectionD;
        objectInput.getClass();
        byte b = objectInput.readByte();
        int i = b & 1;
        if ((b & (-2)) != 0) {
            throw new InvalidObjectException(qz0.d("Unsupported flags value: ", b, '.'));
        }
        int i2 = objectInput.readInt();
        if (i2 < 0) {
            throw new InvalidObjectException(qz0.d("Illegal size value: ", i2, '.'));
        }
        int i3 = 0;
        if (i == 0) {
            ar4 ar4Var = new ar4(i2);
            while (i3 < i2) {
                ar4Var.add(objectInput.readObject());
                i3++;
            }
            collectionD = u96.d(ar4Var);
        } else {
            if (i != 1) {
                throw new InvalidObjectException(qz0.d("Unsupported collection type tag: ", i, '.'));
            }
            ir7 ir7Var = new ir7(i2);
            while (i3 < i2) {
                ir7Var.add(objectInput.readObject());
                i3++;
            }
            collectionD = l1.d(ir7Var);
        }
        this.b = collectionD;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.getClass();
        objectOutput.writeByte(this.c);
        objectOutput.writeInt(this.b.size());
        Iterator<?> it = this.b.iterator();
        while (it.hasNext()) {
            objectOutput.writeObject(it.next());
        }
    }

    public zp7() {
        this(kx2.b, 0);
    }
}
