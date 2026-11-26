package androidx.privacysandbox.ads.adservices.common;

import defpackage.aa4;
import defpackage.e2;
import defpackage.jh2;
import defpackage.kx2;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@ExperimentalFeatures.Ext8OptIn
public final class FrequencyCapFilters {
    public static final int AD_EVENT_TYPE_CLICK = 3;
    public static final int AD_EVENT_TYPE_IMPRESSION = 1;
    public static final int AD_EVENT_TYPE_VIEW = 2;
    public static final int AD_EVENT_TYPE_WIN = 0;
    public static final Companion Companion = new Companion(null);
    private final List<KeyedFrequencyCap> keyedFrequencyCapsForClickEvents;
    private final List<KeyedFrequencyCap> keyedFrequencyCapsForImpressionEvents;
    private final List<KeyedFrequencyCap> keyedFrequencyCapsForViewEvents;
    private final List<KeyedFrequencyCap> keyedFrequencyCapsForWinEvents;

    @Retention(RetentionPolicy.SOURCE)
    public @interface AdEventType {
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ FrequencyCapFilters(List list, List list2, List list3, List list4, int i, jh2 jh2Var) {
        int i2 = i & 1;
        kx2 kx2Var = kx2.b;
        this(i2 != 0 ? kx2Var : list, (i & 2) != 0 ? kx2Var : list2, (i & 4) != 0 ? kx2Var : list3, (i & 8) != 0 ? kx2Var : list4);
    }

    private final List<android.adservices.common.KeyedFrequencyCap> convertToAdServices(List<KeyedFrequencyCap> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<KeyedFrequencyCap> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().convertToAdServices$ads_adservices_release());
        }
        return arrayList;
    }

    public final android.adservices.common.FrequencyCapFilters convertToAdServices$ads_adservices_release() {
        android.adservices.common.FrequencyCapFilters frequencyCapFiltersBuild = new android.adservices.common.FrequencyCapFilters.Builder().setKeyedFrequencyCapsForWinEvents(convertToAdServices(this.keyedFrequencyCapsForWinEvents)).setKeyedFrequencyCapsForImpressionEvents(convertToAdServices(this.keyedFrequencyCapsForImpressionEvents)).setKeyedFrequencyCapsForViewEvents(convertToAdServices(this.keyedFrequencyCapsForViewEvents)).setKeyedFrequencyCapsForClickEvents(convertToAdServices(this.keyedFrequencyCapsForClickEvents)).build();
        frequencyCapFiltersBuild.getClass();
        return frequencyCapFiltersBuild;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FrequencyCapFilters)) {
            return false;
        }
        FrequencyCapFilters frequencyCapFilters = (FrequencyCapFilters) obj;
        return aa4.e(this.keyedFrequencyCapsForWinEvents, frequencyCapFilters.keyedFrequencyCapsForWinEvents) && aa4.e(this.keyedFrequencyCapsForImpressionEvents, frequencyCapFilters.keyedFrequencyCapsForImpressionEvents) && aa4.e(this.keyedFrequencyCapsForViewEvents, frequencyCapFilters.keyedFrequencyCapsForViewEvents) && aa4.e(this.keyedFrequencyCapsForClickEvents, frequencyCapFilters.keyedFrequencyCapsForClickEvents);
    }

    public final List<KeyedFrequencyCap> getKeyedFrequencyCapsForClickEvents() {
        return this.keyedFrequencyCapsForClickEvents;
    }

    public final List<KeyedFrequencyCap> getKeyedFrequencyCapsForImpressionEvents() {
        return this.keyedFrequencyCapsForImpressionEvents;
    }

    public final List<KeyedFrequencyCap> getKeyedFrequencyCapsForViewEvents() {
        return this.keyedFrequencyCapsForViewEvents;
    }

    public final List<KeyedFrequencyCap> getKeyedFrequencyCapsForWinEvents() {
        return this.keyedFrequencyCapsForWinEvents;
    }

    public int hashCode() {
        return this.keyedFrequencyCapsForClickEvents.hashCode() + e2.b(this.keyedFrequencyCapsForViewEvents, e2.b(this.keyedFrequencyCapsForImpressionEvents, this.keyedFrequencyCapsForWinEvents.hashCode() * 31, 31), 31);
    }

    public String toString() {
        return "FrequencyCapFilters: keyedFrequencyCapsForWinEvents=" + this.keyedFrequencyCapsForWinEvents + ", keyedFrequencyCapsForImpressionEvents=" + this.keyedFrequencyCapsForImpressionEvents + ", keyedFrequencyCapsForViewEvents=" + this.keyedFrequencyCapsForViewEvents + ", keyedFrequencyCapsForClickEvents=" + this.keyedFrequencyCapsForClickEvents;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FrequencyCapFilters(List<KeyedFrequencyCap> list) {
        this(list, null, null, null, 14, null);
        list.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FrequencyCapFilters(List<KeyedFrequencyCap> list, List<KeyedFrequencyCap> list2) {
        this(list, list2, null, null, 12, null);
        list.getClass();
        list2.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FrequencyCapFilters(List<KeyedFrequencyCap> list, List<KeyedFrequencyCap> list2, List<KeyedFrequencyCap> list3) {
        this(list, list2, list3, null, 8, null);
        list.getClass();
        list2.getClass();
        list3.getClass();
    }

    public FrequencyCapFilters(List<KeyedFrequencyCap> list, List<KeyedFrequencyCap> list2, List<KeyedFrequencyCap> list3, List<KeyedFrequencyCap> list4) {
        list.getClass();
        list2.getClass();
        list3.getClass();
        list4.getClass();
        this.keyedFrequencyCapsForWinEvents = list;
        this.keyedFrequencyCapsForImpressionEvents = list2;
        this.keyedFrequencyCapsForViewEvents = list3;
        this.keyedFrequencyCapsForClickEvents = list4;
    }

    public FrequencyCapFilters() {
        this(null, null, null, null, 15, null);
    }
}
