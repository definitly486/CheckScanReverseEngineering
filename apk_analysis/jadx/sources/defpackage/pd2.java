package defpackage;

import android.util.Log;
import androidx.core.util.Pools;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.data.a;
import com.bumptech.glide.load.engine.GlideException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class pd2<DataType, ResourceType, Transcode> {
    public final Class<DataType> a;
    public final List<? extends i47<DataType, ResourceType>> b;
    public final v47<ResourceType, Transcode> c;
    public final Pools.Pool<List<Throwable>> d;
    public final String e;

    public pd2(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends i47<DataType, ResourceType>> list, v47<ResourceType, Transcode> v47Var, Pools.Pool<List<Throwable>> pool) {
        this.a = cls;
        this.b = list;
        this.c = v47Var;
        this.d = pool;
        this.e = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
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
    public final e47 a(int i, int i2, od2.b bVar, xz5 xz5Var, a aVar) {
        e47 e47VarB;
        s19 s19Var;
        rx2 rx2VarC;
        l47 l47Var;
        e47 e47Var;
        boolean z;
        kf4 p82Var;
        Pools.Pool<List<Throwable>> pool = this.d;
        List<Throwable> listAcquire = pool.acquire();
        r96.c(listAcquire, "Argument must not be null");
        List<Throwable> list = listAcquire;
        try {
            e47<ResourceType> e47VarB2 = b(aVar, i, i2, xz5Var, list);
            pool.release(list);
            od2 od2Var = od2.this;
            y82 y82Var = bVar.a;
            md2<R> md2Var = od2Var.b;
            Class<?> cls = e47VarB2.get().getClass();
            if (y82Var != y82.RESOURCE_DISK_CACHE) {
                s19 s19VarE = md2Var.e((Class<Z>) cls);
                s19Var = s19VarE;
                e47VarB = s19VarE.b(od2Var.i, e47VarB2, od2Var.m, od2Var.n);
            } else {
                e47VarB = e47VarB2;
                s19Var = null;
            }
            if (!e47VarB2.equals(e47VarB)) {
                e47VarB2.recycle();
            }
            if (md2Var.c.a().d.a(e47VarB.a()) != null) {
                l47 l47VarA = md2Var.c.a().d.a(e47VarB.a());
                if (l47VarA == null) {
                    throw new Registry.NoResultEncoderAvailableException(e47VarB.a());
                }
                rx2VarC = l47VarA.c(od2Var.p);
                l47Var = l47VarA;
            } else {
                rx2VarC = rx2.NONE;
                l47Var = null;
            }
            kf4 kf4Var = od2Var.z;
            ArrayList arrayListB = md2Var.b();
            int size = arrayListB.size();
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    e47Var = null;
                    z = false;
                    break;
                }
                e47Var = null;
                if (((nc5.a) arrayListB.get(i3)).a.equals(kf4Var)) {
                    z = true;
                    break;
                }
                i3++;
            }
            Object obj = e47VarB;
            if (od2Var.o.d(!z, y82Var, rx2VarC)) {
                if (l47Var == null) {
                    throw new Registry.NoResultEncoderAvailableException(e47VarB.get().getClass());
                }
                int i4 = od2.a.c[rx2VarC.ordinal()];
                if (i4 == 1) {
                    p82Var = new p82(od2Var.z, od2Var.j);
                } else {
                    if (i4 != 2) {
                        r01.e(rx2VarC, "Unknown strategy: ");
                        return e47Var;
                    }
                    p82Var = new h47(md2Var.c.a, od2Var.z, od2Var.j, od2Var.m, od2Var.n, s19Var, cls, od2Var.p);
                }
                su4<Z> su4Var = (su4) su4.f.acquire();
                su4Var.e = false;
                su4Var.d = 1;
                su4Var.c = e47VarB;
                od2.c<?> cVar = od2Var.g;
                cVar.a = p82Var;
                cVar.b = l47Var;
                cVar.c = su4Var;
                obj = su4Var;
            }
            return this.c.a(obj, xz5Var);
        } catch (Throwable th) {
            pool.release(list);
            throw th;
        }
    }

    public final e47<ResourceType> b(a<DataType> aVar, int i, int i2, xz5 xz5Var, List<Throwable> list) throws GlideException {
        List<? extends i47<DataType, ResourceType>> list2 = this.b;
        int size = list2.size();
        e47<ResourceType> e47VarA = null;
        for (int i3 = 0; i3 < size; i3++) {
            i47<DataType, ResourceType> i47Var = list2.get(i3);
            try {
                if (i47Var.b(aVar.a(), xz5Var)) {
                    e47VarA = i47Var.a(aVar.a(), i, i2, xz5Var);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e) {
                if (Log.isLoggable("DecodePath", 2)) {
                    Log.v("DecodePath", "Failed to decode data for " + i47Var, e);
                }
                list.add(e);
            }
            if (e47VarA != null) {
                break;
            }
        }
        if (e47VarA != null) {
            return e47VarA;
        }
        throw new GlideException(this.e, new ArrayList(list));
    }

    public final String toString() {
        return "DecodePath{ dataClass=" + this.a + ", decoders=" + this.b + ", transcoder=" + this.c + '}';
    }
}
