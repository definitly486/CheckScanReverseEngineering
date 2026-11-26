.class public abstract Lyads/l62;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/xr2;

.field public static final b:Lyads/xr2;

.field public static final c:Lyads/xr2;

.field public static final d:Lyads/w02;

.field public static final e:Lyads/xr2;

.field public static final f:Lyads/xr2;

.field public static final g:Lyads/xr2;

.field public static final h:Lyads/yc1;

.field public static final i:Lyads/xr2;

.field public static final j:Lyads/yc1;

.field public static final k:Lyads/xr2;

.field public static final l:Lyads/v02;

.field public static final m:Lyads/m36;

.field public static final n:Lyads/m36;

.field public static final o:Lyads/m36;

.field public static final p:Lyads/l66;

.field public static final q:Lyads/l66;

.field public static final r:Lyads/st3;

.field public static final s:Lyads/l66;

.field public static final t:Lyads/l66;

.field public static final u:Lyads/st3;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/l62;->a:Lyads/xr2;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/l62;->b:Lyads/xr2;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/l62;->c:Lyads/xr2;

    new-instance v1, Lyads/w02;

    new-instance v2, Lyads/ej2;

    invoke-direct {v2}, Lyads/ej2;-><init>()V

    invoke-direct {v1, v2}, Lyads/w02;-><init>(Lyads/ej2;)V

    sput-object v1, Lyads/l62;->d:Lyads/w02;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/l62;->e:Lyads/xr2;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/l62;->f:Lyads/xr2;

    const/high16 v1, 0x14000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/l62;->g:Lyads/xr2;

    new-instance v1, Lyads/yc1;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    const-wide/16 v3, 0xc

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v4

    invoke-static {v3}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v5

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v6

    invoke-direct {v1, v2, v4, v5, v6}, Lyads/yc1;-><init>(Lyads/xr2;Lyads/xr2;Lyads/xr2;Lyads/xr2;)V

    sput-object v1, Lyads/l62;->h:Lyads/yc1;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/l62;->i:Lyads/xr2;

    new-instance v1, Lyads/yc1;

    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    invoke-static {v3}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v4

    invoke-static {v3}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v3

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    invoke-direct {v1, v2, v4, v3, v0}, Lyads/yc1;-><init>(Lyads/xr2;Lyads/xr2;Lyads/xr2;Lyads/xr2;)V

    sput-object v1, Lyads/l62;->j:Lyads/yc1;

    sget-object v0, Lyads/ri2;->e:Lyads/ri2;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/l62;->k:Lyads/xr2;

    new-instance v1, Lyads/v02;

    new-instance v2, Lyads/pp1;

    invoke-direct {v2}, Lyads/pp1;-><init>()V

    invoke-direct {v1, v2}, Lyads/v02;-><init>(Lyads/pp1;)V

    sput-object v1, Lyads/l62;->l:Lyads/v02;

    invoke-static {}, Lyads/f11;->values()[Lyads/f11;

    move-result-object v1

    invoke-static {v1}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lha2;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lha2;-><init>(I)V

    new-instance v3, Lyads/m36;

    invoke-direct {v3, v2, v1}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v3, Lyads/l62;->m:Lyads/m36;

    invoke-static {}, Lyads/h11;->values()[Lyads/h11;

    move-result-object v1

    invoke-static {v1}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Laf;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Laf;-><init>(I)V

    new-instance v4, Lyads/m36;

    invoke-direct {v4, v2, v1}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v4, Lyads/l62;->n:Lyads/m36;

    new-instance v1, Lbf;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lbf;-><init>(I)V

    new-instance v2, Lyads/m36;

    invoke-direct {v2, v1, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v2, Lyads/l62;->o:Lyads/m36;

    new-instance v0, Lw7;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/l62;->p:Lyads/l66;

    new-instance v0, Lx7;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lx7;-><init>(I)V

    sput-object v0, Lyads/l62;->q:Lyads/l66;

    new-instance v0, Lrs2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/l62;->r:Lyads/st3;

    new-instance v0, Lmj;

    invoke-direct {v0, v3}, Lmj;-><init>(I)V

    sput-object v0, Lyads/l62;->s:Lyads/l66;

    new-instance v0, Lh8;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/l62;->t:Lyads/l66;

    new-instance v0, Li8;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/l62;->u:Lyads/st3;

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

.method public static final c(J)Z
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

.method public static final c(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    instance-of p0, p0, Lyads/ri2;

    return p0
.end method
