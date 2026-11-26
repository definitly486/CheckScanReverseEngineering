package androidx.navigation.serialization;

import android.os.Bundle;
import androidx.navigation.NavType;

/* JADX INFO: loaded from: classes3.dex */
public final class UNKNOWN extends NavType<String> {
    public static final UNKNOWN INSTANCE = new UNKNOWN();

    private UNKNOWN() {
        super(false);
    }

    @Override // androidx.navigation.NavType
    public String get(Bundle bundle, String str) {
        bundle.getClass();
        str.getClass();
        return null;
    }

    @Override // androidx.navigation.NavType
    public String getName() {
        return "unknown";
    }

    @Override // androidx.navigation.NavType
    public String parseValue(String str) {
        str.getClass();
        return "null";
    }

    @Override // androidx.navigation.NavType
    public void put(Bundle bundle, String str, String str2) {
        bundle.getClass();
        str.getClass();
        str2.getClass();
    }
}
