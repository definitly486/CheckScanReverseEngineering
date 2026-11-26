.class public final Lyads/qt4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a()J
    .locals 2

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ly22;I)Lyads/tt4;
    .locals 1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    new-instance p0, Lyads/i90;

    invoke-direct {p0}, Lyads/i90;-><init>()V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object p1

    invoke-static {p1, p0}, Lyads/xn;->a(Lhq1;Lyads/i90;)Ly22;

    move-result-object p0

    :cond_0
    new-instance p1, Lcg;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/tt4;

    invoke-direct {v0, p0, p1}, Lyads/tt4;-><init>(Ly22;Lyads/ax5;)V

    return-object v0
.end method
