package androidx.work;

import defpackage.aa4;
import defpackage.b36;

/* JADX INFO: loaded from: classes3.dex */
public final class DataKt {
    public static final <T> boolean hasKeyWithValueOfType(Data data, String str) {
        data.getClass();
        str.getClass();
        aa4.i();
        throw null;
    }

    public static final Data workDataOf(b36<String, ? extends Object>... b36VarArr) {
        b36VarArr.getClass();
        Data.Builder builder = new Data.Builder();
        for (b36<String, ? extends Object> b36Var : b36VarArr) {
            builder.put(b36Var.b, b36Var.c);
        }
        return builder.build();
    }
}
