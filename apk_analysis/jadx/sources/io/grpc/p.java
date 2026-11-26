package io.grpc;

import defpackage.kd8;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;

/* JADX INFO: loaded from: classes5.dex */
public final class p {

    /* JADX INFO: Add missing generic type declarations: [T] */
    public class a<T> implements Comparator<T> {
        public final /* synthetic */ b b;

        public a(b bVar) {
            this.b = bVar;
        }

        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            b bVar = this.b;
            int iB = bVar.b(t) - bVar.b(t2);
            return iB != 0 ? iB : t.getClass().getName().compareTo(t2.getClass().getName());
        }
    }

    public interface b<T> {
        boolean a(T t);

        int b(T t);
    }

    public static <T> List<T> a(Class<T> cls, Iterator<T> it, kd8<Iterable<Class<?>>> kd8Var, b<T> bVar) {
        if (!(it instanceof ListIterator)) {
            try {
                Class.forName("android.app.Application", false, cls.getClassLoader());
                Iterable<Class<?>> iterable = kd8Var.get();
                ArrayList arrayList = new ArrayList();
                for (Class<?> cls2 : iterable) {
                    Object objNewInstance = null;
                    try {
                        objNewInstance = cls2.asSubclass(cls).getConstructor(null).newInstance(null);
                    } catch (ClassCastException unused) {
                    } catch (Throwable th) {
                        throw new ServiceConfigurationError(String.format("Provider %s could not be instantiated %s", cls2.getName(), th), th);
                    }
                    if (objNewInstance != null) {
                        arrayList.add(objNewInstance);
                    }
                }
                it = arrayList.iterator();
            } catch (Exception unused2) {
                if (!it.hasNext()) {
                    it = ServiceLoader.load(cls).iterator();
                }
            }
        }
        ArrayList arrayList2 = new ArrayList();
        while (it.hasNext()) {
            T next = it.next();
            if (bVar.a(next)) {
                arrayList2.add(next);
            }
        }
        Collections.sort(arrayList2, Collections.reverseOrder(new a(bVar)));
        return Collections.unmodifiableList(arrayList2);
    }
}
