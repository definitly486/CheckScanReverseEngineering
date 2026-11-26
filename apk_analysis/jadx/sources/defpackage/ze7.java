package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import org.koin.core.error.MissingPropertyException;
import org.koin.core.error.NoDefinitionFoundException;

/* JADX INFO: loaded from: classes5.dex */
public final class ze7 {
    public final kv6 a;
    public final String b;
    public final boolean c;
    public final w39 d;
    public final hg4 e;
    public final ArrayList<ze7> f;
    public volatile ThreadLocal<fr<i36>> g;

    public ze7(kv6 kv6Var, String str, w39 w39Var, hg4 hg4Var, int i) {
        boolean z = (i & 4) == 0;
        w39Var = (i & 8) != 0 ? null : w39Var;
        kv6Var.getClass();
        this.a = kv6Var;
        this.b = str;
        this.c = z;
        this.d = w39Var;
        this.e = hg4Var;
        this.f = new ArrayList<>();
        new LinkedHashSet();
    }

    public final void a(fr<i36> frVar) {
        frVar.p();
        if (frVar.isEmpty()) {
            b().remove();
        }
    }

    public final ThreadLocal<fr<i36>> b() {
        ThreadLocal<fr<i36>> threadLocal;
        ThreadLocal<fr<i36>> threadLocal2 = this.g;
        if (threadLocal2 != null) {
            return threadLocal2;
        }
        synchronized (this) {
            threadLocal = this.g;
            if (threadLocal == null) {
                threadLocal = new ThreadLocal<>();
                this.g = threadLocal;
            }
        }
        return threadLocal;
    }

    public final <T> T c(String str) throws MissingPropertyException {
        fs6 fs6Var = this.e.e;
        fs6Var.getClass();
        T t = (T) fs6Var.b.get(str);
        if (t == null) {
            t = null;
        }
        if (t != null) {
            return t;
        }
        throw new MissingPropertyException(me0.c("Property '", str, "' not found"));
    }

    public final fr<i36> d(i36 i36Var) {
        i36Var.getClass();
        fr<i36> frVar = b().get();
        if (frVar == null) {
            frVar = new fr<>();
            b().set(frVar);
        }
        frVar.addFirst(i36Var);
        return frVar;
    }

    public final Object e(zk1 zk1Var, i36 i36Var, kv6 kv6Var) {
        lx2 lx2Var = this.e.a;
        uo4 uo4Var = uo4.DEBUG;
        if (((uo4) lx2Var.a).compareTo(uo4Var) > 0) {
            return g(zk1Var, i36Var, kv6Var);
        }
        if (kv6Var != null) {
            StringBuilder sb = new StringBuilder(" with qualifier '");
            sb.append(kv6Var);
            sb.append('\'');
        }
        if (!this.c) {
            StringBuilder sb2 = new StringBuilder(" - scope:'");
            sb2.append(this.b);
            sb2.append('\'');
        }
        oe4.a(zk1Var);
        lx2Var.getClass();
        uo4Var.getClass();
        long jB = dd5.b();
        Object objG = g(zk1Var, i36Var, kv6Var);
        long jA = qv8.a.C0320a.a(jB);
        oe4.a(zk1Var);
        wt2.a aVar = wt2.c;
        wt2.k(jA, au2.MICROSECONDS);
        lx2Var.getClass();
        return objG;
    }

