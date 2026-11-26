package androidx.compose.ui.text.android;

import android.text.BoringLayout;
import android.text.Layout;
import android.text.TextPaint;
import defpackage.qz0;
import defpackage.y74;
import java.text.BreakIterator;
import java.util.Iterator;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes2.dex */
public final class LayoutIntrinsics {
    public static final int $stable = 8;
    private BoringLayout.Metrics _boringMetrics;
    private CharSequence _charSequenceForIntrinsicWidth;
    private float _maxIntrinsicWidth = Float.NaN;
    private float _minIntrinsicWidth = Float.NaN;
    private boolean boringMetricsIsInit;
    private final CharSequence charSequence;
    private final int textDirectionHeuristic;
    private final TextPaint textPaint;

    public LayoutIntrinsics(CharSequence charSequence, TextPaint textPaint, int i) {
        this.charSequence = charSequence;
        this.textPaint = textPaint;
        this.textDirectionHeuristic = i;
    }

    private final float computeMaxIntrinsicWidth() {
        BoringLayout.Metrics boringMetrics = getBoringMetrics();
        float fCeil = boringMetrics != null ? boringMetrics.width : -1;
        if (fCeil < 0.0f) {
            fCeil = (float) Math.ceil(getDesiredWidth$default(this, 0, 0, 3, null));
        }
        return LayoutIntrinsics_androidKt.shouldIncreaseMaxIntrinsic(fCeil, this.charSequence, this.textPaint) ? fCeil + 0.5f : fCeil;
    }

    private final float computeMinIntrinsicWidth() {
        BreakIterator lineInstance = BreakIterator.getLineInstance(this.textPaint.getTextLocale());
        CharSequence charSequence = this.charSequence;
        int i = 0;
        lineInstance.setText(new CharSequenceCharacterIterator(charSequence, 0, charSequence.length()));
        PriorityQueue priorityQueue = new PriorityQueue(10, LayoutIntrinsics_androidKt.IntRangeComparator);
        int next = lineInstance.next();
        while (true) {
            int i2 = i;
            i = next;
            if (i == -1) {
                break;
            }
            if (priorityQueue.size() < 10) {
                priorityQueue.add(new y74(i2, i, 1));
            } else {
                y74 y74Var = (y74) priorityQueue.peek();
                if (y74Var != null && y74Var.c - y74Var.b < i - i2) {
                    priorityQueue.poll();
                    priorityQueue.add(new y74(i2, i, 1));
                }
            }
            next = lineInstance.next();
        }
        if (priorityQueue.isEmpty()) {
            return 0.0f;
        }
        Iterator it = priorityQueue.iterator();
        if (!it.hasNext()) {
            qz0.e();
            return 0.0f;
        }
        y74 y74Var2 = (y74) it.next();
        float desiredWidth = getDesiredWidth(y74Var2.b, y74Var2.c);
        while (it.hasNext()) {
            y74 y74Var3 = (y74) it.next();
            desiredWidth = Math.max(desiredWidth, getDesiredWidth(y74Var3.b, y74Var3.c));
        }
        return desiredWidth;
    }

    private final CharSequence getCharSequenceForIntrinsicWidth() {
        CharSequence charSequence = this._charSequenceForIntrinsicWidth;
        if (charSequence != null) {
            charSequence.getClass();
            return charSequence;
        }
        boolean z = LayoutIntrinsics_androidKt.stripNonMetricAffectingCharSpans;
        CharSequence charSequence2 = this.charSequence;
        if (!z) {
            return charSequence2;
        }
        CharSequence charSequenceStripNonMetricAffectingCharacterStyleSpans = LayoutIntrinsics_androidKt.stripNonMetricAffectingCharacterStyleSpans(charSequence2);
        this._charSequenceForIntrinsicWidth = charSequenceStripNonMetricAffectingCharacterStyleSpans;
        return charSequenceStripNonMetricAffectingCharacterStyleSpans;
    }

    private final float getDesiredWidth(int i, int i2) {
        return Layout.getDesiredWidth(getCharSequenceForIntrinsicWidth(), i, i2, this.textPaint);
    }

    public static /* synthetic */ float getDesiredWidth$default(LayoutIntrinsics layoutIntrinsics, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = layoutIntrinsics.getCharSequenceForIntrinsicWidth().length();
        }
        return layoutIntrinsics.getDesiredWidth(i, i2);
    }

    public final BoringLayout.Metrics getBoringMetrics() {
        if (!this.boringMetricsIsInit) {
            this._boringMetrics = BoringLayoutFactory.INSTANCE.measure(this.charSequence, this.textPaint, TextLayout_androidKt.getTextDirectionHeuristic(this.textDirectionHeuristic));
            this.boringMetricsIsInit = true;
        }
        return this._boringMetrics;
    }

    public final float getMaxIntrinsicWidth() {
        if (!Float.isNaN(this._maxIntrinsicWidth)) {
            return this._maxIntrinsicWidth;
        }
        float fComputeMaxIntrinsicWidth = computeMaxIntrinsicWidth();
        this._maxIntrinsicWidth = fComputeMaxIntrinsicWidth;
        return fComputeMaxIntrinsicWidth;
    }

    public final float getMinIntrinsicWidth() {
        if (!Float.isNaN(this._minIntrinsicWidth)) {
            return this._minIntrinsicWidth;
        }
        float fComputeMinIntrinsicWidth = computeMinIntrinsicWidth();
        this._minIntrinsicWidth = fComputeMinIntrinsicWidth;
        return fComputeMinIntrinsicWidth;
    }
}
