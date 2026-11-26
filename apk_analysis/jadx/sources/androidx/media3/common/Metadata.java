package androidx.media3.common;

import androidx.media3.common.util.Util;
import com.google.common.collect.j;
import defpackage.bf6;
import defpackage.df6;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class Metadata {
    private final Entry[] entries;
    public final long presentationTimeUs;

    public interface Entry {
        default byte[] getWrappedMetadataBytes() {
            return null;
        }

        default Format getWrappedMetadataFormat() {
            return null;
        }

        default void populateMediaMetadata(MediaMetadata.Builder builder) {
        }
    }

    public Metadata(List<? extends Entry> list) {
        this((Entry[]) list.toArray(new Entry[0]));
    }

    private <T extends Entry> T entryIfMatches(Entry entry, Class<T> cls, bf6<T> bf6Var) {
        if (!cls.isAssignableFrom(entry.getClass())) {
            return null;
        }
        T tCast = cls.cast(entry);
        if (bf6Var.apply(tCast)) {
            return tCast;
        }
        return null;
    }

    public Metadata copyWithAppendedEntries(Entry... entryArr) {
        return entryArr.length == 0 ? this : new Metadata(this.presentationTimeUs, (Entry[]) Util.nullSafeArrayConcatenation(this.entries, entryArr));
    }

    public Metadata copyWithAppendedEntriesFrom(Metadata metadata) {
        return metadata == null ? this : copyWithAppendedEntries(metadata.entries);
    }

    public Metadata copyWithPresentationTimeUs(long j) {
        return this.presentationTimeUs == j ? this : new Metadata(j, this.entries);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Metadata.class == obj.getClass()) {
            Metadata metadata = (Metadata) obj;
            if (Arrays.equals(this.entries, metadata.entries) && this.presentationTimeUs == metadata.presentationTimeUs) {
                return true;
            }
        }
        return false;
    }

    public Entry get(int i) {
        return this.entries[i];
    }

    public <T extends Entry> j<T> getEntriesOfType(Class<T> cls) {
        j.b bVar = j.c;
        j.a aVar = new j.a();
        for (Entry entry : this.entries) {
            if (cls.isAssignableFrom(entry.getClass())) {
                aVar.c(cls.cast(entry));
            }
        }
        return aVar.g();
    }

    public <T extends Entry> T getFirstEntryOfType(Class<T> cls) {
        df6 df6Var = df6.ALWAYS_TRUE;
        df6Var.getClass();
        return (T) getFirstMatchingEntry(cls, df6Var);
    }

    public <T extends Entry> T getFirstMatchingEntry(Class<T> cls, bf6<T> bf6Var) {
        for (Entry entry : this.entries) {
            T t = (T) entryIfMatches(entry, cls, bf6Var);
            if (t != null) {
                return t;
            }
        }
        return null;
    }

    public <T extends Entry> j<T> getMatchingEntries(Class<T> cls, bf6<T> bf6Var) {
        j.b bVar = j.c;
        j.a aVar = new j.a();
        for (Entry entry : this.entries) {
            Entry entryEntryIfMatches = entryIfMatches(entry, cls, bf6Var);
            if (entryEntryIfMatches != null) {
                aVar.c(entryEntryIfMatches);
            }
        }
        return aVar.g();
    }

    public int hashCode() {
        return Long.hashCode(this.presentationTimeUs) + (Arrays.hashCode(this.entries) * 31);
    }

    public int length() {
        return this.entries.length;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("entries=");
        sb.append(Arrays.toString(this.entries));
        if (this.presentationTimeUs == C.TIME_UNSET) {
            str = "";
        } else {
            str = ", presentationTimeUs=" + this.presentationTimeUs;
        }
        sb.append(str);
        return sb.toString();
    }

    public Metadata(long j, Entry... entryArr) {
        this.presentationTimeUs = j;
        this.entries = entryArr;
    }

    public Metadata(Entry... entryArr) {
        this(C.TIME_UNSET, entryArr);
    }

    public Metadata(long j, List<? extends Entry> list) {
        this(j, (Entry[]) list.toArray(new Entry[0]));
    }
}
