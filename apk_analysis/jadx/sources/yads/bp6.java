package yads;

import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class bp6 extends mp6 {
    public final HashSet c;
    public final JSONObject d;
    public final long e;

    public bp6(lp6 lp6Var, HashSet hashSet, JSONObject jSONObject, long j) {
        super(lp6Var);
        this.c = new HashSet(hashSet);
        this.d = jSONObject;
        this.e = j;
    }
}
