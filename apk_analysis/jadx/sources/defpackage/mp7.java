package defpackage;

import java.lang.annotation.Annotation;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface mp7 {
    default boolean b() {
        return false;
    }

    int c(String str);

    mp7 d(int i);

    int e();

    String f(int i);

    List<Annotation> g(int i);

    default List<Annotation> getAnnotations() {
        return kx2.b;
    }

    sp7 getKind();

    String h();

    boolean i(int i);

    default boolean isInline() {
        return false;
    }
}
