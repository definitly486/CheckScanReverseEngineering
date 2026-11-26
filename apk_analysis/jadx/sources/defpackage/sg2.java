package defpackage;

import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.foundation.text.TextRangeLayoutMeasureResult;
import androidx.compose.foundation.text.TextRangeLayoutMeasureScope;
import androidx.compose.foundation.text.TextRangeScopeMeasurePolicy;
import androidx.compose.ui.text.AnnotatedString;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class sg2 implements ListenerSet.Event, TextRangeScopeMeasurePolicy {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ sg2(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AnalyticsListener) obj).onMediaMetadataChanged((AnalyticsListener.EventTime) this.b, (MediaMetadata) this.c);
    }

    @Override // androidx.compose.foundation.text.TextRangeScopeMeasurePolicy
    public TextRangeLayoutMeasureResult measure(TextRangeLayoutMeasureScope textRangeLayoutMeasureScope) {
        return TextLinkScope.textRange$lambda$0((TextLinkScope) this.b, (AnnotatedString.Range) this.c, textRangeLayoutMeasureScope);
    }
}
