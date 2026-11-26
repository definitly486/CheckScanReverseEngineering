package defpackage;

import com.google.gson.Gson;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes5.dex */
public final class xs3 extends i02.a {
    public final Gson a;

    public xs3(Gson gson) {
        this.a = gson;
    }

    @Override // i02.a
    public final i02 a(Type type) {
        x39 x39Var = new x39(type);
        Gson gson = this.a;
        return new ys3(gson, gson.g(x39Var));
    }

    @Override // i02.a
    public final i02<b57, ?> b(Type type, Annotation[] annotationArr, n67 n67Var) {
        x39 x39Var = new x39(type);
        Gson gson = this.a;
        return new zs3(gson, gson.g(x39Var));
    }
}
