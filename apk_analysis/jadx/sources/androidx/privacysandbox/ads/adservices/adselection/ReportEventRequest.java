package androidx.privacysandbox.ads.adservices.adselection;

import android.util.Log;
import android.view.InputEvent;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import defpackage.aa4;
import defpackage.ej0;
import defpackage.fg;
import defpackage.jh2;
import defpackage.s27;
import defpackage.t27;
import defpackage.zg;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes3.dex */
@ExperimentalFeatures.Ext8OptIn
public final class ReportEventRequest {
    public static final Companion Companion = new Companion(null);
    public static final int FLAG_REPORTING_DESTINATION_BUYER = 2;
    public static final int FLAG_REPORTING_DESTINATION_SELLER = 1;
    private final long adSelectionId;
    private final String eventData;
    private final String eventKey;
    private final InputEvent inputEvent;
    private final int reportingDestinations;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ReportingDestination {
    }

    public ReportEventRequest(long j, String str, String str2, int i, InputEvent inputEvent) {
        str.getClass();
        str2.getClass();
        this.adSelectionId = j;
        this.eventKey = str;
        this.eventData = str2;
        this.reportingDestinations = i;
        this.inputEvent = inputEvent;
        if (i <= 0 || i > 3) {
            fg.c("Invalid reporting destinations bitfield.");
            throw null;
        }
    }

    @ExperimentalFeatures.Ext10OptIn
    public static /* synthetic */ void getInputEvent$annotations() {
    }

    public final android.adservices.adselection.ReportEventRequest convertToAdServices$ads_adservices_release() {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        return (adServicesInfo.adServicesVersion() >= 10 || adServicesInfo.extServicesVersionS() >= 10) ? Ext10Impl.Companion.convertReportEventRequest(this) : Ext8Impl.Companion.convertReportEventRequest(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReportEventRequest)) {
            return false;
        }
        ReportEventRequest reportEventRequest = (ReportEventRequest) obj;
        return this.adSelectionId == reportEventRequest.adSelectionId && aa4.e(this.eventKey, reportEventRequest.eventKey) && aa4.e(this.eventData, reportEventRequest.eventData) && this.reportingDestinations == reportEventRequest.reportingDestinations && aa4.e(this.inputEvent, reportEventRequest.inputEvent);
    }

    public final long getAdSelectionId() {
        return this.adSelectionId;
    }

    public final String getEventData() {
        return this.eventData;
    }

    public final String getEventKey() {
        return this.eventKey;
    }

    public final InputEvent getInputEvent() {
        return this.inputEvent;
    }

    public final int getReportingDestinations() {
        return this.reportingDestinations;
    }

    public int hashCode() {
        int iB = ej0.b(this.reportingDestinations, zg.b(zg.b(Long.hashCode(this.adSelectionId) * 31, 31, this.eventKey), 31, this.eventData), 31);
        InputEvent inputEvent = this.inputEvent;
        return iB + (inputEvent != null ? inputEvent.hashCode() : 0);
    }

    public String toString() {
        return "ReportEventRequest: adSelectionId=" + this.adSelectionId + ", eventKey=" + this.eventKey + ", eventData=" + this.eventData + ", reportingDestinations=" + this.reportingDestinations + "inputEvent=" + this.inputEvent;
    }

    public static final class Ext10Impl {
        public static final Companion Companion = new Companion(null);

        private Ext10Impl() {
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final android.adservices.adselection.ReportEventRequest convertReportEventRequest(ReportEventRequest reportEventRequest) {
                reportEventRequest.getClass();
                t27.a();
                android.adservices.adselection.ReportEventRequest reportEventRequestBuild = s27.a(reportEventRequest.getAdSelectionId(), reportEventRequest.getEventKey(), reportEventRequest.getEventData(), reportEventRequest.getReportingDestinations()).setInputEvent(reportEventRequest.getInputEvent()).build();
                reportEventRequestBuild.getClass();
                return reportEventRequestBuild;
            }

            private Companion() {
            }
        }
    }

    public static final class Ext8Impl {
        public static final Companion Companion = new Companion(null);

        private Ext8Impl() {
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final android.adservices.adselection.ReportEventRequest convertReportEventRequest(ReportEventRequest reportEventRequest) {
                reportEventRequest.getClass();
                if (reportEventRequest.getInputEvent() != null) {
                    Log.w("ReportEventRequest", "inputEvent is ignored. Min version to use inputEvent is API 31 ext 10");
                }
                t27.a();
                android.adservices.adselection.ReportEventRequest reportEventRequestBuild = s27.a(reportEventRequest.getAdSelectionId(), reportEventRequest.getEventKey(), reportEventRequest.getEventData(), reportEventRequest.getReportingDestinations()).build();
                reportEventRequestBuild.getClass();
                return reportEventRequestBuild;
            }

            private Companion() {
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ReportEventRequest(long j, String str, String str2, int i) {
        this(j, str, str2, i, null, 16, null);
        str.getClass();
        str2.getClass();
    }

    public /* synthetic */ ReportEventRequest(long j, String str, String str2, int i, InputEvent inputEvent, int i2, jh2 jh2Var) {
        this(j, str, str2, i, (i2 & 16) != 0 ? null : inputEvent);
    }
}
