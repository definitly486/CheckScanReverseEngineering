package defpackage;

import com.warefly.checkscan.R;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class vw5 {
    public final fh8 a = nm4.b(a.f);
    public final mu0 b;
    public final z81 c;

    public static final class a extends gh4 implements ll3<List<? extends q16>> {
        public static final a f = new a(0);

        @Override // defpackage.ll3
        public final List<? extends q16> invoke() {
            return u96.i(new q16(R.string.page_one_title, R.drawable.page_1), new q16(R.string.page_two_title, R.drawable.page_2), new q16(R.string.page_three_title, R.drawable.page_3), new q16(R.string.page_four_title, R.drawable.page_4), new q16(R.string.page_five_title, R.drawable.page_5));
        }
    }

    public vw5() {
        mu0 mu0VarA = l91.a(0, null, null, 7);
        this.b = mu0VarA;
        this.c = new z81(mu0VarA, false);
    }
}
