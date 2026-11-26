package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class fc4 {
    public final boolean a;
    public final boolean b;
    public final String c;
    public final boolean d;
    public final String e;
    public final boolean f;
    public final yk1 g;
    public final boolean h;

    public fc4(boolean z, boolean z2, String str, boolean z3, String str2, boolean z4, yk1 yk1Var, boolean z5) {
        str.getClass();
        str2.getClass();
        yk1Var.getClass();
        this.a = z;
        this.b = z2;
        this.c = str;
        this.d = z3;
        this.e = str2;
        this.f = z4;
        this.g = yk1Var;
        this.h = z5;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("JsonConfiguration(encodeDefaults=false, ignoreUnknownKeys=");
        sb.append(this.a);
        sb.append(", isLenient=false, allowStructuredMapKeys=false, prettyPrint=false, explicitNulls=");
        sb.append(this.b);
        sb.append(", prettyPrintIndent='");
        sb.append(this.c);
        sb.append("', coerceInputValues=");
        sb.append(this.d);
        sb.append(", useArrayPolymorphism=false, classDiscriminator='");
        sb.append(this.e);
        sb.append("', allowSpecialFloatingPointValues=false, useAlternativeNames=");
        sb.append(this.f);
        sb.append(", namingStrategy=null, decodeEnumsCaseInsensitive=false, allowTrailingComma=false, allowComments=false, classDiscriminatorMode=");
        sb.append(this.g);
        sb.append(", exceptionsWithDebugInfo=");
        return sg.d(sb, this.h, ')');
    }
}
