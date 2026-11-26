package defpackage;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class s07<ElementKlass, Element extends ElementKlass> extends fn1<Element, Element[], ArrayList<Element>> {
    public final ne4<ElementKlass> b;
    public final er c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s07(ne4<ElementKlass> ne4Var, df4<Element> df4Var) {
        super(df4Var);
        df4Var.getClass();
        this.b = ne4Var;
        mp7 descriptor = df4Var.getDescriptor();
        descriptor.getClass();
        this.c = new er(descriptor);
    }

    @Override // defpackage.w
    public final Object a() {
        return new ArrayList();
    }

    @Override // defpackage.w
    public final int b(Object obj) {
        ArrayList arrayList = (ArrayList) obj;
        arrayList.getClass();
        return arrayList.size();
    }

    @Override // defpackage.w
    public final void c(int i, Object obj) {
        ArrayList arrayList = (ArrayList) obj;
        arrayList.getClass();
        arrayList.ensureCapacity(i);
    }

    @Override // defpackage.w
    public final Iterator d(Object obj) {
        Object[] objArr = (Object[]) obj;
        objArr.getClass();
        return new jr(objArr);
    }

    @Override // defpackage.w
    public final int e(Object obj) {
        Object[] objArr = (Object[]) obj;
        objArr.getClass();
        return objArr.length;
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return this.c;
    }

    @Override // defpackage.w
    public final Object i(Object obj) {
        throw null;
    }

    @Override // defpackage.w
    public final Object j(Object obj) {
        ArrayList arrayList = (ArrayList) obj;
        arrayList.getClass();
        Object objNewInstance = Array.newInstance((Class<?>) d31.n(this.b), arrayList.size());
        objNewInstance.getClass();
        Object[] array = arrayList.toArray((Object[]) objNewInstance);
        array.getClass();
        return array;
    }

    @Override // defpackage.fn1
    public final void k(int i, Object obj, Object obj2) {
        ArrayList arrayList = (ArrayList) obj;
        arrayList.getClass();
        arrayList.add(i, obj2);
    }
}
