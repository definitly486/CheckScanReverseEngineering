package androidx.lifecycle;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class MethodCallsLogger {
    private final Map<String, Integer> calledMethods = new HashMap();

    public boolean approveCall(String str, int i) {
        str.getClass();
        Integer num = this.calledMethods.get(str);
        int iIntValue = num != null ? num.intValue() : 0;
        boolean z = (iIntValue & i) != 0;
        this.calledMethods.put(str, Integer.valueOf(i | iIntValue));
        return !z;
    }
}
