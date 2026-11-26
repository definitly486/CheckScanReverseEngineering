package yads;

import android.net.wifi.ScanResult;
import java.util.Comparator;

/* JADX INFO: loaded from: classes6.dex */
public final class vu4 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return defpackage.pp1.a(Integer.valueOf(((ScanResult) obj2).level), Integer.valueOf(((ScanResult) obj).level));
    }
}
