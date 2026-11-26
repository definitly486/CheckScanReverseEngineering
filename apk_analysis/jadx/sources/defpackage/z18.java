package defpackage;

import java.lang.annotation.Annotation;

/* JADX INFO: loaded from: classes5.dex */
public final class z18 implements y18 {
    public static final z18 b = new z18();

    @Override // java.lang.annotation.Annotation
    public final Class<? extends Annotation> annotationType() {
        return y18.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        return obj instanceof y18;
    }

    @Override // java.lang.annotation.Annotation
    public final int hashCode() {
        return 0;
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@" + y18.class.getName() + "()";
    }
}
