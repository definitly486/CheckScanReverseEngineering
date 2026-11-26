package androidx.privacysandbox.ads.adservices.measurement;

import android.net.Uri;
import defpackage.aa4;
import defpackage.ad2;
import defpackage.bg;
import defpackage.e2;
import defpackage.jh2;
import defpackage.kx2;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.time.Instant;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class DeletionRequest {
    public static final Companion Companion = new Companion(null);
    public static final int DELETION_MODE_ALL = 0;
    public static final int DELETION_MODE_EXCLUDE_INTERNAL_DATA = 1;
    public static final int MATCH_BEHAVIOR_DELETE = 0;
    public static final int MATCH_BEHAVIOR_PRESERVE = 1;
    private final int deletionMode;
    private final List<Uri> domainUris;
    private final Instant end;
    private final int matchBehavior;
    private final List<Uri> originUris;
    private final Instant start;

    public static final class Builder {
        private final int deletionMode;
        private List<? extends Uri> domainUris;
        private Instant end;
        private final int matchBehavior;
        private List<? extends Uri> originUris;
        private Instant start;

        public Builder(int i, int i2) {
            this.deletionMode = i;
            this.matchBehavior = i2;
            Instant instant = Instant.MIN;
            instant.getClass();
            this.start = instant;
            Instant instant2 = Instant.MAX;
            instant2.getClass();
            this.end = instant2;
            kx2 kx2Var = kx2.b;
            this.domainUris = kx2Var;
            this.originUris = kx2Var;
        }

        public final DeletionRequest build() {
            return new DeletionRequest(this.deletionMode, this.matchBehavior, this.start, this.end, this.domainUris, this.originUris);
        }

        public final Builder setDomainUris(List<? extends Uri> list) {
            list.getClass();
            this.domainUris = list;
            return this;
        }

        public final Builder setEnd(Instant instant) {
            instant.getClass();
            this.end = instant;
            return this;
        }

        public final Builder setOriginUris(List<? extends Uri> list) {
            list.getClass();
            this.originUris = list;
            return this;
        }

        public final Builder setStart(Instant instant) {
            instant.getClass();
            this.start = instant;
            return this;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ DeletionRequest(int i, int i2, Instant instant, Instant instant2, List list, List list2, int i3, jh2 jh2Var) {
        if ((i3 & 4) != 0) {
            instant = Instant.MIN;
            instant.getClass();
        }
        Instant instant3 = instant;
        if ((i3 & 8) != 0) {
            instant2 = Instant.MAX;
            instant2.getClass();
        }
        Instant instant4 = instant2;
        int i4 = i3 & 16;
        kx2 kx2Var = kx2.b;
        this(i, i2, instant3, instant4, i4 != 0 ? kx2Var : list, (i3 & 32) != 0 ? kx2Var : list2);
    }

    public final android.adservices.measurement.DeletionRequest convertToAdServices$ads_adservices_release() {
        android.adservices.measurement.DeletionRequest deletionRequestBuild = new android.adservices.measurement.DeletionRequest.Builder().setDeletionMode(this.deletionMode).setMatchBehavior(this.matchBehavior).setStart(this.start).setEnd(this.end).setDomainUris(this.domainUris).setOriginUris(this.originUris).build();
        deletionRequestBuild.getClass();
        return deletionRequestBuild;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeletionRequest)) {
            return false;
        }
        DeletionRequest deletionRequest = (DeletionRequest) obj;
        return this.deletionMode == deletionRequest.deletionMode && new HashSet(this.domainUris).equals(new HashSet(deletionRequest.domainUris)) && new HashSet(this.originUris).equals(new HashSet(deletionRequest.originUris)) && aa4.e(this.start, deletionRequest.start) && aa4.e(this.end, deletionRequest.end) && this.matchBehavior == deletionRequest.matchBehavior;
    }

    public final int getDeletionMode() {
        return this.deletionMode;
    }

    public final List<Uri> getDomainUris() {
        return this.domainUris;
    }

    public final Instant getEnd() {
        return this.end;
    }

    public final int getMatchBehavior() {
        return this.matchBehavior;
    }

    public final List<Uri> getOriginUris() {
        return this.originUris;
    }

    public final Instant getStart() {
        return this.start;
    }

    public int hashCode() {
        return Integer.hashCode(this.matchBehavior) + ((this.end.hashCode() + ((this.start.hashCode() + e2.b(this.originUris, e2.b(this.domainUris, Integer.hashCode(this.deletionMode) * 31, 31), 31)) * 31)) * 31);
    }

    public String toString() {
        StringBuilder sbD = ad2.d("DeletionRequest { DeletionMode=", this.deletionMode == 0 ? "DELETION_MODE_ALL" : "DELETION_MODE_EXCLUDE_INTERNAL_DATA", ", MatchBehavior=", this.matchBehavior == 0 ? "MATCH_BEHAVIOR_DELETE" : "MATCH_BEHAVIOR_PRESERVE", ", Start=");
        sbD.append(this.start);
        sbD.append(", End=");
        sbD.append(this.end);
        sbD.append(", DomainUris=");
        sbD.append(this.domainUris);
        sbD.append(", OriginUris=");
        return bg.e(" }", this.originUris, sbD);
    }

    public static final class Companion {

        @Retention(RetentionPolicy.SOURCE)
        public @interface DeletionMode {
        }

        @Retention(RetentionPolicy.SOURCE)
        public @interface MatchBehavior {
        }

        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DeletionRequest(int i, int i2, Instant instant, Instant instant2, List<? extends Uri> list, List<? extends Uri> list2) {
        instant.getClass();
        instant2.getClass();
        list.getClass();
        list2.getClass();
        this.deletionMode = i;
        this.matchBehavior = i2;
        this.start = instant;
        this.end = instant2;
        this.domainUris = list;
        this.originUris = list2;
    }
}
