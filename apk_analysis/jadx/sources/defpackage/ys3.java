package defpackage;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public final class ys3<T> implements i02<T, g37> {
    public static final j95 c;
    public final Gson a;
    public final TypeAdapter<T> b;

    static {
        Pattern pattern = j95.e;
        c = j95.a.a("application/json; charset=UTF-8");
    }

    public ys3(Gson gson, TypeAdapter typeAdapter) {
        this.a = gson;
        this.b = typeAdapter;
    }

    @Override // defpackage.i02
    public final g37 convert(Object obj) throws IOException {
        bu0 bu0Var = new bu0();
        JsonWriter jsonWriterI = this.a.i(new OutputStreamWriter(bu0Var.v0(), StandardCharsets.UTF_8));
        this.b.c(jsonWriterI, obj);
        jsonWriterI.close();
        gx0 gx0VarI = bu0Var.i(bu0Var.c);
        gx0VarI.getClass();
        return new e37(c, gx0VarI);
    }
}
