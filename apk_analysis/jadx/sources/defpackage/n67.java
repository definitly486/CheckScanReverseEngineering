package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes5.dex */
public final class n67 {
    public final ConcurrentHashMap<Method, Object> a = new ConcurrentHashMap<>();
    public final okhttp3.a.InterfaceC0310a b;
    public final fz3 c;
    public final List<i02.a> d;
    public final List<gy0.a> e;
    public final Executor f;

    public class a implements InvocationHandler {
        public final Object[] a = new Object[0];
        public final /* synthetic */ Class b;

        public a(Class cls) {
            this.b = cls;
        }

        /* JADX WARN: Code duplicated, block: B:49:0x0059 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:54:0x0065 A[SYNTHETIC] */
        @Override // java.lang.reflect.InvocationHandler
        public final Object invoke(Object obj, Method method, Object[] objArr) {
            uq7 uq7VarB;
            Object obj2;
            Class<?> cls = this.b;
            if (method.getDeclaringClass() == Object.class) {
                return method.invoke(this, objArr);
            }
            if (objArr == null) {
                objArr = this.a;
            }
            w07 w07Var = a96.b;
            if (w07Var.c(method)) {
                return w07Var.b(method, cls, obj, objArr);
            }
            n67 n67Var = n67.this;
            while (true) {
                Object objPutIfAbsent = n67Var.a.get(method);
                if (!(objPutIfAbsent instanceof uq7)) {
                    if (objPutIfAbsent != null) {
                        synchronized (objPutIfAbsent) {
                            obj2 = n67Var.a.get(method);
                            if (obj2 == null) {
                                uq7VarB = (uq7) obj2;
                                break;
                            }
                        }
                    } else {
                        Object obj3 = new Object();
                        synchronized (obj3) {
                            try {
                                objPutIfAbsent = n67Var.a.putIfAbsent(method, obj3);
                                if (objPutIfAbsent != null) {
                                    synchronized (objPutIfAbsent) {
                                        try {
                                            obj2 = n67Var.a.get(method);
                                            if (obj2 == null) {
                                            }
                                        } catch (Throwable th) {
                                            throw th;
                                        }
                                    }
                                    uq7VarB = (uq7) obj2;
                                    break;
                                }
                                try {
                                    uq7VarB = uq7.b(n67Var, cls, method);
                                    n67Var.a.put(method, uq7VarB);
                                    break;
                                } catch (Throwable th2) {
                                    n67Var.a.remove(method);
                                    throw th2;
                                }
                            } catch (Throwable th3) {
                                throw th3;
                            }
                        }
                    }
                } else {
                    uq7VarB = (uq7) objPutIfAbsent;
                    break;
                }
            }
            return uq7VarB.a(obj, objArr);
        }
    }

    public static final class b {
        public okhttp3.a.InterfaceC0310a a;
        public fz3 b;
        public final ArrayList c = new ArrayList();
        public final ArrayList d = new ArrayList();

        public final void a(i02.a aVar) {
            Objects.requireNonNull(aVar, "factory == null");
            this.c.add(aVar);
        }

        public final void b(String str) {
            fz3.a aVar = new fz3.a();
            aVar.c(null, str);
            fz3 fz3VarA = aVar.a();
            ArrayList arrayList = fz3VarA.f;
            if ("".equals(arrayList.get(arrayList.size() - 1))) {
                this.b = fz3VarA;
            } else {
                r01.e(fz3VarA, "baseUrl must end in /: ");
            }
        }

