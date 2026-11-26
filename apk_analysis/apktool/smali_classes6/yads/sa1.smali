.class public abstract Lyads/sa1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/xr2;

.field public static final b:Lyads/w02;

.field public static final c:Lyads/xr2;

.field public static final d:Lyads/v02;

.field public static final e:Lyads/m36;

.field public static final f:Lyads/m36;

.field public static final g:Lyads/m36;

.field public static final h:Lyads/l66;

.field public static final i:Lyads/l66;

.field public static final j:Lyads/l66;

.field public static final k:Lyads/st3;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    new-instance v1, Lyads/xr2;

    invoke-direct {v1, v0}, Lyads/xr2;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lyads/sa1;->a:Lyads/xr2;

    new-instance v0, Lyads/w02;

    new-instance v1, Lyads/ej2;

    invoke-direct {v1}, Lyads/ej2;-><init>()V

    invoke-direct {v0, v1}, Lyads/w02;-><init>(Lyads/ej2;)V

    sput-object v0, Lyads/sa1;->b:Lyads/w02;

    sget-object v0, Lyads/ri2;->e:Lyads/ri2;

    new-instance v1, Lyads/xr2;

    invoke-direct {v1, v0}, Lyads/xr2;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lyads/sa1;->c:Lyads/xr2;

    new-instance v1, Lyads/v02;

    new-instance v2, Lyads/pp1;

    invoke-direct {v2}, Lyads/pp1;-><init>()V

    invoke-direct {v1, v2}, Lyads/v02;-><init>(Lyads/pp1;)V

    sput-object v1, Lyads/sa1;->d:Lyads/v02;

    invoke-static {}, Lyads/f11;->values()[Lyads/f11;

    move-result-object v1

    invoke-static {v1}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Laf;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Laf;-><init>(I)V

    new-instance v4, Lyads/m36;

    invoke-direct {v4, v2, v1}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v4, Lyads/sa1;->e:Lyads/m36;

    invoke-static {}, Lyads/h11;->values()[Lyads/h11;

    move-result-object v1

    invoke-static {v1}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lbf;

    const/4 v4, 0x5

    invoke-direct {v2, v4}, Lbf;-><init>(I)V

    new-instance v4, Lyads/m36;

    invoke-direct {v4, v2, v1}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v4, Lyads/sa1;->f:Lyads/m36;

    new-instance v1, Lcf;

    invoke-direct {v1, v3}, Lcf;-><init>(I)V

    new-instance v2, Lyads/m36;

    invoke-direct {v2, v1, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v2, Lyads/sa1;->g:Lyads/m36;

    new-instance v0, Lx7;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lx7;-><init>(I)V

    sput-object v0, Lyads/sa1;->h:Lyads/l66;

    new-instance v0, Lrs2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/sa1;->i:Lyads/l66;

    new-instance v0, Lmj;

    invoke-direct {v0, v3}, Lmj;-><init>(I)V

    sput-object v0, Lyads/sa1;->j:Lyads/l66;

    new-instance v0, Lh8;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/sa1;->k:Lyads/st3;

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
