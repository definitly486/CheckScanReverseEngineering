.class public final Lyads/oo4;
.super Lyads/e;
.source "SourceFile"


# static fields
.field public static final d:Lyads/oo4;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/oo4;

    invoke-direct {v0}, Lyads/oo4;-><init>()V

    sput-object v0, Lyads/oo4;->d:Lyads/oo4;

    const-string v0, "decimalFormat"

    sput-object v0, Lyads/oo4;->e:Ljava/lang/String;

    new-instance v0, Lyads/w13;

    sget-object v1, Lyads/xo2;->d:Lyads/xo2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    new-instance v1, Lyads/w13;

    sget-object v3, Lyads/xo2;->f:Lyads/xo2;

    invoke-direct {v1, v3, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    filled-new-array {v0, v1}, [Lyads/w13;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/oo4;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/text/DecimalFormat;Ljava/lang/Number;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    double-to-float p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 14
    sget-object p0, Lyads/oo4;->f:Ljava/util/List;

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Double;

    return-object p1
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    .line 5
    sget-object p0, Lyads/oo4;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final c(Ljava/util/List;)Ljava/util/Locale;
    .locals 0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method
