package yads;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class gd4 extends j {
    public transient ut5 g;

    public gd4(Map map, dd4 dd4Var) {
        super(map);
        this.g = dd4Var;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.g = (ut5) objectInputStream.readObject();
        Map map = (Map) objectInputStream.readObject();
        this.e = map;
        this.f = 0;
        for (Collection collection : map.values()) {
            if (collection.isEmpty()) {
                defpackage.mi2.b();
                return;
            }
            this.f = collection.size() + this.f;
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.g);
        objectOutputStream.writeObject(this.e);
    }
}
