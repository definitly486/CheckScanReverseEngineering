.class public final Lyads/q40;
.super Lyads/s40;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/s40;-><init>()V

    return-void
.end method

.method public static a(I)Lyads/s40;
    .locals 0

    if-gez p0, :cond_0

    .line 17
    sget-object p0, Lyads/s40;->b:Lyads/r40;

    return-object p0

    :cond_0
    if-lez p0, :cond_1

    sget-object p0, Lyads/s40;->c:Lyads/r40;

    return-object p0

    :cond_1
    sget-object p0, Lyads/s40;->a:Lyads/q40;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 15
    const/4 p0, 0x0

    return p0
.end method

.method public final a(II)Lyads/s40;
    .locals 0

    if-ge p1, p2, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lyads/q40;->a(I)Lyads/s40;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lyads/s40;
    .locals 0

    .line 14
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Lyads/q40;->a(I)Lyads/s40;

    move-result-object p0

    return-object p0
.end method

.method public final a(ZZ)Lyads/s40;
    .locals 0

    .line 16
    invoke-static {p1, p2}, Lyads/xu;->a(ZZ)I

    move-result p0

    invoke-static {p0}, Lyads/q40;->a(I)Lyads/s40;

    move-result-object p0

    return-object p0
.end method

.method public final b(ZZ)Lyads/s40;
    .locals 0

    invoke-static {p2, p1}, Lyads/xu;->a(ZZ)I

    move-result p0

    invoke-static {p0}, Lyads/q40;->a(I)Lyads/s40;

    move-result-object p0

    return-object p0
.end method
