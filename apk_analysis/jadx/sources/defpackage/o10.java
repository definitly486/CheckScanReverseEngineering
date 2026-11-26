package defpackage;

import com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter;

/* JADX INFO: loaded from: classes5.dex */
public interface o10 {

    public static final class a implements o10 {
        public final String a;
        public final u37 b;
        public final String c;
        public final boolean d;

        public a(String str, u37 u37Var, String str2, boolean z) {
            str.getClass();
            u37Var.getClass();
            this.a = str;
            this.b = u37Var;
            this.c = str2;
            this.d = z;
        }

        @Override // defpackage.o10
        public final void a(BalancePresenter balancePresenter) {
            balancePresenter.handleVerificationEvent(this.b, this.a, this.c, this.d);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && this.b == aVar.b && this.c.equals(aVar.c) && this.d == aVar.d;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.d) + zg.b((this.b.hashCode() + (this.a.hashCode() * 31)) * 31, 31, this.c);
        }

        public final String toString() {
            return "AlfaVerificationEvent(url=" + this.a + ", type=" + this.b + ", options=" + this.c + ", needRefresh=" + this.d + ")";
        }
    }

    public static final class b implements o10 {
        public static final b a = new b();

        @Override // defpackage.o10
        public final void a(BalancePresenter balancePresenter) {
            balancePresenter.fetchAlfaIdLink();
        }
    }

    public interface c {
        void fetchAlfaIdLink();

        void handleVerificationEvent(u37 u37Var, String str, String str2, boolean z);

        void onButtonClickByStateVerification(String str, boolean z);
    }

    public static final class d implements o10 {
        public final String a;

        public d(String str) {
            str.getClass();
            this.a = str;
        }

        @Override // defpackage.o10
        public final void a(BalancePresenter balancePresenter) {
            balancePresenter.onButtonClickByStateVerification(this.a, false);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof d) && aa4.e(this.a, ((d) obj).a);
        }

        public final int hashCode() {
            return Boolean.hashCode(false) + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return me0.c("CommonEvent(url=", this.a, ", needRefresh=false)");
        }
    }

    public static final class e implements o10 {
        public static final e a = new e();

        @Override // defpackage.o10
        public final void a(BalancePresenter balancePresenter) {
        }
    }

    void a(BalancePresenter balancePresenter);
}
