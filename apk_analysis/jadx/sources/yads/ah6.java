package yads;

import com.tapjoy.TJAdUnitConstants;
import java.util.Arrays;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public enum ah6 implements lq3 {
    DEFAULT("default"),
    LOADING("loading"),
    HIDDEN(TJAdUnitConstants.String.HIDDEN);

    public final String b;

    ah6(String str) {
        this.b = str;
    }

    @Override // yads.lq3
    public final String a() {
        return String.format("state: %s", Arrays.copyOf(new Object[]{JSONObject.quote(this.b)}, 1));
    }
}