    /* JADX WARN: Code duplicated, block: B:109:0x01ab A[EDGE_INSN: B:109:0x01ab->B:110:0x01ac BREAK  A[LOOP:3: B:105:0x0178->B:154:?], PHI: r1
      0x01ab: PHI (r1v3 java.lang.Object) = (r1v2 java.lang.Object), (r1v15 java.lang.Object), (r1v19 java.lang.Object), (r1v23 java.lang.Object) binds: [B:9:0x001f, B:24:0x0049, B:103:0x0170, B:153:0x01ab] A[DONT_GENERATE, DONT_INLINE]] */
    public final <T> T f(z37 z37Var) throws NoDefinitionFoundException {
        ThreadLocal<fr<i36>> threadLocal;
        fr<i36> frVar;
        i36 i36VarD;
        d64<?> d64VarA;
        Object objC;
        ThreadLocal<fr<i36>> threadLocal2;
        fr<i36> frVar2;
        i36 i36VarD2;
        w39 w39Var;
        f12 f12Var = this.e.b;
        f12Var.getClass();
        i36 i36Var = z37Var.e;
        T t = null;
        Object objB = (i36Var == null || i36Var.a.isEmpty()) ? null : z37Var.e.b(z37Var.c);
        if (objB != null) {
            t = (T) objB;
            break;
        }
        objB = (z37Var.d != null || (threadLocal = this.g) == null || (frVar = threadLocal.get()) == null || frVar.isEmpty() || (i36VarD = frVar.d()) == null) ? null : i36VarD.b(z37Var.c);
        if (objB != null) {
            t = (T) objB;
            break;
        }
        hg4 hg4Var = f12Var.a;
        f64 f64Var = hg4Var.d;
        zk1 zk1Var = z37Var.c;
        kv6 kv6Var = z37Var.d;
        d64<?> d64VarA2 = f64Var.a(zk1Var, kv6Var, this.a);
        if (d64VarA2 == null) {
            if (this.c || (w39Var = this.d) == null) {
                d64VarA2 = null;
            } else {
                z37Var.f = w39Var;
                d64VarA2 = hg4Var.d.a(z37Var.c, kv6Var, w39Var);
            }
        }
        objB = d64VarA2 != null ? d64VarA2.c(z37Var) : null;
        if (objB == null) {
            if (!this.c && z37Var.d == null) {
                z37Var.c.e(null);
            }
            ArrayList<ze7> arrayList = this.f;
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            fr frVar3 = new fr(new z67(arrayList));
            while (!frVar3.isEmpty()) {
                ze7 ze7Var = (ze7) frVar3.removeLast();
                if (linkedHashSet.add(ze7Var)) {
                    Iterator<ze7> it = ze7Var.f.iterator();
                    it.getClass();
                    while (it.hasNext()) {
                        ze7 next = it.next();
                        next.getClass();
                        ze7 ze7Var2 = next;
                        if (!linkedHashSet.contains(ze7Var2)) {
                            frVar3.addLast(ze7Var2);
                        }
                    }
                }
            }
            if (!linkedHashSet.isEmpty()) {
                Iterator it2 = linkedHashSet.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        objB = null;
                        break;
                    }
                    ze7 ze7Var3 = (ze7) it2.next();
                    hg4 hg4Var2 = f12Var.a;
                    w39 w39Var2 = ze7Var3.d;
                    if (w39Var2 == null || (d64VarA = hg4Var2.d.a(z37Var.c, z37Var.d, w39Var2)) == null) {
                        d64VarA = hg4Var2.d.a(z37Var.c, z37Var.d, ze7Var3.a);
                    }
                    d64<?> d64Var = d64VarA;
                    if (d64Var == null) {
                        objC = (z37Var.d != null || (threadLocal2 = ze7Var3.g) == null || (frVar2 = threadLocal2.get()) == null || frVar2.isEmpty() || (i36VarD2 = frVar2.d()) == null) ? null : i36VarD2.b(z37Var.c);
                        if (objC != null) {
                        }
                    } else {
                        if (ze7Var3.c && !(d64Var instanceof m08)) {
                            objB = d64Var.c(z37Var);
                            break;
                        }
                        lx2 lx2Var = z37Var.a;
                        zk1 zk1Var2 = z37Var.c;
                        kv6 kv6Var2 = z37Var.d;
                        i36 i36Var2 = z37Var.e;
                        z37 z37Var2 = new z37(lx2Var, ze7Var3, zk1Var2, kv6Var2, i36Var2);
                        w39 w39Var3 = ze7Var3.d;
                        z37Var2.f = w39Var3;
                        if (w39Var3 != null && !ze7Var3.c) {
                            z37Var2.f = w39Var3;
                        }
                        fr<i36> frVarD = i36Var2 != null ? ze7Var3.d(i36Var2) : null;
                        objC = d64Var.c(z37Var2);
                        if (frVarD != null) {
                            ze7Var3.a(frVarD);
                        }
                    }
                    objB = objC;
                    break;
                }
            }
            objB = null;
            break;
        }
        if (objB != null) {
            t = (T) objB;
            break;
        }
        for (a47 a47Var : f12Var.b) {
            lx2 lx2Var2 = z37Var.a;
            String str = "|- ['" + a47Var.getName() + "'] ?";
            lx2Var2.getClass();
            lx2Var2.a(uo4.DEBUG, str);
            objB = a47Var.a();
            if (objB != null) {
                t = (T) objB;
                break;
            }
        }
        if (t != null) {
            return t;
        }
        kv6 kv6Var3 = z37Var.d;
        String string = "";
        String str2 = kv6Var3 != null ? " and qualifier '" + kv6Var3 + '\'' : "";
        String str3 = z37Var.b != this ? "scope '" + this + "' (resolution context scope: '" + z37Var.b + "')" : "scope '" + this + '\'';
        ArrayList<ze7> arrayList2 = this.f;
        ArrayList arrayList3 = new ArrayList(kn1.q(arrayList2, 10));
        Iterator<ze7> it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            arrayList3.add(it3.next().b);
        }
        if (!arrayList3.isEmpty()) {
            StringBuilder sb = new StringBuilder(" Searched scopes: ['");
            sb.append(this.b);
            sb.append("'] -> ");
            ArrayList arrayList4 = new ArrayList(kn1.q(arrayList3, 10));
            Iterator it4 = arrayList3.iterator();
            while (it4.hasNext()) {
                arrayList4.add("['" + ((String) it4.next()) + "']");
            }
            sb.append(arrayList4);
            string = sb.toString();
        }
        String strA = oe4.a(z37Var.c);
        throw new NoDefinitionFoundException("No definition found for type '" + strA + '\'' + str2 + " on " + str3 + '.' + string + '.' + (ta8.b0('.', strA, strA).equals("SavedStateHandle") ? " SavedStateHandle is provided by the ViewModel's CreationExtras during creation, not by a module definition — resolve the ViewModel via koinViewModel()/koinNavViewModel() with a proper owner and inject SavedStateHandle in its constructor (do not resolve it lazily or outside construction)." : " Check or add definition for type '" + strA + '\'' + str2 + " in scope '" + this.a + "'."));
    }

    public final Object g(zk1 zk1Var, i36 i36Var, kv6 kv6Var) {
        hg4 hg4Var = this.e;
        z37 z37Var = new z37(hg4Var.a, this, zk1Var, kv6Var, i36Var);
        if (i36Var == null) {
            return f(z37Var);
        }
        lx2 lx2Var = hg4Var.a;
        uo4 uo4Var = uo4.DEBUG;
        if (((uo4) lx2Var.a).compareTo(uo4Var) <= 0) {
            i36Var.toString();
            uo4Var.getClass();
        }
        fr<i36> frVarD = d(i36Var);
        try {
            Object objF = f(z37Var);
            lx2Var.getClass();
            return objF;
        } finally {
            lx2Var.getClass();
            lx2Var.a(uo4.DEBUG, "| << parameters");
            a(frVarD);
        }
    }

    public final String toString() {
        return me0.d(new StringBuilder("['"), this.b, "']");
    }
}
