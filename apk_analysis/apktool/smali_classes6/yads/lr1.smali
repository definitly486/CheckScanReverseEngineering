.class public abstract Lyads/lr1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/xr2;

.field public static final b:Lyads/xr2;

.field public static final c:Lyads/xr2;

.field public static final d:Lyads/xr2;

.field public static final e:Lyads/xr2;

.field public static final f:Lyads/m36;

.field public static final g:Lyads/l66;

.field public static final h:Lyads/l66;

.field public static final i:Lyads/l66;

.field public static final j:Lyads/l66;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lyads/o11;->i:Lyads/o11;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/lr1;->a:Lyads/xr2;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    sput-object v2, Lyads/lr1;->b:Lyads/xr2;

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    sput-object v2, Lyads/lr1;->c:Lyads/xr2;

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    sput-object v2, Lyads/lr1;->d:Lyads/xr2;

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/lr1;->e:Lyads/xr2;

    new-instance v1, Lmg6;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lmg6;-><init>(I)V

    new-instance v3, Lyads/m36;

    invoke-direct {v3, v1, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v3, Lyads/lr1;->f:Lyads/m36;

    new-instance v0, Ltg;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ltg;-><init>(I)V

    sput-object v0, Lyads/lr1;->g:Lyads/l66;

    new-instance v0, Lug;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lug;-><init>(I)V

    sput-object v0, Lyads/lr1;->h:Lyads/l66;

    new-instance v0, Lvg;

    invoke-direct {v0, v2}, Lvg;-><init>(I)V

    sput-object v0, Lyads/lr1;->i:Lyads/l66;

    new-instance v0, Lwg;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/lr1;->j:Lyads/l66;

    return-void
.end method

.method public static final a(D)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final a(Ljava/lang/Object;)Z
    .locals 0

    .line 16
    instance-of p0, p0, Lyads/o11;

    return p0
.end method

.method public static final b(D)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final c(D)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final d(D)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
