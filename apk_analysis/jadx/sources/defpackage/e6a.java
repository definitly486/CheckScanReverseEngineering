package defpackage;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public abstract class e6a {
    public abstract float a();

    public abstract float b();

    public final boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        e6a e6aVar = (e6a) obj;
        return a() == e6aVar.a() && b() == e6aVar.b();
    }

    public final int hashCode() {
        return Objects.hash(Float.valueOf(a()), Float.valueOf(b()));
    }
}
