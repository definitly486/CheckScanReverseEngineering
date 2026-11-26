package com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide;

import android.os.Parcel;
import android.os.Parcelable;
import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.dialogs.BankClientVerificationModel;
import defpackage.aa4;
import defpackage.ad2;
import defpackage.b36;
import defpackage.e2;
import defpackage.ej0;
import defpackage.gg;
import defpackage.kx2;
import defpackage.me0;
import defpackage.tg;
import defpackage.ud;
import defpackage.zg;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class OnboardingOneSlideModel implements Parcelable {
    public static final Parcelable.Creator<OnboardingOneSlideModel> CREATOR = new a();
    public final String b;
    public final String c;
    public final String d;
    public final boolean e;
    public final boolean f;
    public final Button g;
    public final Button h;
    public final boolean i;
    public final int j;
    public final int k;
    public final int l;
    public final List<OnboardingOneSlideModel> m;
    public final b36<String, String> n;

    public interface Action extends Parcelable {

        public static final class Alert implements Action {
            public static final Parcelable.Creator<Alert> CREATOR = new a();
            public final BankClientVerificationModel b;

            public static final class a implements Parcelable.Creator<Alert> {
                @Override // android.os.Parcelable.Creator
                public final Alert createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    return new Alert(BankClientVerificationModel.CREATOR.createFromParcel(parcel));
                }

                @Override // android.os.Parcelable.Creator
                public final Alert[] newArray(int i) {
                    return new Alert[i];
                }
            }

            public Alert(BankClientVerificationModel bankClientVerificationModel) {
                bankClientVerificationModel.getClass();
                this.b = bankClientVerificationModel;
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Alert) && aa4.e(this.b, ((Alert) obj).b);
            }

            public final int hashCode() {
                return this.b.hashCode();
            }

            public final String toString() {
                return "Alert(bankClientVerificationModel=" + this.b + ")";
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                this.b.writeToParcel(parcel, i);
            }
        }

        public static final class Deeplink implements Action {
            public static final Parcelable.Creator<Deeplink> CREATOR = new a();
            public final String b;

            public static final class a implements Parcelable.Creator<Deeplink> {
                @Override // android.os.Parcelable.Creator
                public final Deeplink createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    return new Deeplink(parcel.readString());
                }

                @Override // android.os.Parcelable.Creator
                public final Deeplink[] newArray(int i) {
                    return new Deeplink[i];
                }
            }

            public Deeplink(String str) {
                str.getClass();
                this.b = str;
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Deeplink) && aa4.e(this.b, ((Deeplink) obj).b);
            }

            public final int hashCode() {
                return this.b.hashCode();
            }

            public final String toString() {
                return me0.c("Deeplink(url=", this.b, ")");
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeString(this.b);
            }
        }

        public static final class Next implements Action {
            public static final Next b = new Next();
            public static final Parcelable.Creator<Next> CREATOR = new a();

            public static final class a implements Parcelable.Creator<Next> {
                @Override // android.os.Parcelable.Creator
                public final Next createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    parcel.readInt();
                    return Next.b;
                }

                @Override // android.os.Parcelable.Creator
                public final Next[] newArray(int i) {
                    return new Next[i];
                }
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

        public static final class NotSupported implements Action {
            public static final NotSupported b = new NotSupported();
            public static final Parcelable.Creator<NotSupported> CREATOR = new a();

            public static final class a implements Parcelable.Creator<NotSupported> {
                @Override // android.os.Parcelable.Creator
                public final NotSupported createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    parcel.readInt();
                    return NotSupported.b;
                }

                @Override // android.os.Parcelable.Creator
                public final NotSupported[] newArray(int i) {
                    return new NotSupported[i];
                }
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

        public static final class ShareWithFriend implements Action {
            public static final ShareWithFriend b = new ShareWithFriend();
            public static final Parcelable.Creator<ShareWithFriend> CREATOR = new a();

            public static final class a implements Parcelable.Creator<ShareWithFriend> {
                @Override // android.os.Parcelable.Creator
                public final ShareWithFriend createFromParcel(Parcel parcel) {
                    parcel.getClass();
                    parcel.readInt();
                    return ShareWithFriend.b;
                }

                @Override // android.os.Parcelable.Creator
                public final ShareWithFriend[] newArray(int i) {
                    return new ShareWithFriend[i];
                }
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
    }

    public static final class Button implements Parcelable {
        public static final Parcelable.Creator<Button> CREATOR = new a();
        public final String b;
        public final Action c;
        public final String d;

        public static final class a implements Parcelable.Creator<Button> {
            @Override // android.os.Parcelable.Creator
            public final Button createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Button(parcel.readString(), (Action) parcel.readParcelable(Button.class.getClassLoader()), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final Button[] newArray(int i) {
                return new Button[i];
            }
        }

        public Button(String str, Action action, String str2) {
            str.getClass();
            action.getClass();
            this.b = str;
            this.c = action;
            this.d = str2;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Button)) {
                return false;
            }
            Button button = (Button) obj;
            return aa4.e(this.b, button.b) && aa4.e(this.c, button.c) && aa4.e(this.d, button.d);
        }

        public final int hashCode() {
            int iHashCode = (this.c.hashCode() + (this.b.hashCode() * 31)) * 31;
            String str = this.d;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Button(title=");
            sb.append(this.b);
            sb.append(", action=");
            sb.append(this.c);
            sb.append(", event=");
            return me0.d(sb, this.d, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeString(this.b);
            parcel.writeParcelable(this.c, i);
            parcel.writeString(this.d);
        }
    }

    public static final class a implements Parcelable.Creator<OnboardingOneSlideModel> {
        @Override // android.os.Parcelable.Creator
        public final OnboardingOneSlideModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            boolean z = true;
            if (parcel.readInt() == 0) {
                z = false;
            }
            boolean z2 = parcel.readInt() != 0;
            Button buttonCreateFromParcel = parcel.readInt() == 0 ? null : Button.CREATOR.createFromParcel(parcel);
            Button buttonCreateFromParcel2 = parcel.readInt() != 0 ? Button.CREATOR.createFromParcel(parcel) : null;
            boolean z3 = parcel.readInt() != 0 ? z : false;
            int i = parcel.readInt();
            int i2 = parcel.readInt();
            int i3 = parcel.readInt();
            int i4 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i4);
            for (int i5 = 0; i5 != i4; i5++) {
                arrayList.add(OnboardingOneSlideModel.CREATOR.createFromParcel(parcel));
            }
            return new OnboardingOneSlideModel(string, string2, string3, z, z2, buttonCreateFromParcel, buttonCreateFromParcel2, z3, i, i2, i3, arrayList, (b36) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final OnboardingOneSlideModel[] newArray(int i) {
            return new OnboardingOneSlideModel[i];
        }
    }

    public /* synthetic */ OnboardingOneSlideModel(String str, String str2, String str3, boolean z, boolean z2, Button button, Button button2, boolean z3, int i, int i2, int i3, ArrayList arrayList, b36 b36Var, int i4) {
        this(str, str2, str3, z, z2, button, button2, z3, i, i2, i3, (i4 & 2048) != 0 ? kx2.b : arrayList, (i4 & 4096) != 0 ? null : b36Var);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OnboardingOneSlideModel)) {
            return false;
        }
        OnboardingOneSlideModel onboardingOneSlideModel = (OnboardingOneSlideModel) obj;
        return aa4.e(this.b, onboardingOneSlideModel.b) && aa4.e(this.c, onboardingOneSlideModel.c) && aa4.e(this.d, onboardingOneSlideModel.d) && this.e == onboardingOneSlideModel.e && this.f == onboardingOneSlideModel.f && aa4.e(this.g, onboardingOneSlideModel.g) && aa4.e(this.h, onboardingOneSlideModel.h) && this.i == onboardingOneSlideModel.i && this.j == onboardingOneSlideModel.j && this.k == onboardingOneSlideModel.k && this.l == onboardingOneSlideModel.l && aa4.e(this.m, onboardingOneSlideModel.m) && aa4.e(this.n, onboardingOneSlideModel.n);
    }

    public final int hashCode() {
        int iC = tg.c(tg.c(zg.b(zg.b(this.b.hashCode() * 31, 31, this.c), 31, this.d), 31, this.e), 31, this.f);
        Button button = this.g;
        int iHashCode = (iC + (button == null ? 0 : button.hashCode())) * 31;
        Button button2 = this.h;
        int iB = e2.b(this.m, ej0.b(this.l, ej0.b(this.k, ej0.b(this.j, tg.c((iHashCode + (button2 == null ? 0 : button2.hashCode())) * 31, 31, this.i), 31), 31), 31), 31);
        b36<String, String> b36Var = this.n;
        return iB + (b36Var != null ? b36Var.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("OnboardingOneSlideModel(title=", this.b, ", description=", this.c, ", imageUrl=");
        ud.f(sbD, this.d, ", canGoBack=", this.e, ", showConfetti=");
        sbD.append(this.f);
        sbD.append(", primaryAction=");
        sbD.append(this.g);
        sbD.append(", secondaryAction=");
        sbD.append(this.h);
        sbD.append(", hasIndicator=");
        sbD.append(this.i);
        sbD.append(", indicatorMaxNum=");
        gg.e(sbD, this.j, ", indicatorPageNumber=", this.k, ", indexOfSlide=");
        sbD.append(this.l);
        sbD.append(", subSlides=");
        sbD.append(this.m);
        sbD.append(", eventName=");
        sbD.append(this.n);
        sbD.append(")");
        return sbD.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeInt(this.e ? 1 : 0);
        parcel.writeInt(this.f ? 1 : 0);
        Button button = this.g;
        if (button == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            button.writeToParcel(parcel, i);
        }
        Button button2 = this.h;
        if (button2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            button2.writeToParcel(parcel, i);
        }
        parcel.writeInt(this.i ? 1 : 0);
        parcel.writeInt(this.j);
        parcel.writeInt(this.k);
        parcel.writeInt(this.l);
        List<OnboardingOneSlideModel> list = this.m;
        parcel.writeInt(list.size());
        Iterator<OnboardingOneSlideModel> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(parcel, i);
        }
        parcel.writeSerializable(this.n);
    }

    public OnboardingOneSlideModel(String str, String str2, String str3, boolean z, boolean z2, Button button, Button button2, boolean z3, int i, int i2, int i3, List<OnboardingOneSlideModel> list, b36<String, String> b36Var) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        list.getClass();
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = z;
        this.f = z2;
        this.g = button;
        this.h = button2;
        this.i = z3;
        this.j = i;
        this.k = i2;
        this.l = i3;
        this.m = list;
        this.n = b36Var;
    }
}
