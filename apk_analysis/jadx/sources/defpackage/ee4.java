package defpackage;

import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "kotlinx.serialization.json.internal.JsonTreeReader", f = "JsonTreeReader.kt", l = {22}, m = "readObject", v = 2)
public final class ee4 extends f02 {
    public ae2 l;
    public fe4 m;
    public LinkedHashMap n;
    public String o;
    public int p;
    public /* synthetic */ Object q;
    public final /* synthetic */ fe4 r;
    public int s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ee4(fe4 fe4Var, cd0 cd0Var) {
        super(cd0Var);
        this.r = fe4Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.q = obj;
        this.s |= Integer.MIN_VALUE;
        return this.r.c(null, this);
    }
}
