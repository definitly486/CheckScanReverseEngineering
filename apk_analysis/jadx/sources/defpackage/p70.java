package defpackage;

import com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter;

/* JADX INFO: loaded from: classes5.dex */
public interface p70 {

    public static final class a implements p70 {
        public final String a;

        public a(String str) {
            str.getClass();
            this.a = str;
        }

        @Override // defpackage.p70
        public final void a(BalancePresenter balancePresenter) {
            balancePresenter.handleCommonWithdrawEvent(this.a);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && aa4.e(this.a, ((a) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return me0.c("CommonEvent(url=", this.a, ")");
        }
    }

    public static final class b implements p70 {
        public static final b a = new b();

        @Override // defpackage.p70
        public final void a(BalancePresenter balancePresenter) {
            balancePresenter.handlePhoneWithdrawEvent();
        }
    }

    public static final class c implements p70 {
        public final long a;

        public c(long j) {
            this.a = j;
        }

        @Override // defpackage.p70
        public final void a(BalancePresenter balancePresenter) {
            balancePresenter.handleCardWithdrawEvent(this.a);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && this.a == ((c) obj).a;
        }

        public final int hashCode() {
            return Long.hashCode(this.a);
        }

        public final String toString() {
            return bg.d(this.a, "TransferCardEvent(cardId=", ")");
        }
    }

    public interface d {
        void handleCardWithdrawEvent(long j);

        void handleCommonWithdrawEvent(String str);

        void handlePhoneWithdrawEvent();
    }

    void a(BalancePresenter balancePresenter);
}
