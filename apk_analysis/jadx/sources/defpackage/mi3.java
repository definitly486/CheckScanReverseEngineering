package defpackage;

import androidx.browser.trusted.sharing.ShareTarget;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class mi3 extends g37 {
    public static final j95 c;
    public final List<String> a;
    public final List<String> b;

    public static final class a {
        public final ArrayList a = new ArrayList();
        public final ArrayList b = new ArrayList();
    }

    static {
        Pattern pattern = j95.e;
        c = j95.a.a(ShareTarget.ENCODING_TYPE_URL_ENCODED);
    }

    public mi3(ArrayList arrayList, ArrayList arrayList2) {
        arrayList.getClass();
        arrayList2.getClass();
        this.a = gb9.w(arrayList);
        this.b = gb9.w(arrayList2);
    }

    @Override // defpackage.g37
    public final long a() {
        return d(null, true);
    }

    @Override // defpackage.g37
    public final j95 b() {
        return c;
    }

    @Override // defpackage.g37
    public final void c(vu0 vu0Var) throws EOFException {
        d(vu0Var, false);
    }

    public final long d(vu0 vu0Var, boolean z) throws EOFException {
        bu0 buffer;
        if (z) {
            buffer = new bu0();
        } else {
            vu0Var.getClass();
            buffer = vu0Var.getBuffer();
        }
        List<String> list = this.a;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                buffer.A0(38);
            }
            buffer.I0(list.get(i));
            buffer.A0(61);
            buffer.I0(this.b.get(i));
        }
        if (!z) {
            return 0L;
        }
        long j = buffer.c;
        buffer.p();
        return j;
    }
}
