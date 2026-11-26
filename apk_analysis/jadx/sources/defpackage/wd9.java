package defpackage;

import defpackage.jh5;

/* JADX INFO: loaded from: classes3.dex */
public abstract class wd9<View extends jh5> {
    private final Class<? extends b78> stateStrategyType;
    private final String tag;

    public wd9(String str, Class<? extends b78> cls) {
        this.tag = str;
        this.stateStrategyType = cls;
    }

    public abstract void apply(View view);

    public Class<? extends b78> getStrategyType() {
        return this.stateStrategyType;
    }

    public String getTag() {
        return this.tag;
    }
}
