package com.bumptech.glide;

import androidx.core.util.Pools;
import com.bumptech.glide.load.data.b;
import defpackage.f53;
import defpackage.g53;
import defpackage.h53;
import defpackage.hs4;
import defpackage.hy2;
import defpackage.i47;
import defpackage.if5;
import defpackage.j47;
import defpackage.l14;
import defpackage.l47;
import defpackage.m47;
import defpackage.nc5;
import defpackage.oc5;
import defpackage.pc5;
import defpackage.r96;
import defpackage.rc5;
import defpackage.v47;
import defpackage.vx2;
import defpackage.wy8;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class Registry {
    public final pc5 a;
    public final hy2 b;
    public final j47 c;
    public final m47 d;
    public final b e;
    public final wy8 f;
    public final l14 g;
    public final rc5 h = new rc5();
    public final hs4 i = new hs4();
    public final f53.c j;

    public static class MissingComponentException extends RuntimeException {
    }

    public static final class NoImageHeaderParserException extends MissingComponentException {
        public NoImageHeaderParserException() {
            super("Failed to find image header parser.");
        }
    }

    public static class NoModelLoaderAvailableException extends MissingComponentException {
        public NoModelLoaderAvailableException() {
            throw null;
        }
    }

    public static class NoResultEncoderAvailableException extends MissingComponentException {
        public NoResultEncoderAvailableException(Class<?> cls) {
            super("Failed to find result encoder for resource class: " + cls + ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary.");
        }
    }

    public static class NoSourceEncoderAvailableException extends MissingComponentException {
        public NoSourceEncoderAvailableException() {
            throw null;
        }
    }

    public Registry() {
        f53.c cVar = new f53.c(new Pools.SynchronizedPool(20), new g53(), new h53());
        this.j = cVar;
        this.a = new pc5(cVar);
        this.b = new hy2();
        this.c = new j47();
        this.d = new m47();
        this.e = new b();
        this.f = new wy8();
        this.g = new l14();
        List listAsList = Arrays.asList("Animation", "Bitmap", "BitmapDrawable");
        ArrayList arrayList = new ArrayList(listAsList.size());
        arrayList.add("legacy_prepend_all");
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        arrayList.add("legacy_append");
        j47 j47Var = this.c;
        synchronized (j47Var) {
            try {
                ArrayList<String> arrayList2 = new ArrayList(j47Var.a);
                j47Var.a.clear();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    j47Var.a.add((String) it2.next());
                }
                for (String str : arrayList2) {
                    if (!arrayList.contains(str)) {
                        j47Var.a.add(str);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(Class cls, vx2 vx2Var) {
        hy2 hy2Var = this.b;
        synchronized (hy2Var) {
            hy2Var.a.add(new hy2.a(cls, vx2Var));
        }
    }

    public final void b(Class cls, l47 l47Var) {
        m47 m47Var = this.d;
        synchronized (m47Var) {
            m47Var.a.add(new m47.a(cls, l47Var));
        }
    }

    public final void c(Class cls, Class cls2, oc5 oc5Var) {
        pc5 pc5Var = this.a;
        synchronized (pc5Var) {
            if5 if5Var = pc5Var.a;
            synchronized (if5Var) {
                try {
                    if5.b bVar = new if5.b(cls, cls2, oc5Var);
                    ArrayList arrayList = if5Var.a;
                    arrayList.add(arrayList.size(), bVar);
                } catch (Throwable th) {
                    throw th;
                }
            }
            pc5Var.b.a.clear();
        }
    }

    public final void d(String str, Class cls, Class cls2, i47 i47Var) {
        j47 j47Var = this.c;
        synchronized (j47Var) {
            j47Var.a(str).add(new j47.a<>(cls, cls2, i47Var));
        }
    }

    public final ArrayList e() {
        ArrayList arrayList;
        l14 l14Var = this.g;
        synchronized (l14Var) {
            arrayList = l14Var.a;
        }
        if (arrayList.isEmpty()) {
            throw new NoImageHeaderParserException();
        }
        return arrayList;
    }

    public final <Model> List<nc5<Model, ?>> f(Model model) {
        List<nc5<Model, ?>> listUnmodifiableList;
        pc5 pc5Var = this.a;
        pc5Var.getClass();
        Class<?> cls = model.getClass();
        synchronized (pc5Var) {
            pc5.a.C0315a c0315a = (pc5.a.C0315a) pc5Var.b.a.get(cls);
            listUnmodifiableList = c0315a == null ? null : c0315a.a;
            if (listUnmodifiableList == null) {
                listUnmodifiableList = Collections.unmodifiableList(pc5Var.a.b(cls));
                if (((pc5.a.C0315a) pc5Var.b.a.put(cls, new pc5.a.C0315a(listUnmodifiableList))) != null) {
                    throw new IllegalStateException("Already cached loaders for model: " + cls);
                }
            }
        }
        if (listUnmodifiableList.isEmpty()) {
            throw new NoModelLoaderAvailableException("Failed to find any ModelLoaders registered for model class: " + model.getClass());
        }
        int size = listUnmodifiableList.size();
        List<nc5<Model, ?>> arrayList = Collections.EMPTY_LIST;
        boolean z = true;
        for (int i = 0; i < size; i++) {
            nc5<Model, ?> nc5Var = listUnmodifiableList.get(i);
            if (nc5Var.b(model)) {
                if (z) {
                    arrayList = new ArrayList<>(size - i);
                    z = false;
                }
                arrayList.add(nc5Var);
            }
        }
        if (!arrayList.isEmpty()) {
            return arrayList;
        }
        throw new NoModelLoaderAvailableException("Found ModelLoaders for model class: " + listUnmodifiableList + ", but none that handle this specific model instance: " + model);
    }

    public final <X> com.bumptech.glide.load.data.a<X> g(X x) {
        com.bumptech.glide.load.data.a<X> aVarB;
        b bVar = this.e;
        synchronized (bVar) {
            try {
                r96.b(x);
                com.bumptech.glide.load.data.a.InterfaceC0127a interfaceC0127a = (com.bumptech.glide.load.data.a.InterfaceC0127a) bVar.a.get(x.getClass());
                if (interfaceC0127a == null) {
                    for (com.bumptech.glide.load.data.a.InterfaceC0127a interfaceC0127a2 : bVar.a.values()) {
                        if (interfaceC0127a2.a().isAssignableFrom(x.getClass())) {
                            interfaceC0127a = interfaceC0127a2;
                            break;
                        }
                    }
                }
                if (interfaceC0127a == null) {
                    interfaceC0127a = b.b;
                }
                aVarB = interfaceC0127a.b(x);
            } catch (Throwable th) {
                throw th;
            }
        }
        return aVarB;
    }

    public final void h(com.bumptech.glide.load.data.a.InterfaceC0127a interfaceC0127a) {
        b bVar = this.e;
        synchronized (bVar) {
            bVar.a.put(interfaceC0127a.a(), interfaceC0127a);
        }
    }

    public final void i(Class cls, Class cls2, v47 v47Var) {
        wy8 wy8Var = this.f;
        synchronized (wy8Var) {
            wy8Var.a.add(new wy8.a(cls, cls2, v47Var));
        }
    }
}
