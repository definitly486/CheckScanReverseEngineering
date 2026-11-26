package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zm9 {
    public static final zm9 g = new zm9("empty", "empty", null, null, null, null);
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final Integer e;
    public final List f;

    public zm9(String str, String str2, String str3, String str4, Integer num, ArrayList arrayList) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = num;
        this.f = arrayList;
    }

    public final boolean equals(Object obj) {
        if (obj != null && zm9.class == obj.getClass()) {
            zm9 zm9Var = (zm9) obj;
            if (Objects.equals(this.a, zm9Var.a) && Objects.equals(this.b, zm9Var.b) && Objects.equals(this.c, zm9Var.c) && Objects.equals(this.d, zm9Var.d) && Objects.equals(this.e, zm9Var.e) && Objects.equals(this.f, zm9Var.f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.a, this.b, this.c, this.d, this.e, this.f);
    }
}
