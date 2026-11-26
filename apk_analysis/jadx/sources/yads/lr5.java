package yads;

import org.json.JSONException;

/* JADX INFO: loaded from: classes6.dex */
public final class lr5 extends RuntimeException {
    public lr5(String str, IllegalArgumentException illegalArgumentException, int i) {
        super((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : illegalArgumentException);
    }

    public lr5(String str, JSONException jSONException) {
        super(str, jSONException);
    }
}
