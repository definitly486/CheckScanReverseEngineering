package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzaz;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class g2b implements Iterator {
    public static final g2b zza;
    private static final /* synthetic */ g2b[] zzb;

    static {
        g2b g2bVar = new g2b("INSTANCE", 0);
        zza = g2bVar;
        zzb = new g2b[]{g2bVar};
    }

    public static g2b[] values() {
        return (g2b[]) zzb.clone();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        zzaz.zzf(false, "no calls to next() since the last call to remove()");
    }
}
