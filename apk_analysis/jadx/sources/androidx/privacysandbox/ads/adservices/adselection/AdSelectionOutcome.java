package androidx.privacysandbox.ads.adservices.adselection;

import android.net.Uri;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes3.dex */
public final class AdSelectionOutcome {
    public static final Companion Companion = new Companion(null);
    public static final AdSelectionOutcome NO_OUTCOME;
    private final long adSelectionId;
    private final Uri renderUri;

    static {
        Uri uri = Uri.EMPTY;
        uri.getClass();
        NO_OUTCOME = new AdSelectionOutcome(0L, uri);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AdSelectionOutcome(android.adservices.adselection.AdSelectionOutcome adSelectionOutcome) {
        adSelectionOutcome.getClass();
        long adSelectionId = adSelectionOutcome.getAdSelectionId();
        Uri renderUri = adSelectionOutcome.getRenderUri();
        renderUri.getClass();
        this(adSelectionId, renderUri);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdSelectionOutcome)) {
            return false;
        }
        AdSelectionOutcome adSelectionOutcome = (AdSelectionOutcome) obj;
        return this.adSelectionId == adSelectionOutcome.adSelectionId && aa4.e(this.renderUri, adSelectionOutcome.renderUri);
    }

    public final long getAdSelectionId() {
        return this.adSelectionId;
    }

    public final Uri getRenderUri() {
        return this.renderUri;
    }

    @ExperimentalFeatures.Ext10OptIn
    public final boolean hasOutcome() {
        return !equals(NO_OUTCOME);
    }

    public int hashCode() {
        return this.renderUri.hashCode() + (Long.hashCode(this.adSelectionId) * 31);
    }

    public String toString() {
        return "AdSelectionOutcome: adSelectionId=" + this.adSelectionId + ", renderUri=" + this.renderUri;
    }

    @ExperimentalFeatures.Ext10OptIn
    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        @ExperimentalFeatures.Ext10OptIn
        public static /* synthetic */ void getNO_OUTCOME$annotations() {
        }

        private Companion() {
        }
    }

    public AdSelectionOutcome(long j, Uri uri) {
        uri.getClass();
        this.adSelectionId = j;
        this.renderUri = uri;
    }
}
