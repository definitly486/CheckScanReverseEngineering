package defpackage;

import androidx.core.util.Pools;
import com.bumptech.glide.load.data.a;
import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class gs4<Data, ResourceType, Transcode> {
    public final Pools.Pool<List<Throwable>> a;
    public final List<? extends pd2<Data, ResourceType, Transcode>> b;
    public final String c;

    public gs4(Class<Data> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<pd2<Data, ResourceType, Transcode>> list, Pools.Pool<List<Throwable>> pool) {
        this.a = pool;
        if (list.isEmpty()) {
            fg.c("Must not be empty.");
            throw null;
        }
        this.b = list;
        this.c = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public final e47 a(int i, int i2, od2.b bVar, xz5 xz5Var, a aVar) {
        Pools.Pool<List<Throwable>> pool = this.a;
        List<Throwable> listAcquire = pool.acquire();
        r96.c(listAcquire, "Argument must not be null");
        List<Throwable> list = listAcquire;
        try {
            List<? extends pd2<Data, ResourceType, Transcode>> list2 = this.b;
            int size = list2.size();
            e47 e47VarA = null;
            for (int i3 = 0; i3 < size; i3++) {
                try {
                    e47VarA = list2.get(i3).a(i, i2, bVar, xz5Var, aVar);
                } catch (GlideException e) {
                    list.add(e);
                }
                if (e47VarA != null) {
                    break;
                }
            }
            if (e47VarA == null) {
                throw new GlideException(this.c, new ArrayList(list));
            }
            pool.release(list);
            return e47VarA;
        } catch (Throwable th) {
            pool.release(list);
            throw th;
        }
    }

    public final String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.b.toArray()) + '}';
    }
}
