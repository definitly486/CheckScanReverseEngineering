.class public abstract Lyads/r22;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/xr2;

.field public static final b:Lyads/xr2;

.field public static final c:Lyads/xr2;

.field public static final d:Lyads/xr2;

.field public static final e:Lyads/m36;

.field public static final f:Lyads/m36;

.field public static final g:Lyads/l66;

.field public static final h:Lyads/l66;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v0, 0xc

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/r22;->a:Lyads/xr2;

    sget-object v0, Lyads/g12;->f:Lyads/g12;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/r22;->b:Lyads/xr2;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/r22;->c:Lyads/xr2;

    const/high16 v1, -0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/r22;->d:Lyads/xr2;

    new-instance v1, Lin6;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lin6;-><init>(I)V

    new-instance v3, Lyads/m36;

    invoke-direct {v3, v1, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v3, Lyads/r22;->e:Lyads/m36;

    invoke-static {}, Lyads/tf1;->values()[Lyads/tf1;

    move-result-object v0

    invoke-static {v0}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lsc7;

    invoke-direct {v1, v2}, Lsc7;-><init>(I)V

    new-instance v2, Lyads/m36;

    invoke-direct {v2, v1, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v2, Lyads/r22;->f:Lyads/m36;

    new-instance v0, Lpg;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lpg;-><init>(I)V

    sput-object v0, Lyads/r22;->g:Lyads/l66;

    new-instance v0, Lqg;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lqg;-><init>(I)V

    sput-object v0, Lyads/r22;->h:Lyads/l66;

    return-void
.end method

.method public static final a(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final a(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    instance-of p0, p0, Lyads/g12;

    return p0
.end method

.method public static final b(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final b(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    instance-of p0, p0, Lyads/tf1;

    return p0
.end method
