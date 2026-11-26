package defpackage;

import java.lang.Comparable;

/* JADX INFO: loaded from: classes5.dex */
public interface om1<T extends Comparable<? super T>> {

    public static final class a {
        public static <T extends Comparable<? super T>> boolean a(om1<T> om1Var) {
            return om1Var.getStart().compareTo(om1Var.getEndInclusive()) > 0;
        }
    }

    T getEndInclusive();

    T getStart();

    boolean isEmpty();
}
