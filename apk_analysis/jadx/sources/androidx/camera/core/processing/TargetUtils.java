package androidx.camera.core.processing;

import androidx.core.util.Preconditions;
import defpackage.n2;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class TargetUtils {
    private TargetUtils() {
    }

    public static void checkSupportedTargets(Collection<Integer> collection, int i) {
        boolean zContains = collection.contains(Integer.valueOf(i));
        Locale locale = Locale.US;
        Preconditions.checkArgument(zContains, n2.d("Effects target ", getHumanReadableName(i), " is not in the supported list ", getHumanReadableNames(collection), "."));
    }

    public static String getHumanReadableName(int i) {
        ArrayList arrayList = new ArrayList();
        if ((i & 4) != 0) {
            arrayList.add("IMAGE_CAPTURE");
        }
        if ((i & 1) != 0) {
            arrayList.add("PREVIEW");
        }
        if ((i & 2) != 0) {
            arrayList.add("VIDEO_CAPTURE");
        }
        return String.join("|", arrayList);
    }

    private static String getHumanReadableNames(Collection<Integer> collection) {
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(getHumanReadableName(it.next().intValue()));
        }
        return "[" + String.join(", ", arrayList) + "]";
    }

    public static int getNumberOfTargets(int i) {
        int i2 = 0;
        while (i != 0) {
            i2 += i & 1;
            i >>= 1;
        }
        return i2;
    }

    public static boolean isSuperset(int i, int i2) {
        return (i & i2) == i2;
    }
}
