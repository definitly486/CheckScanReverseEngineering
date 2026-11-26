.class public final Lce1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Lc81;",
        "Lc81;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lce1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lce1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lce1;->f:Lce1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lc81;

    check-cast p2, Lc81;

    invoke-virtual {p1}, Lc81;->b()J

    move-result-wide v0

    invoke-virtual {p2}, Lc81;->b()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    invoke-virtual {p2}, Lc81;->a()Lp71;

    move-result-object p0

    invoke-virtual {p0}, Lp71;->a()I

    move-result p0

    invoke-virtual {p1}, Lc81;->a()Lp71;

    move-result-object p1

    invoke-virtual {p1}, Lp71;->a()I

    move-result p1

    sub-int/2addr p0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lc81;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lc81;->b()J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