        public final n67 c() {
            if (this.b == null) {
                ah.f("Base URL required.");
                return null;
            }
            okhttp3.a.InterfaceC0310a okHttpClient = this.a;
            if (okHttpClient == null) {
                okHttpClient = new OkHttpClient();
            }
            okhttp3.a.InterfaceC0310a interfaceC0310a = okHttpClient;
            vi viVar = a96.a;
            dv0 dv0Var = a96.c;
            ArrayList arrayList = new ArrayList(this.d);
            List<? extends gy0.a> listA = dv0Var.a(viVar);
            arrayList.addAll(listA);
            List<? extends i02.a> listB = dv0Var.b();
            int size = listB.size();
            ArrayList arrayList2 = this.c;
            ArrayList arrayList3 = new ArrayList(arrayList2.size() + 1 + size);
            arrayList3.add(new cv0());
            arrayList3.addAll(arrayList2);
            arrayList3.addAll(listB);
            fz3 fz3Var = this.b;
            List listUnmodifiableList = Collections.unmodifiableList(arrayList3);
            List listUnmodifiableList2 = Collections.unmodifiableList(arrayList);
            listA.size();
            return new n67(interfaceC0310a, fz3Var, listUnmodifiableList, listUnmodifiableList2, viVar);
        }
    }

    public n67(okhttp3.a.InterfaceC0310a interfaceC0310a, fz3 fz3Var, List list, List list2, Executor executor) {
        this.b = interfaceC0310a;
        this.c = fz3Var;
        this.d = list;
        this.e = list2;
        this.f = executor;
    }

    public final gy0<?, ?> a(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "returnType == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        List<gy0.a> list = this.e;
        int iIndexOf = list.indexOf(null) + 1;
        int size = list.size();
        for (int i = iIndexOf; i < size; i++) {
            gy0<?, ?> gy0VarA = list.get(i).a(type, annotationArr);
            if (gy0VarA != null) {
                return gy0VarA;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate call adapter for ");
        sb.append(type);
        sb.append(".\n  Tried:");
        int size2 = list.size();
        while (iIndexOf < size2) {
            sb.append("\n   * ");
            sb.append(list.get(iIndexOf).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public final <T> T b(Class<T> cls) {
        if (!cls.isInterface()) {
            fg.c("API declarations must be interfaces.");
            return null;
        }
        ArrayDeque arrayDeque = new ArrayDeque(1);
        arrayDeque.add(cls);
        while (!arrayDeque.isEmpty()) {
            Class<T> cls2 = (Class) arrayDeque.removeFirst();
            if (cls2.getTypeParameters().length != 0) {
                StringBuilder sb = new StringBuilder("Type parameters are unsupported on ");
                sb.append(cls2.getName());
                if (cls2 != cls) {
                    sb.append(" which is an interface of ");
                    sb.append(cls.getName());
                }
                throw new IllegalArgumentException(sb.toString());
            }
            Collections.addAll(arrayDeque, cls2.getInterfaces());
        }
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new a(cls));
    }

    public final <T> i02<T, g37> c(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr2, "methodAnnotations == null");
        List<i02.a> list = this.d;
        int iIndexOf = list.indexOf(null) + 1;
        int size = list.size();
        for (int i = iIndexOf; i < size; i++) {
            i02<T, g37> i02VarA = list.get(i).a(type);
            if (i02VarA != null) {
                return i02VarA;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate RequestBody converter for ");
        sb.append(type);
        sb.append(".\n  Tried:");
        int size2 = list.size();
        while (iIndexOf < size2) {
            sb.append("\n   * ");
            sb.append(list.get(iIndexOf).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public final <T> i02<b57, T> d(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        List<i02.a> list = this.d;
        int iIndexOf = list.indexOf(null) + 1;
        int size = list.size();
        for (int i = iIndexOf; i < size; i++) {
            i02<b57, T> i02Var = (i02<b57, T>) list.get(i).b(type, annotationArr, this);
            if (i02Var != null) {
                return i02Var;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate ResponseBody converter for ");
        sb.append(type);
        sb.append(".\n  Tried:");
        int size2 = list.size();
        while (iIndexOf < size2) {
            sb.append("\n   * ");
            sb.append(list.get(iIndexOf).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public final void e(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        List<i02.a> list = this.d;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            list.get(i).getClass();
        }
    }
}
