.class public abstract Lyads/dx1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/iw1;

.field public static final b:Lyads/iw1;

.field public static final c:Lyads/fx1;

.field public static final d:Lyads/st3;

.field public static final e:Lyads/st3;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/iw1;

    new-instance v1, Lyads/nx1;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v3

    invoke-direct {v1, v3}, Lyads/nx1;-><init>(Lyads/as2;)V

    invoke-direct {v0, v1}, Lyads/iw1;-><init>(Lyads/nx1;)V

    sput-object v0, Lyads/dx1;->a:Lyads/iw1;

    new-instance v0, Lyads/iw1;

    new-instance v1, Lyads/nx1;

    invoke-static {v2}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    invoke-direct {v1, v2}, Lyads/nx1;-><init>(Lyads/as2;)V

    invoke-direct {v0, v1}, Lyads/iw1;-><init>(Lyads/nx1;)V

    sput-object v0, Lyads/dx1;->b:Lyads/iw1;

    new-instance v0, Lyads/fx1;

    new-instance v1, Lyads/ux1;

    sget-object v2, Lyads/tx1;->f:Lyads/tx1;

    invoke-static {v2}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    invoke-direct {v1, v2}, Lyads/ux1;-><init>(Lyads/as2;)V

    invoke-direct {v0, v1}, Lyads/fx1;-><init>(Lyads/ux1;)V

    sput-object v0, Lyads/dx1;->c:Lyads/fx1;

    new-instance v0, Lp2;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lp2;-><init>(I)V

    sput-object v0, Lyads/dx1;->d:Lyads/st3;

    new-instance v0, Lxy;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lxy;-><init>(I)V

    sput-object v0, Lyads/dx1;->e:Lyads/st3;

    return-void
.end method

.method public static final a(Ljava/util/List;)Z
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final b(Ljava/util/List;)Z
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
