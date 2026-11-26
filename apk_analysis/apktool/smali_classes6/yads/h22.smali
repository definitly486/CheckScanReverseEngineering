.class public abstract Lyads/h22;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/xr2;

.field public static final b:Lyads/w02;

.field public static final c:Lyads/xr2;

.field public static final d:Lyads/xr2;

.field public static final e:Lyads/xr2;

.field public static final f:Lyads/xr2;

.field public static final g:Lyads/v02;

.field public static final h:Lyads/m36;

.field public static final i:Lyads/m36;

.field public static final j:Lyads/m36;

.field public static final k:Lyads/l66;

.field public static final l:Lyads/l66;

.field public static final m:Lyads/l66;

.field public static final n:Lyads/st3;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/h22;->a:Lyads/xr2;

    new-instance v0, Lyads/w02;

    new-instance v1, Lyads/ej2;

    invoke-direct {v1}, Lyads/ej2;-><init>()V

    invoke-direct {v0, v1}, Lyads/w02;-><init>(Lyads/ej2;)V

    sput-object v0, Lyads/h22;->b:Lyads/w02;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/h22;->c:Lyads/xr2;

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/h22;->d:Lyads/xr2;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/h22;->e:Lyads/xr2;

    sget-object v0, Lyads/ri2;->e:Lyads/ri2;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/h22;->f:Lyads/xr2;

    new-instance v1, Lyads/v02;

    new-instance v2, Lyads/pp1;

    invoke-direct {v2}, Lyads/pp1;-><init>()V

    invoke-direct {v1, v2}, Lyads/v02;-><init>(Lyads/pp1;)V

    sput-object v1, Lyads/h22;->g:Lyads/v02;

    invoke-static {}, Lyads/f11;->values()[Lyads/f11;

    move-result-object v1

    invoke-static {v1}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ldt3;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ldt3;-><init>(I)V

    new-instance v4, Lyads/m36;

    invoke-direct {v4, v2, v1}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v4, Lyads/h22;->h:Lyads/m36;

    invoke-static {}, Lyads/h11;->values()[Lyads/h11;

    move-result-object v1

    invoke-static {v1}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lhf;

    const/4 v4, 0x6

    invoke-direct {v2, v4}, Lhf;-><init>(I)V

    new-instance v5, Lyads/m36;

    invoke-direct {v5, v2, v1}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v5, Lyads/h22;->i:Lyads/m36;

    new-instance v1, Lay;

    invoke-direct {v1, v3}, Lay;-><init>(I)V

    new-instance v2, Lyads/m36;

    invoke-direct {v2, v1, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v2, Lyads/h22;->j:Lyads/m36;

    new-instance v0, Lf2;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lf2;-><init>(I)V

    sput-object v0, Lyads/h22;->k:Lyads/l66;

    new-instance v0, Lg2;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lg2;-><init>(I)V

    sput-object v0, Lyads/h22;->l:Lyads/l66;

    new-instance v0, Lh2;

    invoke-direct {v0, v1}, Lh2;-><init>(I)V

    sput-object v0, Lyads/h22;->m:Lyads/l66;

    new-instance v0, Li2;

    invoke-direct {v0, v4}, Li2;-><init>(I)V

    sput-object v0, Lyads/h22;->n:Lyads/st3;

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

.method public static final c(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lyads/ri2;

    return p0
.end method
