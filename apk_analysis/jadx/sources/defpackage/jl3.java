package defpackage;

import com.tapjoy.TJAdUnitConstants;
import com.warefly.checkscan.shared.infoBottomSheet.presentation.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class jl3 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("textBlocks")
    private final List<String> b;

    public jl3(String str, List<String> list) {
        str.getClass();
        list.getClass();
        this.a = str;
        this.b = list;
    }

    public final b a() {
        String str = this.a;
        List<String> list = this.b;
        ArrayList arrayList = new ArrayList(kn1.q(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new b.a((String) it.next()));
        }
        return new b(str, arrayList);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jl3)) {
            return false;
        }
        jl3 jl3Var = (jl3) obj;
        return aa4.e(this.a, jl3Var.a) && aa4.e(this.b, jl3Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "FullTermsResponse(title=" + this.a + ", textBlocks=" + this.b + ")";
    }
}
