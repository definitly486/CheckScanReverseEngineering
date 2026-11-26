package defpackage;

import com.bumptech.glide.Registry;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class md2<Transcode> {
    public final ArrayList a = new ArrayList();
    public final ArrayList b = new ArrayList();
    public wq3 c;
    public Object d;
    public int e;
    public int f;
    public Class<?> g;
    public od2.d h;
    public xz5 i;
    public Map<Class<?>, s19<?>> j;
    public Class<Transcode> k;
    public boolean l;
    public boolean m;
    public kf4 n;
    public jg6 o;
    public sn2 p;
    public boolean q;
    public boolean r;

    public final ArrayList a() {
        boolean z = this.m;
        ArrayList arrayList = this.b;
        if (!z) {
            this.m = true;
            arrayList.clear();
            ArrayList arrayListB = b();
            int size = arrayListB.size();
            for (int i = 0; i < size; i++) {
                nc5.a aVar = (nc5.a) arrayListB.get(i);
                kf4 kf4Var = aVar.a;
                List<kf4> list = aVar.b;
                if (!arrayList.contains(kf4Var)) {
                    arrayList.add(aVar.a);
                }
                for (int i2 = 0; i2 < list.size(); i2++) {
                    if (!arrayList.contains(list.get(i2))) {
                        arrayList.add(list.get(i2));
                    }
                }
            }
        }
        return arrayList;
    }

    public final ArrayList b() {
        boolean z = this.l;
        ArrayList arrayList = this.a;
        if (!z) {
            this.l = true;
            arrayList.clear();
            List listF = this.c.a().f(this.d);
            int size = listF.size();
            for (int i = 0; i < size; i++) {
                nc5.a aVarA = ((nc5) listF.get(i)).a(this.d, this.e, this.f, this.i);
                if (aVarA != null) {
                    arrayList.add(aVarA);
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*  JADX ERROR: JadxRuntimeException in pass: FinishTypeInference
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r1v16 gs4<?, ?, ?>
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.dex.visitors.typeinference.FinishTypeInference.lambda$visit$0(FinishTypeInference.java:27)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.typeinference.FinishTypeInference.visit(FinishTypeInference.java:22)
        */
    public final <Data> defpackage.gs4<Data, ?, Transcode> c(java.lang.Class<Data> r17) {
        /*
            Method dump skipped, instruction units count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.md2.c(java.lang.Class):gs4");
    }

    public final <X> vx2<X> d(X x) {
        vx2<X> vx2Var;
        hy2 hy2Var = this.c.a().b;
        Class<?> cls = x.getClass();
        synchronized (hy2Var) {
            for (hy2.a aVar : hy2Var.a) {
                if (aVar.a.isAssignableFrom(cls)) {
                    vx2Var = (vx2<X>) aVar.b;
                }
            }
            vx2Var = null;
        }
        if (vx2Var != null) {
            return vx2Var;
        }
        throw new Registry.NoSourceEncoderAvailableException(ln.d(x.getClass(), "Failed to find source encoder for data class: "));
    }

    public final <Z> s19<Z> e(Class<Z> cls) {
        s19<Z> s19Var = (s19) this.j.get(cls);
        if (s19Var == null) {
            for (Map.Entry<Class<?>, s19<?>> entry : this.j.entrySet()) {
                if (entry.getKey().isAssignableFrom(cls)) {
                    s19Var = (s19) entry.getValue();
                    break;
                }
            }
        }
        if (s19Var != null) {
            return s19Var;
        }
        if (!this.j.isEmpty() || !this.q) {
            return p59.b;
        }
        yq.c(cls, "Missing transformation for ", ". If you wish to ignore unknown resource types, use the optional transformation methods.");
        return null;
    }
}
