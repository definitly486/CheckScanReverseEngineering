package defpackage;

import java.io.Closeable;
import java.io.FileNotFoundException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class w93 implements Closeable {
    public static final ke4 b;
    public static final j46 c;

    static {
        ke4 ke4Var;
        try {
            Class.forName("java.nio.file.Files");
            ke4Var = new qn5();
        } catch (ClassNotFoundException unused) {
            ke4Var = new ke4();
        }
        b = ke4Var;
        String str = j46.c;
        String property = System.getProperty("java.io.tmpdir");
        property.getClass();
        c = j46.a.a(property, false);
        ClassLoader classLoader = o47.class.getClassLoader();
        classLoader.getClass();
        new o47(classLoader);
    }

    public abstract m93 E(j46 j46Var);

    public abstract s18 P(j46 j46Var, boolean z);

    public abstract v48 Q(j46 j46Var);

    public abstract s18 a(j46 j46Var);

    public abstract void b(j46 j46Var, j46 j46Var2);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public final void e(j46 j46Var) {
        fr frVar = new fr();
        while (j46Var != null && !n(j46Var)) {
            frVar.addFirst(j46Var);
            j46Var = j46Var.d();
        }
        Iterator<E> it = frVar.iterator();
        while (it.hasNext()) {
            f((j46) it.next());
        }
    }

    public abstract void f(j46 j46Var);

    public abstract void g(j46 j46Var);

    public final void m(j46 j46Var) {
        j46Var.getClass();
        g(j46Var);
    }

    public final boolean n(j46 j46Var) {
        j46Var.getClass();
        return v(j46Var) != null;
    }

    public abstract List<j46> o(j46 j46Var);

    public final s93 p(j46 j46Var) throws FileNotFoundException {
        j46Var.getClass();
        s93 s93VarV = v(j46Var);
        if (s93VarV != null) {
            return s93VarV;
        }
        v93.d(j46Var, "no such file: ");
        return null;
    }

    public abstract s93 v(j46 j46Var);

    public abstract m93 y(j46 j46Var);
}
