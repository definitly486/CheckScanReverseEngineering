package androidx.navigation;

/* JADX INFO: loaded from: classes3.dex */
public final class NamedNavArgument {
    private final NavArgument argument;
    private final String name;

    public NamedNavArgument(String str, NavArgument navArgument) {
        str.getClass();
        navArgument.getClass();
        this.name = str;
        this.argument = navArgument;
    }

    public final String component1() {
        return this.name;
    }

    public final NavArgument component2() {
        return this.argument;
    }

    public final NavArgument getArgument() {
        return this.argument;
    }

    public final String getName() {
        return this.name;
    }
}
