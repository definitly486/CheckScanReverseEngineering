package defpackage;

import com.google.common.collect.a;
import com.google.common.collect.b0;
import com.google.common.collect.c;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes4.dex */
public final class lr<K, V> extends a<K, V> {
    public lr() {
        super(ip1.b(12));
        cn1.b(3, "expectedValuesPerKey");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i = objectInputStream.readInt();
        n(ip1.a());
        for (int i2 = 0; i2 < i; i2++) {
            Collection collection = get(objectInputStream.readObject());
            int i3 = objectInputStream.readInt();
            for (int i4 = 0; i4 < i3; i4++) {
                ((c.j) collection).add(objectInputStream.readObject());
            }
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        b0.a(this, objectOutputStream);
    }

    @Override // com.google.common.collect.c
    public final Collection m() {
        return new ArrayList(3);
    }
}
