package com.google.protobuf;

import defpackage.eg6;
import defpackage.h79;
import defpackage.oo4;
import defpackage.z69;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class u {
    public static final a a = new a();
    public static final b b = new b();

    public static final class a extends u {
        public static final Class<?> c = Collections.unmodifiableList(Collections.EMPTY_LIST).getClass();

        public static List d(int i, long j, Object obj) {
            List listMutableCopyWithCapacity;
            List list = (List) h79.j(obj, j);
            if (list.isEmpty()) {
                if (list instanceof oo4) {
                    listMutableCopyWithCapacity = new t(i);
                } else {
                    listMutableCopyWithCapacity = ((list instanceof eg6) && (list instanceof q.j)) ? ((q.j) list).mutableCopyWithCapacity(i) : new ArrayList(i);
                }
                h79.q(obj, j, listMutableCopyWithCapacity);
                return listMutableCopyWithCapacity;
            }
            if (c.isAssignableFrom(list.getClass())) {
                ArrayList arrayList = new ArrayList(list.size() + i);
                arrayList.addAll(list);
                h79.q(obj, j, arrayList);
                return arrayList;
            }
            if (list instanceof z69) {
                z69 z69Var = (z69) list;
                t tVar = new t(z69Var.size() + i);
                tVar.addAll(z69Var);
                h79.q(obj, j, tVar);
                return tVar;
            }
            if ((list instanceof eg6) && (list instanceof q.j)) {
                q.j jVar = (q.j) list;
                if (!jVar.isModifiable()) {
                    q.j jVarMutableCopyWithCapacity = jVar.mutableCopyWithCapacity(list.size() + i);
                    h79.q(obj, j, jVarMutableCopyWithCapacity);
                    return jVarMutableCopyWithCapacity;
                }
            }
            return list;
        }

        @Override // com.google.protobuf.u
        public final void a(Object obj, long j) {
            Object objUnmodifiableList;
            List list = (List) h79.j(obj, j);
            if (list instanceof oo4) {
                objUnmodifiableList = ((oo4) list).getUnmodifiableView();
            } else {
                if (c.isAssignableFrom(list.getClass())) {
                    return;
                }
                if ((list instanceof eg6) && (list instanceof q.j)) {
                    q.j jVar = (q.j) list;
                    if (jVar.isModifiable()) {
                        jVar.makeImmutable();
                        return;
                    }
                    return;
                }
                objUnmodifiableList = Collections.unmodifiableList(list);
            }
            h79.q(obj, j, objUnmodifiableList);
        }

        @Override // com.google.protobuf.u
        public final <E> void b(Object obj, Object obj2, long j) {
            List list = (List) h79.j(obj2, j);
            List listD = d(list.size(), j, obj);
            int size = listD.size();
            int size2 = list.size();
            if (size > 0 && size2 > 0) {
                listD.addAll(list);
            }
            if (size > 0) {
                list = listD;
            }
            h79.q(obj, j, list);
        }

        @Override // com.google.protobuf.u
        public final <L> List<L> c(Object obj, long j) {
            return d(10, j, obj);
        }
    }

    public static final class b extends u {
        @Override // com.google.protobuf.u
        public final void a(Object obj, long j) {
            ((q.j) h79.j(obj, j)).makeImmutable();
        }

        @Override // com.google.protobuf.u
        public final <E> void b(Object obj, Object obj2, long j) {
            q.j jVarMutableCopyWithCapacity = (q.j) h79.j(obj, j);
            q.j jVar = (q.j) h79.j(obj2, j);
            int size = jVarMutableCopyWithCapacity.size();
            int size2 = jVar.size();
            if (size > 0 && size2 > 0) {
                if (!jVarMutableCopyWithCapacity.isModifiable()) {
                    jVarMutableCopyWithCapacity = jVarMutableCopyWithCapacity.mutableCopyWithCapacity(size2 + size);
                }
                jVarMutableCopyWithCapacity.addAll(jVar);
            }
            if (size > 0) {
                jVar = jVarMutableCopyWithCapacity;
            }
            h79.q(obj, j, jVar);
        }

        @Override // com.google.protobuf.u
        public final <L> List<L> c(Object obj, long j) {
            q.j jVar = (q.j) h79.j(obj, j);
            if (jVar.isModifiable()) {
                return jVar;
            }
            int size = jVar.size();
            q.j jVarMutableCopyWithCapacity = jVar.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
            h79.q(obj, j, jVarMutableCopyWithCapacity);
            return jVarMutableCopyWithCapacity;
        }
    }

    public abstract void a(Object obj, long j);

    public abstract <L> void b(Object obj, Object obj2, long j);

    public abstract <L> List<L> c(Object obj, long j);
}
