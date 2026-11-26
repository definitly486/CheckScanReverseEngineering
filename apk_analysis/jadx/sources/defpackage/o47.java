package defpackage;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.JarURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class o47 extends w93 {
    public static final j46 g;
    public final ClassLoader d;
    public final w93 e;
    public final fh8 f;

    public static final class a {
        public static boolean a(j46 j46Var) {
            return !ra8.u(j46Var.c(), ".class", true);
        }
    }

    static {
        String str = j46.c;
        g = j46.a.a("/", false);
    }

    public o47(ClassLoader classLoader) {
        ke4 ke4Var = w93.b;
        ke4Var.getClass();
        this.d = classLoader;
        this.e = ke4Var;
        this.f = new fh8(new rr1(this, 3));
    }

    @Override // defpackage.w93
    public final m93 E(j46 j46Var) throws IOException {
        throw new IOException("resources are not writable");
    }

    @Override // defpackage.w93
    public final s18 P(j46 j46Var, boolean z) throws IOException {
        j46Var.getClass();
        throw new IOException(this + " is read-only");
    }

    @Override // defpackage.w93
    public final v48 Q(j46 j46Var) throws IOException {
        j46Var.getClass();
        if (!a.a(j46Var)) {
            v93.d(j46Var, "file not found: ");
            return null;
        }
        j46 j46Var2 = g;
        j46Var2.getClass();
        URL resource = this.d.getResource(f.a(j46Var2, j46Var, false).e(j46Var2).b.x());
        if (resource == null) {
            v93.d(j46Var, "file not found: ");
            return null;
        }
        URLConnection uRLConnectionOpenConnection = resource.openConnection();
        if (uRLConnectionOpenConnection instanceof JarURLConnection) {
            ((JarURLConnection) uRLConnectionOpenConnection).setUseCaches(false);
        }
        InputStream inputStream = uRLConnectionOpenConnection.getInputStream();
        inputStream.getClass();
        return vp3.g(inputStream);
    }

    @Override // defpackage.w93
    public final s18 a(j46 j46Var) throws IOException {
        throw new IOException(this + " is read-only");
    }

    @Override // defpackage.w93
    public final void b(j46 j46Var, j46 j46Var2) throws IOException {
        j46Var2.getClass();
        throw new IOException(this + " is read-only");
    }

    @Override // defpackage.w93
    public final void f(j46 j46Var) throws IOException {
        j46Var.getClass();
        throw new IOException(this + " is read-only");
    }

    @Override // defpackage.w93
    public final void g(j46 j46Var) throws IOException {
        j46Var.getClass();
        throw new IOException(this + " is read-only");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.w93
    public final List<j46> o(j46 j46Var) throws FileNotFoundException {
        j46Var.getClass();
        j46 j46Var2 = g;
        j46Var2.getClass();
        String strX = f.a(j46Var2, j46Var, true).e(j46Var2).b.x();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        boolean z = false;
        for (b36 b36Var : (List) this.f.getValue()) {
            w93 w93Var = (w93) b36Var.b;
            j46 j46Var3 = (j46) b36Var.c;
            try {
                List<j46> listO = w93Var.o(j46Var3.f(strX));
                ArrayList<j46> arrayList = new ArrayList();
                for (Object obj : listO) {
                    if (a.a((j46) obj)) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
                for (j46 j46Var4 : arrayList) {
                    j46Var4.getClass();
                    String strReplace = ta8.T(j46Var4.b.x(), j46Var3.b.x()).replace('\\', '/');
                    strReplace.getClass();
                    arrayList2.add(j46Var2.f(strReplace));
                }
                nn1.s(arrayList2, linkedHashSet);
                z = true;
            } catch (IOException unused) {
            }
        }
        if (z) {
            return qn1.t0(linkedHashSet);
        }
        v93.d(j46Var, "file not found: ");
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.w93
    public final s93 v(j46 j46Var) {
        j46Var.getClass();
        if (!a.a(j46Var)) {
            return null;
        }
        j46 j46Var2 = g;
        j46Var2.getClass();
        String strX = f.a(j46Var2, j46Var, true).e(j46Var2).b.x();
        for (b36 b36Var : (List) this.f.getValue()) {
            s93 s93VarV = ((w93) b36Var.b).v(((j46) b36Var.c).f(strX));
            if (s93VarV != null) {
                return s93VarV;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.w93
    public final m93 y(j46 j46Var) throws FileNotFoundException {
        j46Var.getClass();
        if (!a.a(j46Var)) {
            v93.d(j46Var, "file not found: ");
            return null;
        }
        j46 j46Var2 = g;
        j46Var2.getClass();
        String strX = f.a(j46Var2, j46Var, true).e(j46Var2).b.x();
        Iterator it = ((List) this.f.getValue()).iterator();
        while (it.hasNext()) {
            b36 b36Var = (b36) it.next();
            try {
                return ((w93) b36Var.b).y(((j46) b36Var.c).f(strX));
            } catch (FileNotFoundException unused) {
            }
        }
        v93.d(j46Var, "file not found: ");
        return null;
    }
}
