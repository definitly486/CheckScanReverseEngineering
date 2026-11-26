package defpackage;

import java.lang.annotation.Annotation;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ro5 implements mp7 {
    public static final ro5 a = new ro5();
    public static final eb8.d b = eb8.d.a;
    public static final String c = "kotlin.Nothing";

    @Override // defpackage.mp7
    public final int c(String str) {
        str.getClass();
        throw new IllegalStateException("Descriptor for type `kotlin.Nothing` does not have elements");
    }

    @Override // defpackage.mp7
    public final mp7 d(int i) {
        throw new IllegalStateException("Descriptor for type `kotlin.Nothing` does not have elements");
    }

    @Override // defpackage.mp7
    public final int e() {
        return 0;
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    @Override // defpackage.mp7
    public final String f(int i) {
        throw new IllegalStateException("Descriptor for type `kotlin.Nothing` does not have elements");
    }

    @Override // defpackage.mp7
    public final List<Annotation> g(int i) {
        throw new IllegalStateException("Descriptor for type `kotlin.Nothing` does not have elements");
    }

    @Override // defpackage.mp7
    public final sp7 getKind() {
        return b;
    }

    @Override // defpackage.mp7
    public final String h() {
        return c;
    }

    public final int hashCode() {
        return (b.hashCode() * 31) + c.hashCode();
    }

    @Override // defpackage.mp7
    public final boolean i(int i) {
        throw new IllegalStateException("Descriptor for type `kotlin.Nothing` does not have elements");
    }

    public final String toString() {
        return "NothingSerialDescriptor";
    }
}
