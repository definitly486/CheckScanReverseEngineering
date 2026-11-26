.class public abstract Lyads/h32;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/k11;

.field public static final b:Lyads/xr2;

.field public static final c:Lyads/xr2;

.field public static final d:Lyads/xr2;

.field public static final e:Lyads/w02;

.field public static final f:Lyads/xr2;

.field public static final g:Lyads/xr2;

.field public static final h:Lyads/v02;

.field public static final i:Lyads/m36;

.field public static final j:Lyads/m36;

.field public static final k:Lyads/m36;

.field public static final l:Lyads/m36;

.field public static final m:Lyads/l66;

.field public static final n:Lyads/l66;

.field public static final o:Lyads/l66;

.field public static final p:Lyads/st3;

.field public static final q:Lyads/st3;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lyads/k11;

    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    const-wide v2, 0x3fe3333333333333L    # 0.6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    sget-object v3, Lyads/j11;->e:Lyads/j11;

    invoke-static {v3}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v4}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lyads/k11;-><init>(Lyads/xr2;Lyads/xr2;Lyads/xr2;Lyads/xr2;)V

    sput-object v0, Lyads/h32;->a:Lyads/k11;

    invoke-static {v4}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/h32;->b:Lyads/xr2;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/h32;->c:Lyads/xr2;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/h32;->d:Lyads/xr2;

    new-instance v0, Lyads/w02;

    new-instance v1, Lyads/ej2;

    invoke-direct {v1}, Lyads/ej2;-><init>()V

    invoke-direct {v0, v1}, Lyads/w02;-><init>(Lyads/ej2;)V

    sput-object v0, Lyads/h32;->e:Lyads/w02;

    sget-object v0, Lyads/nd2;->g:Lyads/nd2;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/h32;->f:Lyads/xr2;

    sget-object v1, Lyads/ri2;->e:Lyads/ri2;

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    sput-object v2, Lyads/h32;->g:Lyads/xr2;

    new-instance v2, Lyads/v02;

    new-instance v3, Lyads/pp1;

    invoke-direct {v3}, Lyads/pp1;-><init>()V

    invoke-direct {v2, v3}, Lyads/v02;-><init>(Lyads/pp1;)V

    sput-object v2, Lyads/h32;->h:Lyads/v02;

    invoke-static {}, Lyads/f11;->values()[Lyads/f11;

    move-result-object v2

    invoke-static {v2}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lpf;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lpf;-><init>(I)V

    new-instance v4, Lyads/m36;

    invoke-direct {v4, v3, v2}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v4, Lyads/h32;->i:Lyads/m36;

    invoke-static {}, Lyads/h11;->values()[Lyads/h11;

    move-result-object v2

    invoke-static {v2}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lft3;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lft3;-><init>(I)V

    new-instance v4, Lyads/m36;

    invoke-direct {v4, v3, v2}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v4, Lyads/h32;->j:Lyads/m36;

    new-instance v2, Lgt3;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lgt3;-><init>(I)V

    new-instance v4, Lyads/m36;

    invoke-direct {v4, v2, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v4, Lyads/h32;->k:Lyads/m36;

    new-instance v0, Lsf;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lsf;-><init>(I)V

    new-instance v2, Lyads/m36;

    invoke-direct {v2, v0, v1}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v2, Lyads/h32;->l:Lyads/m36;

    new-instance v0, Lo2;

    invoke-direct {v0, v3}, Lo2;-><init>(I)V

    sput-object v0, Lyads/h32;->m:Lyads/l66;

    new-instance v0, Lp2;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lp2;-><init>(I)V

    sput-object v0, Lyads/h32;->n:Lyads/l66;

    new-instance v0, Lxy;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lxy;-><init>(I)V

    sput-object v0, Lyads/h32;->o:Lyads/l66;

    new-instance v0, Lag;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/h32;->p:Lyads/st3;

    new-instance v0, Lbg;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/h32;->q:Lyads/st3;

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

.method public static final a(J)Z
    .locals 2

    .line 16
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

    .line 17
    instance-of p0, p0, Lyads/f11;

    return p0
.end method

.method public static final a(Ljava/util/List;)Z
    .locals 1

    .line 18
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

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
    instance-of p0, p0, Lyads/h11;

    return p0
.end method

.method public static final b(Ljava/util/List;)Z
    .locals 1

    .line 11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final c(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lyads/nd2;

    return p0
.end method

.method public static final d(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lyads/ri2;

    return p0
.end method
