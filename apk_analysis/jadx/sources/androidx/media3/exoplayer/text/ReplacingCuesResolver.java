package androidx.media3.exoplayer.text;

import androidx.media3.common.C;
import androidx.media3.common.text.Cue;
import androidx.media3.extractor.text.CuesWithTiming;
import com.google.common.collect.j;
import com.google.common.collect.w;
import defpackage.o8;
import defpackage.ua4;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
final class ReplacingCuesResolver implements CuesResolver {
    private final ArrayList<CuesWithTiming> cuesWithTimingList = new ArrayList<>();

    private int getIndexOfCuesStartingAfter(long j) {
        int i = 0;
        while (true) {
            int size = this.cuesWithTimingList.size();
            ArrayList<CuesWithTiming> arrayList = this.cuesWithTimingList;
            if (i >= size) {
                return arrayList.size();
            }
            if (j < arrayList.get(i).startTimeUs) {
                return i;
            }
            i++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0025  */
    @Override // androidx.media3.exoplayer.text.CuesResolver
    public boolean addCues(CuesWithTiming cuesWithTiming, long j) {
        boolean z;
        o8.e(cuesWithTiming.startTimeUs != C.TIME_UNSET);
        if (cuesWithTiming.startTimeUs <= j) {
            long j2 = cuesWithTiming.endTimeUs;
            if (j2 == C.TIME_UNSET || j < j2) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        for (int size = this.cuesWithTimingList.size() - 1; size >= 0; size--) {
            long j3 = cuesWithTiming.startTimeUs;
            long j4 = this.cuesWithTimingList.get(size).startTimeUs;
            ArrayList<CuesWithTiming> arrayList = this.cuesWithTimingList;
            if (j3 >= j4) {
                arrayList.add(size + 1, cuesWithTiming);
                return z;
            }
            if (arrayList.get(size).startTimeUs <= j) {
                z = false;
            }
        }
        this.cuesWithTimingList.add(0, cuesWithTiming);
        return z;
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public void clear() {
        this.cuesWithTimingList.clear();
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public void discardCuesBeforeTimeUs(long j) {
        int indexOfCuesStartingAfter = getIndexOfCuesStartingAfter(j);
        if (indexOfCuesStartingAfter == 0) {
            return;
        }
        long j2 = this.cuesWithTimingList.get(indexOfCuesStartingAfter - 1).endTimeUs;
        if (j2 == C.TIME_UNSET || j2 >= j) {
            indexOfCuesStartingAfter--;
        }
        this.cuesWithTimingList.subList(0, indexOfCuesStartingAfter).clear();
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public j<Cue> getCuesAtTimeUs(long j) {
        int indexOfCuesStartingAfter = getIndexOfCuesStartingAfter(j);
        if (indexOfCuesStartingAfter == 0) {
            j.b bVar = j.c;
            return w.f;
        }
        CuesWithTiming cuesWithTiming = this.cuesWithTimingList.get(indexOfCuesStartingAfter - 1);
        long j2 = cuesWithTiming.endTimeUs;
        if (j2 == C.TIME_UNSET || j < j2) {
            return cuesWithTiming.cues;
        }
        j.b bVar2 = j.c;
        return w.f;
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public long getNextCueChangeTimeUs(long j) {
        if (this.cuesWithTimingList.isEmpty()) {
            return Long.MIN_VALUE;
        }
        if (j < this.cuesWithTimingList.get(0).startTimeUs) {
            return this.cuesWithTimingList.get(0).startTimeUs;
        }
        int i = 1;
        while (true) {
            int size = this.cuesWithTimingList.size();
            ArrayList<CuesWithTiming> arrayList = this.cuesWithTimingList;
            if (i >= size) {
                long j2 = ((CuesWithTiming) ua4.a(arrayList)).endTimeUs;
                if (j2 == C.TIME_UNSET || j >= j2) {
                    return Long.MIN_VALUE;
                }
                return j2;
            }
            CuesWithTiming cuesWithTiming = arrayList.get(i);
            if (j < cuesWithTiming.startTimeUs) {
                long j3 = this.cuesWithTimingList.get(i - 1).endTimeUs;
                return (j3 == C.TIME_UNSET || j3 <= j || j3 >= cuesWithTiming.startTimeUs) ? cuesWithTiming.startTimeUs : j3;
            }
            i++;
        }
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public long getPreviousCueChangeTimeUs(long j) {
        if (this.cuesWithTimingList.isEmpty() || j < this.cuesWithTimingList.get(0).startTimeUs) {
            return C.TIME_UNSET;
        }
        int i = 1;
        while (true) {
            int size = this.cuesWithTimingList.size();
            ArrayList<CuesWithTiming> arrayList = this.cuesWithTimingList;
            if (i >= size) {
                CuesWithTiming cuesWithTiming = (CuesWithTiming) ua4.a(arrayList);
                long j2 = cuesWithTiming.endTimeUs;
                return (j2 == C.TIME_UNSET || j < j2) ? cuesWithTiming.startTimeUs : j2;
            }
            long j3 = arrayList.get(i).startTimeUs;
            if (j == j3) {
                return j3;
            }
            if (j < j3) {
                CuesWithTiming cuesWithTiming2 = this.cuesWithTimingList.get(i - 1);
                long j4 = cuesWithTiming2.endTimeUs;
                return (j4 == C.TIME_UNSET || j4 > j) ? cuesWithTiming2.startTimeUs : j4;
            }
            i++;
        }
    }
}
