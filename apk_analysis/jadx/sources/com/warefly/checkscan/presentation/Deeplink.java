package com.warefly.checkscan.presentation;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Scopes;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.warefly.checkscan.presentation.flows.cobrand.presenter.CobrandPresenter;
import com.warefly.checkscan.tasks.presentation.flows.TasksReason;
import defpackage.aa4;
import defpackage.ad2;
import defpackage.bg;
import defpackage.bj;
import defpackage.c9;
import defpackage.dg;
import defpackage.jh;
import defpackage.kv2;
import defpackage.l2;
import defpackage.me0;
import defpackage.ng;
import defpackage.ni0;
import defpackage.p2;
import defpackage.r01;
import defpackage.tg;
import defpackage.zg;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Deeplink {
    public final String b;

    public static abstract class CashBackFlow extends Deeplink implements Parcelable {

        public static final class AddScreenshotCashback extends CashBackFlow {
            public static final Parcelable.Creator<AddScreenshotCashback> CREATOR = new a();
            public final long c;

            public static final class a implements Parcelable.Creator<AddScreenshotCashback> {
                @Override // android.os.Parcelable.Creator
                public final AddScreenshotCashback createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    return new AddScreenshotCashback(parcel.readLong());
                }

                @Override // android.os.Parcelable.Creator
                public final AddScreenshotCashback[] newArray(int i) {
                    return new AddScreenshotCashback[i];
                }
            }

            public AddScreenshotCashback(long j) {
                super("add_screen_shot");
                this.c = j;
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof AddScreenshotCashback) && this.c == ((AddScreenshotCashback) obj).c;
            }

            public final int hashCode() {
                return Long.hashCode(this.c);
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String toString() {
                return bg.d(this.c, "AddScreenshotCashback(purchaseId=", ")");
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeLong(this.c);
            }
        }

        public static final class Balance extends CashBackFlow {
            public static final Parcelable.Creator<Balance> CREATOR = new a();
            public final boolean c;

            public static final class a implements Parcelable.Creator<Balance> {
                @Override // android.os.Parcelable.Creator
                public final Balance createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    return new Balance(parcel.readInt() != 0);
                }

                @Override // android.os.Parcelable.Creator
                public final Balance[] newArray(int i) {
                    return new Balance[i];
                }
            }

            public Balance(boolean z) {
                super("balance");
                this.c = z;
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Balance) && this.c == ((Balance) obj).c;
            }

            public final int hashCode() {
                return Boolean.hashCode(this.c);
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String toString() {
                return l2.c("Balance(isOpenAlfa=", ")", this.c);
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeInt(this.c ? 1 : 0);
            }
        }

        public static final class BankCardOptions extends CashBackFlow {
            public static final Parcelable.Creator<BankCardOptions> CREATOR = new a();
            public final long c;

            public static final class a implements Parcelable.Creator<BankCardOptions> {
                @Override // android.os.Parcelable.Creator
                public final BankCardOptions createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    return new BankCardOptions(parcel.readLong());
                }

                @Override // android.os.Parcelable.Creator
                public final BankCardOptions[] newArray(int i) {
                    return new BankCardOptions[i];
                }
            }

            public BankCardOptions(long j) {
                super("bankcard_options");
                this.c = j;
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof BankCardOptions) && this.c == ((BankCardOptions) obj).c;
            }

            public final int hashCode() {
                return Long.hashCode(this.c);
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String toString() {
                return bg.d(this.c, "BankCardOptions(bankId=", ")");
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeLong(this.c);
            }
        }

        public static final class BankCardStatus extends CashBackFlow {
            public static final Parcelable.Creator<BankCardStatus> CREATOR = new a();
            public final String c;

            public static final class a implements Parcelable.Creator<BankCardStatus> {
                @Override // android.os.Parcelable.Creator
                public final BankCardStatus createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    return new BankCardStatus(parcel.readString());
                }

                @Override // android.os.Parcelable.Creator
                public final BankCardStatus[] newArray(int i) {
                    return new BankCardStatus[i];
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public BankCardStatus(String str) {
                super("bankcard-status");
                str.getClass();
                this.c = str;
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof BankCardStatus) && aa4.e(this.c, ((BankCardStatus) obj).c);
            }

            public final int hashCode() {
                return this.c.hashCode();
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String toString() {
                return me0.c("BankCardStatus(cardStatusId=", this.c, ")");
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeString(this.c);
            }
        }

        public static final class BankCards extends CashBackFlow {
            public static final BankCards c = new BankCards();
            public static final Parcelable.Creator<BankCards> CREATOR = new a();

            public static final class a implements Parcelable.Creator<BankCards> {
                @Override // android.os.Parcelable.Creator
                public final BankCards createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    parcel.readInt();
                    return BankCards.c;
                }

                @Override // android.os.Parcelable.Creator
                public final BankCards[] newArray(int i) {
                    return new BankCards[i];
                }
            }

            public BankCards() {
                super("bankcards");
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeInt(1);
            }
        }

        public static final class CashbackProfile extends CashBackFlow {
            public static final CashbackProfile c = new CashbackProfile();
            public static final Parcelable.Creator<CashbackProfile> CREATOR = new a();

            public static final class a implements Parcelable.Creator<CashbackProfile> {
                @Override // android.os.Parcelable.Creator
                public final CashbackProfile createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    parcel.readInt();
                    return CashbackProfile.c;
                }

                @Override // android.os.Parcelable.Creator
                public final CashbackProfile[] newArray(int i) {
                    return new CashbackProfile[i];
                }
            }

            public CashbackProfile() {
                super("cashback");
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeInt(1);
            }
        }

        public static final class ChequePage extends CashBackFlow {
            public static final Parcelable.Creator<ChequePage> CREATOR = new a();
            public final int c;

            public static final class a implements Parcelable.Creator<ChequePage> {
                @Override // android.os.Parcelable.Creator
                public final ChequePage createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    return new ChequePage(parcel.readInt());
                }

                @Override // android.os.Parcelable.Creator
                public final ChequePage[] newArray(int i) {
                    return new ChequePage[i];
                }
            }

            public ChequePage(int i) {
                super("receipts");
                this.c = i;
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String e() {
                return jh.b(this.c, "?id=");
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof ChequePage) && this.c == ((ChequePage) obj).c;
            }

            public final int hashCode() {
                return Integer.hashCode(this.c);
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String toString() {
                return kv2.b(this.c, "ChequePage(chequeId=", ")");
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeInt(this.c);
            }
        }

        public static final class CreateRedCard extends CashBackFlow {
            public static final CreateRedCard c = new CreateRedCard();
            public static final Parcelable.Creator<CreateRedCard> CREATOR = new a();

            public static final class a implements Parcelable.Creator<CreateRedCard> {
                @Override // android.os.Parcelable.Creator
                public final CreateRedCard createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    parcel.readInt();
                    return CreateRedCard.c;
                }

                @Override // android.os.Parcelable.Creator
                public final CreateRedCard[] newArray(int i) {
                    return new CreateRedCard[i];
                }
            }

            public CreateRedCard() {
                super("create-red-card");
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeInt(1);
            }
        }

        public static final class Operations extends CashBackFlow {
            public static final Operations c = new Operations();
            public static final Parcelable.Creator<Operations> CREATOR = new a();

            public static final class a implements Parcelable.Creator<Operations> {
                @Override // android.os.Parcelable.Creator
                public final Operations createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    parcel.readInt();
                    return Operations.c;
                }

                @Override // android.os.Parcelable.Creator
                public final Operations[] newArray(int i) {
                    return new Operations[i];
                }
            }

            public Operations() {
                super("operations");
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeInt(1);
            }
        }

        public static final class TransferShowcasePromocodes extends CashBackFlow {
            public static final Parcelable.Creator<TransferShowcasePromocodes> CREATOR = new a();
            public final int c;

            public static final class a implements Parcelable.Creator<TransferShowcasePromocodes> {
                @Override // android.os.Parcelable.Creator
                public final TransferShowcasePromocodes createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    return new TransferShowcasePromocodes(parcel.readInt());
                }

                @Override // android.os.Parcelable.Creator
                public final TransferShowcasePromocodes[] newArray(int i) {
                    return new TransferShowcasePromocodes[i];
                }
            }

            public TransferShowcasePromocodes(int i) {
                super("transfer-promocodes");
                this.c = i;
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof TransferShowcasePromocodes) && this.c == ((TransferShowcasePromocodes) obj).c;
            }

            public final int hashCode() {
                return Integer.hashCode(this.c);
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String toString() {
                return kv2.b(this.c, "TransferShowcasePromocodes(id=", ")");
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeInt(this.c);
            }
        }

        public static final class TransferShowcasePromos extends CashBackFlow {
            public static final Parcelable.Creator<TransferShowcasePromos> CREATOR = new a();
            public final int c;
            public final String d;
            public final Integer e;
            public final String f;
            public final Integer g;

            public static final class a implements Parcelable.Creator<TransferShowcasePromos> {
                @Override // android.os.Parcelable.Creator
                public final TransferShowcasePromos createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    return new TransferShowcasePromos(parcel.readInt(), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null);
                }

                @Override // android.os.Parcelable.Creator
                public final TransferShowcasePromos[] newArray(int i) {
                    return new TransferShowcasePromos[i];
                }
            }

            public TransferShowcasePromos(int i, String str, Integer num, String str2, Integer num2) {
                super("transfer-showcase-promo");
                this.c = i;
                this.d = str;
                this.e = num;
                this.f = str2;
                this.g = num2;
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String e() {
                StringBuilder sb = new StringBuilder(jh.b(this.c, "?id="));
                String str = this.d;
                if (str != null) {
                    sb.append("&onboardingKey=".concat(str));
                }
                String str2 = this.f;
                if (str2 != null) {
                    sb.append("&source=".concat(str2));
                }
                Integer num = this.g;
                if (num != null) {
                    sb.append("&source_task_id=" + num.intValue());
                }
                return sb.toString();
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof TransferShowcasePromos)) {
                    return false;
                }
                TransferShowcasePromos transferShowcasePromos = (TransferShowcasePromos) obj;
                return this.c == transferShowcasePromos.c && aa4.e(this.d, transferShowcasePromos.d) && aa4.e(this.e, transferShowcasePromos.e) && aa4.e(this.f, transferShowcasePromos.f) && aa4.e(this.g, transferShowcasePromos.g);
            }

            public final int hashCode() {
                int iHashCode = Integer.hashCode(this.c) * 31;
                String str = this.d;
                int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
                Integer num = this.e;
                int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
                String str2 = this.f;
                int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
                Integer num2 = this.g;
                return iHashCode4 + (num2 != null ? num2.hashCode() : 0);
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String toString() {
                StringBuilder sbE = ng.e(this.c, "TransferShowcasePromos(id=", ", onboardingKey=", this.d, ", taskId=");
                sbE.append(this.e);
                sbE.append(", source=");
                sbE.append(this.f);
                sbE.append(", sourceTaskId=");
                sbE.append(this.g);
                sbE.append(")");
                return sbE.toString();
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeInt(this.c);
                parcel.writeString(this.d);
                Integer num = this.e;
                if (num == null) {
                    parcel.writeInt(0);
                } else {
                    parcel.writeInt(1);
                    parcel.writeInt(num.intValue());
                }
                parcel.writeString(this.f);
                Integer num2 = this.g;
                if (num2 == null) {
                    parcel.writeInt(0);
                } else {
                    parcel.writeInt(1);
                    parcel.writeInt(num2.intValue());
                }
            }
        }
    }

    public static final class Webview extends Deeplink implements Parcelable {
        public static final Parcelable.Creator<Webview> CREATOR = new a();
        public final int c;
        public final String d;
        public final String e;
        public final String f;

        public static final class a implements Parcelable.Creator<Webview> {
            @Override // android.os.Parcelable.Creator
            public final Webview createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Webview(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final Webview[] newArray(int i) {
                return new Webview[i];
            }
        }

        public Webview(int i, String str, String str2, String str3) {
            super("webview");
            this.c = i;
            this.d = str;
            this.e = str2;
            this.f = str3;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Webview)) {
                return false;
            }
            Webview webview = (Webview) obj;
            return this.c == webview.c && aa4.e(this.d, webview.d) && aa4.e(this.e, webview.e) && aa4.e(this.f, webview.f);
        }

        public final int hashCode() {
            int iHashCode = Integer.hashCode(this.c) * 31;
            String str = this.d;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.e;
            int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.f;
            return iHashCode3 + (str3 != null ? str3.hashCode() : 0);
        }

        @Override // com.warefly.checkscan.presentation.Deeplink
        public final String toString() {
            return dg.c(ng.e(this.c, "Webview(id=", ", tab=", this.d, ", target="), this.e, ", campaignCode=", this.f, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeInt(this.c);
            parcel.writeString(this.d);
            parcel.writeString(this.e);
            parcel.writeString(this.f);
        }
    }

    public static final class a extends Deeplink {
        public static final a c = new a("add-email");
    }

    public static final class a0 extends Deeplink {
        public static final a0 c = new a0("support_sdk");
    }

    public static final class b extends Deeplink {
        public final int c;

        public b(int i) {
            super("bank-card-about");
            this.c = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && this.c == ((b) obj).c;
        }

        public final int hashCode() {
            return Integer.hashCode(this.c);
        }

        @Override // com.warefly.checkscan.presentation.Deeplink
        public final String toString() {
            return kv2.b(this.c, "BankLanding(id=", ")");
        }
    }

    public static final class c extends u {
        public static final c c = new c();
    }

    public static abstract class d extends Deeplink {

        public static final class a extends d {
            public static final a c = new a("cobrand-about");

            @Override // com.warefly.checkscan.presentation.Deeplink.d
            public final void f(CobrandPresenter cobrandPresenter) {
                cobrandPresenter.handleCobrandAbout();
            }
        }

        public static final class b extends d {
            public static final b c = new b("cobrand-create-card");

            @Override // com.warefly.checkscan.presentation.Deeplink.d
            public final void f(CobrandPresenter cobrandPresenter) {
                cobrandPresenter.handleCreateCard();
            }
        }

        public abstract void f(CobrandPresenter cobrandPresenter);
    }

    public static final class e extends Deeplink {
        public final int c;
        public final String d;

        public e(int i) {
            super("daily-tasks");
            this.c = i;
            this.d = jh.b(i, "?id=");
        }

        @Override // com.warefly.checkscan.presentation.Deeplink
        public final String e() {
            return this.d;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof e) && this.c == ((e) obj).c;
        }

        public final int hashCode() {
            return Integer.hashCode(this.c);
        }

        @Override // com.warefly.checkscan.presentation.Deeplink
        public final String toString() {
            return kv2.b(this.c, "DailyTasks(id=", ")");
        }
    }

    public static final class f extends Deeplink {
        public static final f c = new f("mco-partners");
    }

    public static final class g extends Deeplink {
        public static final g c = new g("mydata");
    }

    public static final class h extends Deeplink {
        public final int c;

        public h(int i) {
            super("gift");
            this.c = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof h) && this.c == ((h) obj).c;
        }

        public final int hashCode() {
            return Integer.hashCode(this.c);
        }

        @Override // com.warefly.checkscan.presentation.Deeplink
        public final String toString() {
            return kv2.b(this.c, "Gift(id=", ")");
        }
    }

    public static final class i extends Deeplink {
        public static final i c = new i("insurance");
    }

    public static final class j extends Deeplink {
        public final String c;

        public j(String str) {
            super("landing");
            this.c = str;
        }

        @Override // com.warefly.checkscan.presentation.Deeplink
        public final String e() {
            return "?id=".concat(this.c);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof j) && this.c.equals(((j) obj).c);
        }

        public final int hashCode() {
            return this.c.hashCode();
        }

        @Override // com.warefly.checkscan.presentation.Deeplink
        public final String toString() {
            return me0.c("Landing(promotionId=", this.c, ")");
        }
    }

    public static final class k extends Deeplink {
        public static final k c = new k("notifications");
    }

    public static final class l extends Deeplink {
        public final String c;
        public final String d;

        public l(String str) {
            super("perfect-fit-landing");
            this.c = str;
            this.d = "?partnerId=".concat(str);
        }

        @Override // com.warefly.checkscan.presentation.Deeplink
        public final String e() {
            return this.d;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof l) && this.c.equals(((l) obj).c);
        }

        public final int hashCode() {
            return this.c.hashCode();
        }

        @Override // com.warefly.checkscan.presentation.Deeplink
        public final String toString() {
            return me0.c("OfferLanding(partnerId=", this.c, ")");
        }
    }

    public static final class m extends Deeplink {
        public static final m c = new m("online_shop_tutorial");
    }

    public static final class n extends Deeplink {
        public final String c;
        public final boolean d;
        public final boolean e;
        public final boolean f;
        public final boolean g;
        public final String h;

        public n(String str, boolean z, boolean z2, boolean z3, boolean z4, String str2) {
            super("open_url");
            this.c = str;
            this.d = z;
            this.e = z2;
            this.f = z3;
            this.g = z4;
            this.h = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof n)) {
                return false;
            }
            n nVar = (n) obj;
            return this.c.equals(nVar.c) && this.d == nVar.d && this.e == nVar.e && this.f == nVar.f && this.g == nVar.g && aa4.e(this.h, nVar.h);
        }

        public final int hashCode() {
            int iC = tg.c(tg.c(tg.c(tg.c(this.c.hashCode() * 31, 31, this.d), 31, this.e), 31, this.f), 31, this.g);
            String str = this.h;
            return iC + (str == null ? 0 : str.hashCode());
        }

        @Override // com.warefly.checkscan.presentation.Deeplink
        public final String toString() {
            StringBuilder sbB = p2.b("OpenUrl(url=", this.c, ", inYandex=", ", inWebView=", this.d);
            sbB.append(this.e);
            sbB.append(", inBrowser=");
            sbB.append(this.f);
            sbB.append(", inUnitySdk=");
            sbB.append(this.g);
            sbB.append(", unityPlacement=");
            sbB.append(this.h);
            sbB.append(")");
            return sbB.toString();
        }
    }

    public static final class o extends Deeplink {
        public final int c;

        public o(int i) {
            super("goods-merchant-detail");
            this.c = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof o) && this.c == ((o) obj).c;
        }

        public final int hashCode() {
            return Integer.hashCode(this.c);
        }

        @Override // com.warefly.checkscan.presentation.Deeplink
        public final String toString() {
            return kv2.b(this.c, "ProductsMerchantDetails(id=", ")");
        }
    }

    public static final class p extends Deeplink {
        public final int c;

        public p(int i) {
            super("goods-offer-detail");
            this.c = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof p) && this.c == ((p) obj).c;
        }

        public final int hashCode() {
            return Integer.hashCode(this.c);
        }

        @Override // com.warefly.checkscan.presentation.Deeplink
        public final String toString() {
            return kv2.b(this.c, "ProductsOfferDetails(id=", ")");
        }
    }

    public static final class q extends Deeplink {
        public final int c;

        public q(int i) {
            super("goods-selection-detail");
            this.c = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof q) && this.c == ((q) obj).c;
        }

        public final int hashCode() {
            return Integer.hashCode(this.c);
        }

        @Override // com.warefly.checkscan.presentation.Deeplink
        public final String toString() {
            return kv2.b(this.c, "ProductsSelection(id=", ")");
        }
    }

    public static final class r extends Deeplink {
        public static final r c = new r(Scopes.PROFILE);
    }

    public static final class s extends Deeplink {
        public static final s c = new s("queue");
    }

    public static final class t extends u {
        public final String c;

        public t(String str) {
            this.c = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof t) && this.c.equals(((t) obj).c);
        }

        public final int hashCode() {
            return this.c.hashCode();
        }

        @Override // com.warefly.checkscan.presentation.Deeplink
        public final String toString() {
            return me0.c("Request(qrCode=", this.c, ")");
        }
    }

    public static class u extends Deeplink {
        public u() {
            super("request");
        }
    }

    public static final class v extends u {
        public final String c;
        public final long d;

        public v(String str, long j) {
            this.c = str;
            this.d = j;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof v)) {
                return false;
            }
            v vVar = (v) obj;
            return aa4.e(this.c, vVar.c) && this.d == vVar.d;
        }

        public final int hashCode() {
            return Long.hashCode(this.d) + (this.c.hashCode() * 31);
        }

        @Override // com.warefly.checkscan.presentation.Deeplink
        public final String toString() {
            return "Scan(fromType=" + this.c + ", fromId=" + this.d + ")";
        }
    }

    public static final class w extends Deeplink {
        public final String c;
        public final String d;
        public final String e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public w(String str, String str2, String str3, int i) {
            super("signup");
            str = (i & 1) != 0 ? null : str;
            str2 = (i & 2) != 0 ? null : str2;
            str3 = (i & 4) != 0 ? null : str3;
            this.c = str;
            this.d = str2;
            this.e = str3;
        }

        @Override // com.warefly.checkscan.presentation.Deeplink
        public final String e() {
            return bj.c("?invite_code=", this.c);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof w)) {
                return false;
            }
            w wVar = (w) obj;
            return aa4.e(this.c, wVar.c) && aa4.e(this.d, wVar.d) && aa4.e(this.e, wVar.e);
        }

        public final int hashCode() {
            String str = this.c;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.d;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.e;
            return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
        }

        @Override // com.warefly.checkscan.presentation.Deeplink
        public final String toString() {
            return me0.d(ad2.d("SignUp(inviteCode=", this.c, ", afterEvent=", this.d, ", redirect="), this.e, ")");
        }
    }

    public static final class x extends Deeplink {
        public static final x c = new x("pro-landing");
    }

    public static final class y extends Deeplink {
        public static final y c = new y("support-form");
    }

    public static final class z extends Deeplink {
        public static final z c = new z("top_checkscan");
    }

    public Deeplink(String str) {
        this.b = str;
    }

    public String c() {
        return this.b;
    }

    public final String d() {
        return ni0.c(c(), e());
    }

    public String e() {
        return "";
    }

    public String toString() {
        return "checkscan://".concat(d());
    }

    public static abstract class Catalog extends Deeplink implements Parcelable {
        public final String c;

        public static final class Admitad extends Catalog {
            public static final Parcelable.Creator<Admitad> CREATOR = new a();
            public final long d;

            public static final class a implements Parcelable.Creator<Admitad> {
                @Override // android.os.Parcelable.Creator
                public final Admitad createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    return new Admitad(parcel.readLong());
                }

                @Override // android.os.Parcelable.Creator
                public final Admitad[] newArray(int i) {
                    return new Admitad[i];
                }
            }

            public Admitad(long j) {
                super("admitad");
                this.d = j;
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String e() {
                return r01.c(this.d, "?id=");
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Admitad) && this.d == ((Admitad) obj).d;
            }

            public final int hashCode() {
                return Long.hashCode(this.d);
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String toString() {
                return bg.d(this.d, "Admitad(admitadId=", ")");
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeLong(this.d);
            }
        }

        public static final class BonusProgram extends Catalog {
            public static final Parcelable.Creator<BonusProgram> CREATOR = new a();
            public final long d;

            public static final class a implements Parcelable.Creator<BonusProgram> {
                @Override // android.os.Parcelable.Creator
                public final BonusProgram createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    return new BonusProgram(parcel.readLong());
                }

                @Override // android.os.Parcelable.Creator
                public final BonusProgram[] newArray(int i) {
                    return new BonusProgram[i];
                }
            }

            public BonusProgram(long j) {
                super("bonus");
                this.d = j;
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String e() {
                return r01.c(this.d, "?id=");
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof BonusProgram) && this.d == ((BonusProgram) obj).d;
            }

            public final int hashCode() {
                return Long.hashCode(this.d);
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String toString() {
                return bg.d(this.d, "BonusProgram(bonusProgramId=", ")");
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeLong(this.d);
            }
        }

        public static final class Category extends Catalog {
            public static final Parcelable.Creator<Category> CREATOR = new a();
            public final int d;
            public final String e;

            public static final class a implements Parcelable.Creator<Category> {
                @Override // android.os.Parcelable.Creator
                public final Category createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    return new Category(parcel.readInt(), parcel.readString());
                }

                @Override // android.os.Parcelable.Creator
                public final Category[] newArray(int i) {
                    return new Category[i];
                }
            }

            public Category(int i, String str) {
                super("category");
                this.d = i;
                this.e = str;
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String e() {
                return jh.b(this.d, "?id=");
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Category)) {
                    return false;
                }
                Category category = (Category) obj;
                return this.d == category.d && aa4.e(this.e, category.e);
            }

            public final int hashCode() {
                int iHashCode = Integer.hashCode(this.d) * 31;
                String str = this.e;
                return iHashCode + (str == null ? 0 : str.hashCode());
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String toString() {
                return c9.d(this.d, "Category(id=", ", title=", this.e, ")");
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeInt(this.d);
                parcel.writeString(this.e);
            }
        }

        public static final class Coupon extends Catalog {
            public static final Parcelable.Creator<Coupon> CREATOR = new a();
            public final long d;

            public static final class a implements Parcelable.Creator<Coupon> {
                @Override // android.os.Parcelable.Creator
                public final Coupon createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    return new Coupon(parcel.readLong());
                }

                @Override // android.os.Parcelable.Creator
                public final Coupon[] newArray(int i) {
                    return new Coupon[i];
                }
            }

            public Coupon(long j) {
                super(FirebaseAnalytics.Param.COUPON);
                this.d = j;
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String e() {
                return r01.c(this.d, "?id=");
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Coupon) && this.d == ((Coupon) obj).d;
            }

            public final int hashCode() {
                return Long.hashCode(this.d);
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String toString() {
                return bg.d(this.d, "Coupon(couponId=", ")");
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeLong(this.d);
            }
        }

        public static final class Favorites extends Catalog {
            public static final Favorites d = new Favorites();
            public static final Parcelable.Creator<Favorites> CREATOR = new a();

            public static final class a implements Parcelable.Creator<Favorites> {
                @Override // android.os.Parcelable.Creator
                public final Favorites createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    parcel.readInt();
                    return Favorites.d;
                }

                @Override // android.os.Parcelable.Creator
                public final Favorites[] newArray(int i) {
                    return new Favorites[i];
                }
            }

            public Favorites() {
                super("favorites");
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeInt(1);
            }
        }

        public static final class OnlineShop extends Catalog {
            public static final Parcelable.Creator<OnlineShop> CREATOR = new a();
            public final int d;

            public static final class a implements Parcelable.Creator<OnlineShop> {
                @Override // android.os.Parcelable.Creator
                public final OnlineShop createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    return new OnlineShop(parcel.readInt());
                }

                @Override // android.os.Parcelable.Creator
                public final OnlineShop[] newArray(int i) {
                    return new OnlineShop[i];
                }
            }

            public OnlineShop(int i) {
                super("online_shop");
                this.d = i;
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String e() {
                return jh.b(this.d, "?id=");
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof OnlineShop) && this.d == ((OnlineShop) obj).d;
            }

            public final int hashCode() {
                return Integer.hashCode(this.d);
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String toString() {
                return kv2.b(this.d, "OnlineShop(id=", ")");
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeInt(this.d);
            }
        }

        public static final class OnlineShopsAllCategories extends Catalog {
            public static final OnlineShopsAllCategories d = new OnlineShopsAllCategories();
            public static final Parcelable.Creator<OnlineShopsAllCategories> CREATOR = new a();

            public static final class a implements Parcelable.Creator<OnlineShopsAllCategories> {
                @Override // android.os.Parcelable.Creator
                public final OnlineShopsAllCategories createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    parcel.readInt();
                    return OnlineShopsAllCategories.d;
                }

                @Override // android.os.Parcelable.Creator
                public final OnlineShopsAllCategories[] newArray(int i) {
                    return new OnlineShopsAllCategories[i];
                }
            }

            public OnlineShopsAllCategories() {
                super("online-shops-categories");
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeInt(1);
            }
        }

        public static final class Promocode extends Catalog {
            public static final Parcelable.Creator<Promocode> CREATOR = new a();
            public final int d;

            public static final class a implements Parcelable.Creator<Promocode> {
                @Override // android.os.Parcelable.Creator
                public final Promocode createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    return new Promocode(parcel.readInt());
                }

                @Override // android.os.Parcelable.Creator
                public final Promocode[] newArray(int i) {
                    return new Promocode[i];
                }
            }

            public Promocode(int i) {
                super("promocode");
                this.d = i;
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String e() {
                return jh.b(this.d, "?id=");
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Promocode) && this.d == ((Promocode) obj).d;
            }

            public final int hashCode() {
                return Integer.hashCode(this.d);
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String toString() {
                return kv2.b(this.d, "Promocode(id=", ")");
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeInt(this.d);
            }
        }

        public static final class Selection extends Catalog {
            public static final Parcelable.Creator<Selection> CREATOR = new a();
            public final int d;
            public final String e;

            public static final class a implements Parcelable.Creator<Selection> {
                @Override // android.os.Parcelable.Creator
                public final Selection createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    return new Selection(parcel.readInt(), parcel.readString());
                }

                @Override // android.os.Parcelable.Creator
                public final Selection[] newArray(int i) {
                    return new Selection[i];
                }
            }

            public Selection(int i, String str) {
                super("selection");
                this.d = i;
                this.e = str;
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String e() {
                return jh.b(this.d, "?selection_id=");
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Selection)) {
                    return false;
                }
                Selection selection = (Selection) obj;
                return this.d == selection.d && aa4.e(this.e, selection.e);
            }

            public final int hashCode() {
                int iHashCode = Integer.hashCode(this.d) * 31;
                String str = this.e;
                return iHashCode + (str == null ? 0 : str.hashCode());
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String toString() {
                return c9.d(this.d, "Selection(selectionId=", ", title=", this.e, ")");
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeInt(this.d);
                parcel.writeString(this.e);
            }
        }

        public static final class Specials extends Catalog {
            public static final Specials d = new Specials();
            public static final Parcelable.Creator<Specials> CREATOR = new a();

            public static final class a implements Parcelable.Creator<Specials> {
                @Override // android.os.Parcelable.Creator
                public final Specials createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    parcel.readInt();
                    return Specials.d;
                }

                @Override // android.os.Parcelable.Creator
                public final Specials[] newArray(int i) {
                    return new Specials[i];
                }
            }

            public Specials() {
                super("special_list");
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeInt(1);
            }
        }

        public Catalog(String str) {
            super(str);
            this.c = str;
        }

        @Override // com.warefly.checkscan.presentation.Deeplink
        public final String c() {
            return this.c;
        }

        public static final class BonusesSearch extends Catalog {
            public static final Parcelable.Creator<BonusesSearch> CREATOR = new a();
            public final String d;

            public static final class a implements Parcelable.Creator<BonusesSearch> {
                @Override // android.os.Parcelable.Creator
                public final BonusesSearch createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    return new BonusesSearch(parcel.readString());
                }

                @Override // android.os.Parcelable.Creator
                public final BonusesSearch[] newArray(int i) {
                    return new BonusesSearch[i];
                }
            }

            public BonusesSearch(String str) {
                super("bonuses_search");
                this.d = str;
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String e() {
                return bj.c("?query=", this.d);
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof BonusesSearch) && aa4.e(this.d, ((BonusesSearch) obj).d);
            }

            public final int hashCode() {
                String str = this.d;
                if (str == null) {
                    return 0;
                }
                return str.hashCode();
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String toString() {
                return me0.c("BonusesSearch(query=", this.d, ")");
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeString(this.d);
            }

            public BonusesSearch() {
                this(null);
            }
        }
    }

    public static abstract class Desktop extends Deeplink implements Parcelable {

        public static final class Brandlink extends Desktop {
            public static final Parcelable.Creator<Brandlink> CREATOR = new a();
            public final int c;
            public final String d;
            public final String e;
            public final String f;
            public final boolean g;
            public final String h;
            public final String i;
            public final boolean j;

            public static final class a implements Parcelable.Creator<Brandlink> {
                @Override // android.os.Parcelable.Creator
                public final Brandlink createFromParcel(Parcel parcel) {
                    boolean z;
                    boolean z2;
                    parcel.getClass();
                    int i = parcel.readInt();
                    String string = parcel.readString();
                    String string2 = parcel.readString();
                    String string3 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        z = false;
                        z2 = true;
                    } else {
                        z = false;
                        z2 = false;
                    }
                    String string4 = parcel.readString();
                    boolean z3 = true;
                    String string5 = parcel.readString();
                    if (parcel.readInt() == 0) {
                        z3 = z;
                    }
                    return new Brandlink(i, string, string2, string3, string4, string5, z2, z3);
                }

                @Override // android.os.Parcelable.Creator
                public final Brandlink[] newArray(int i) {
                    return new Brandlink[i];
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Brandlink(int i, String str, String str2, String str3, String str4, String str5, boolean z, boolean z2) {
                super("brandlink");
                str4.getClass();
                str5.getClass();
                this.c = i;
                this.d = str;
                this.e = str2;
                this.f = str3;
                this.g = z;
                this.h = str4;
                this.i = str5;
                this.j = z2;
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String e() {
                return jh.b(this.c, "?id=");
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Brandlink)) {
                    return false;
                }
                Brandlink brandlink = (Brandlink) obj;
                return this.c == brandlink.c && aa4.e(this.d, brandlink.d) && aa4.e(this.e, brandlink.e) && aa4.e(this.f, brandlink.f) && this.g == brandlink.g && aa4.e(this.h, brandlink.h) && aa4.e(this.i, brandlink.i) && this.j == brandlink.j;
            }

            public final int hashCode() {
                int iHashCode = Integer.hashCode(this.c) * 31;
                String str = this.d;
                int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
                String str2 = this.e;
                int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
                String str3 = this.f;
                return Boolean.hashCode(this.j) + zg.b(zg.b(tg.c((iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31, 31, this.g), 31, this.h), 31, this.i);
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String toString() {
                StringBuilder sbE = ng.e(this.c, "Brandlink(webviewId=", ", tab=", this.d, ", target=");
                kv2.c(sbE, this.e, ", campaignCode=", this.f, ", fromShowCase=");
                sbE.append(this.g);
                sbE.append(", offerId=");
                sbE.append(this.h);
                sbE.append(", categoryId=");
                sbE.append(this.i);
                sbE.append(", isCategory=");
                sbE.append(this.j);
                sbE.append(")");
                return sbE.toString();
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeInt(this.c);
                parcel.writeString(this.d);
                parcel.writeString(this.e);
                parcel.writeString(this.f);
                parcel.writeInt(this.g ? 1 : 0);
                parcel.writeString(this.h);
                parcel.writeString(this.i);
                parcel.writeInt(this.j ? 1 : 0);
            }
        }

        public static final class Cheques extends Desktop {
            public static final Cheques c = new Cheques();
            public static final Parcelable.Creator<Cheques> CREATOR = new a();

            public static final class a implements Parcelable.Creator<Cheques> {
                @Override // android.os.Parcelable.Creator
                public final Cheques createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    parcel.readInt();
                    return Cheques.c;
                }

                @Override // android.os.Parcelable.Creator
                public final Cheques[] newArray(int i) {
                    return new Cheques[i];
                }
            }

            public Cheques() {
                super("cheques");
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeInt(1);
            }
        }

        public static final class ProductsDeeplink extends Desktop {
            public static final ProductsDeeplink c = new ProductsDeeplink();
            public static final Parcelable.Creator<ProductsDeeplink> CREATOR = new a();

            public static final class a implements Parcelable.Creator<ProductsDeeplink> {
                @Override // android.os.Parcelable.Creator
                public final ProductsDeeplink createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    parcel.readInt();
                    return ProductsDeeplink.c;
                }

                @Override // android.os.Parcelable.Creator
                public final ProductsDeeplink[] newArray(int i) {
                    return new ProductsDeeplink[i];
                }
            }

            public ProductsDeeplink() {
                super("goods-showcase");
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeInt(1);
            }
        }

        public static final class Balance extends Desktop {
            public static final Parcelable.Creator<Balance> CREATOR = new a();
            public final boolean c;

            public static final class a implements Parcelable.Creator<Balance> {
                @Override // android.os.Parcelable.Creator
                public final Balance createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    return new Balance(parcel.readInt() != 0);
                }

                @Override // android.os.Parcelable.Creator
                public final Balance[] newArray(int i) {
                    return new Balance[i];
                }
            }

            public Balance(boolean z) {
                super("balance");
                this.c = z;
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Balance) && this.c == ((Balance) obj).c;
            }

            public final int hashCode() {
                return Boolean.hashCode(this.c);
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String toString() {
                return l2.c("Balance(isOpenAlfa=", ")", this.c);
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeInt(this.c ? 1 : 0);
            }

            public Balance() {
                this(false);
            }
        }

        public static final class Games extends Desktop {
            public static final Parcelable.Creator<Games> CREATOR = new a();
            public final boolean c;

            public static final class a implements Parcelable.Creator<Games> {
                @Override // android.os.Parcelable.Creator
                public final Games createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    return new Games(parcel.readInt() != 0);
                }

                @Override // android.os.Parcelable.Creator
                public final Games[] newArray(int i) {
                    return new Games[i];
                }
            }

            public Games(boolean z) {
                super("games-tab");
                this.c = z;
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Games) && this.c == ((Games) obj).c;
            }

            public final int hashCode() {
                return Boolean.hashCode(this.c);
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String toString() {
                return l2.c("Games(play=", ")", this.c);
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeInt(this.c ? 1 : 0);
            }

            public Games() {
                this(false);
            }
        }

        public static final class Tasks extends Desktop {
            public static final Parcelable.Creator<Tasks> CREATOR = new a();
            public final TasksReason c;

            public static final class a implements Parcelable.Creator<Tasks> {
                @Override // android.os.Parcelable.Creator
                public final Tasks createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    return new Tasks((TasksReason) parcel.readParcelable(Tasks.class.getClassLoader()));
                }

                @Override // android.os.Parcelable.Creator
                public final Tasks[] newArray(int i) {
                    return new Tasks[i];
                }
            }

            public Tasks(TasksReason tasksReason) {
                super("tasks");
                this.c = tasksReason;
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Tasks) && aa4.e(this.c, ((Tasks) obj).c);
            }

            public final int hashCode() {
                TasksReason tasksReason = this.c;
                if (tasksReason == null) {
                    return 0;
                }
                return tasksReason.hashCode();
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String toString() {
                return "Tasks(reason=" + this.c + ")";
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeParcelable(this.c, i);
            }

            public Tasks() {
                this(null);
            }
        }

        public static final class Bonuses extends Desktop {
            public static final Parcelable.Creator<Bonuses> CREATOR = new a();
            public final String c;

            public static final class a implements Parcelable.Creator<Bonuses> {
                @Override // android.os.Parcelable.Creator
                public final Bonuses createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    return new Bonuses(parcel.readString());
                }

                @Override // android.os.Parcelable.Creator
                public final Bonuses[] newArray(int i) {
                    return new Bonuses[i];
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Bonuses(String str) {
                super("bonuses");
                str.getClass();
                this.c = str;
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Bonuses) && aa4.e(this.c, ((Bonuses) obj).c);
            }

            public final int hashCode() {
                return this.c.hashCode();
            }

            @Override // com.warefly.checkscan.presentation.Deeplink
            public final String toString() {
                return me0.c("Bonuses(afterEvent=", this.c, ")");
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeString(this.c);
            }

            public /* synthetic */ Bonuses(int i) {
                this(new String());
            }

            public Bonuses() {
                this(0);
            }
        }
    }
}
