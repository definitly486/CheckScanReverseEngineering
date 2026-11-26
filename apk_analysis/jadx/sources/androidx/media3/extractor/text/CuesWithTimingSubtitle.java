package androidx.media3.extractor.text;

import androidx.media3.common.C;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.collect.j;
import com.google.common.collect.w;
import defpackage.f06;
import defpackage.hi5;
import defpackage.lw0;
import defpackage.o8;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class CuesWithTimingSubtitle implements Subtitle {
    private static final f06<CuesWithTiming> CUES_BY_START_TIME_ASCENDING;
    private static final String TAG = "CuesWithTimingSubtitle";
    private final j<j<Cue>> eventCues;
    private final long[] eventTimesUs;

    static {
        hi5 hi5Var = hi5.b;
        a aVar = new a();
        hi5Var.getClass();
        CUES_BY_START_TIME_ASCENDING = new lw0(aVar, hi5Var);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00f2  */
    public CuesWithTimingSubtitle(List<CuesWithTiming> list) {
        int i = 0;
        if (list.size() == 1) {
            Iterator<T> it = list.iterator();
            Object next = it.next();
            if (it.hasNext()) {
                StringBuilder sb = new StringBuilder("expected one element but was: <");
                sb.append(next);
                while (i < 4 && it.hasNext()) {
                    sb.append(", ");
                    sb.append(it.next());
                    i++;
                }
                if (it.hasNext()) {
                    sb.append(", ...");
                }
                sb.append('>');
                throw new IllegalArgumentException(sb.toString());
            }
            CuesWithTiming cuesWithTiming = (CuesWithTiming) next;
            long jNormalizeUnsetStartTimeToZero = normalizeUnsetStartTimeToZero(cuesWithTiming.startTimeUs);
            long j = cuesWithTiming.durationUs;
            j<Cue> jVar = cuesWithTiming.cues;
            if (j == C.TIME_UNSET) {
                this.eventCues = j.s(jVar);
                this.eventTimesUs = new long[]{jNormalizeUnsetStartTimeToZero};
                return;
            } else {
                j.b bVar = j.c;
                this.eventCues = j.t(jVar, w.f);
                this.eventTimesUs = new long[]{jNormalizeUnsetStartTimeToZero, cuesWithTiming.durationUs + jNormalizeUnsetStartTimeToZero};
                return;
            }
        }
        long[] jArr = new long[list.size() * 2];
        this.eventTimesUs = jArr;
        Arrays.fill(jArr, Long.MAX_VALUE);
        ArrayList arrayList = new ArrayList();
        w wVarX = j.x(CUES_BY_START_TIME_ASCENDING, list);
        int i2 = 0;
        while (i < wVarX.e) {
            CuesWithTiming cuesWithTiming2 = (CuesWithTiming) wVarX.get(i);
            long jNormalizeUnsetStartTimeToZero2 = normalizeUnsetStartTimeToZero(cuesWithTiming2.startTimeUs);
            long j2 = cuesWithTiming2.durationUs + jNormalizeUnsetStartTimeToZero2;
            if (i2 != 0) {
                int i3 = i2 - 1;
                long j3 = this.eventTimesUs[i3];
                if (j3 < jNormalizeUnsetStartTimeToZero2) {
                    this.eventTimesUs[i2] = jNormalizeUnsetStartTimeToZero2;
                    arrayList.add(cuesWithTiming2.cues);
                    i2++;
                } else if (j3 == jNormalizeUnsetStartTimeToZero2 && ((j) arrayList.get(i3)).isEmpty()) {
                    arrayList.set(i3, cuesWithTiming2.cues);
                } else {
                    Log.w(TAG, "Truncating unsupported overlapping cues.");
                    this.eventTimesUs[i3] = jNormalizeUnsetStartTimeToZero2;
                    arrayList.set(i3, cuesWithTiming2.cues);
                }
            } else {
                this.eventTimesUs[i2] = jNormalizeUnsetStartTimeToZero2;
                arrayList.add(cuesWithTiming2.cues);
                i2++;
            }
            if (cuesWithTiming2.durationUs != C.TIME_UNSET) {
                this.eventTimesUs[i2] = j2;
                arrayList.add(w.f);
                i2++;
            }
            i++;
        }
        this.eventCues = j.o(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Comparable lambda$static$0(CuesWithTiming cuesWithTiming) {
        return Long.valueOf(normalizeUnsetStartTimeToZero(cuesWithTiming.startTimeUs));
    }

    private static long normalizeUnsetStartTimeToZero(long j) {
        if (j == C.TIME_UNSET) {
            return 0L;
        }
        return j;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public j<Cue> getCues(long j) {
        int iBinarySearchFloor = Util.binarySearchFloor(this.eventTimesUs, j, true, false);
        if (iBinarySearchFloor != -1) {
            return this.eventCues.get(iBinarySearchFloor);
        }
        j.b bVar = j.c;
        return w.f;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public long getEventTime(int i) {
        o8.e(i < this.eventCues.size());
        return this.eventTimesUs[i];
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public int getEventTimeCount() {
        return this.eventCues.size();
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        int iBinarySearchCeil = Util.binarySearchCeil(this.eventTimesUs, j, false, false);
        if (iBinarySearchCeil < this.eventCues.size()) {
            return iBinarySearchCeil;
        }
        return -1;
    }
}
