.class public abstract Lyads/t12;
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
    .locals 5

    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/t12;->a:Lyads/xr2;

    sget-object v0, Lyads/o12;->h:Lyads/o12;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/t12;->b:Lyads/xr2;

    sget-object v1, Lyads/o11;->i:Lyads/o11;

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    sput-object v2, Lyads/t12;->c:Lyads/xr2;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    sput-object v2, Lyads/t12;->d:Lyads/xr2;

    new-instance v2, Lmg6;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lmg6;-><init>(I)V

    new-instance v4, Lyads/m36;

    invoke-direct {v4, v2, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v4, Lyads/t12;->e:Lyads/m36;

    new-instance v0, Lji1;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lji1;-><init>(I)V

    new-instance v2, Lyads/m36;

    invoke-direct {v2, v0, v1}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v2, Lyads/t12;->f:Lyads/m36;

    new-instance v0, Lug;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lug;-><init>(I)V

    sput-object v0, Lyads/t12;->g:Lyads/l66;

    new-instance v0, Lvg;

    invoke-direct {v0, v3}, Lvg;-><init>(I)V

    sput-object v0, Lyads/t12;->h:Lyads/l66;

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
    instance-of p0, p0, Lyads/o12;

    return p0
.end method

.method public static final b(J)Z
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

.method public static final b(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    instance-of p0, p0, Lyads/o11;

    return p0
.end method
