package defpackage;

import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.Arrays;
import java.util.List;
import kotlinx.serialization.SerializationException;

/* JADX INFO: loaded from: classes5.dex */
public final class rq5<T> implements df4<T> {
    public final T a;
    public final List<? extends Annotation> b;
    public final cl4 c;

    public rq5(String str, T t) {
        t.getClass();
        this.a = t;
        this.b = kx2.b;
        this.c = nm4.a(po4.PUBLICATION, new rw1(str, this));
    }

    @Override // defpackage.xl2
    public final T deserialize(ud2 ud2Var) {
        int iDecodeElementIndex;
        ud2Var.getClass();
        mp7 descriptor = getDescriptor();
        du1 du1VarBeginStructure = ud2Var.beginStructure(descriptor);
        if (!du1VarBeginStructure.decodeSequentially() && (iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(getDescriptor())) != -1) {
            throw new SerializationException(jh.b(iDecodeElementIndex, "Unexpected index "));
        }
        j59 j59Var = j59.a;
        du1VarBeginStructure.endStructure(descriptor);
        return this.a;
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return (mp7) this.c.getValue();
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, T t) {
        t.getClass();
        ux2Var.beginStructure(getDescriptor()).endStructure(getDescriptor());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public rq5(String str, Serializable serializable, Annotation[] annotationArr) {
        this(str, serializable);
        serializable.getClass();
        List<? extends Annotation> listAsList = Arrays.asList(annotationArr);
        listAsList.getClass();
        this.b = listAsList;
    }
}
