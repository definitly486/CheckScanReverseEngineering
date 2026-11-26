package androidx.compose.runtime.tooling;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class ParameterSourceInformation {
    public static final int $stable = 0;
    private final String inlineClass;
    private final String name;
    private final int sortedIndex;

    public /* synthetic */ ParameterSourceInformation(int i, String str, String str2, int i2, jh2 jh2Var) {
        this(i, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? null : str2);
    }

    public final String getInlineClass() {
        return this.inlineClass;
    }

    public final String getName() {
        return this.name;
    }

    public final int getSortedIndex() {
        return this.sortedIndex;
    }

    public ParameterSourceInformation(int i, String str, String str2) {
        this.sortedIndex = i;
        this.name = str;
        this.inlineClass = str2;
    }
}
