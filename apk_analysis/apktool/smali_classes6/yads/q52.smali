.class public abstract Lyads/q52;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/xr2;

.field public static final b:Lyads/w02;

.field public static final c:Lyads/xr2;

.field public static final d:Lyads/xr2;

.field public static final e:Lyads/v02;

.field public static final f:Lyads/m36;

.field public static final g:Lyads/m36;

.field public static final h:Lyads/m36;

.field public static final i:Lyads/l66;

.field public static final j:Lyads/l66;

.field public static final k:Lyads/l66;

.field public static final l:Lyads/st3;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/q52;->a:Lyads/xr2;

    new-instance v0, Lyads/w02;

    new-instance v1, Lyads/ej2;

    invoke-direct {v1}, Lyads/ej2;-><init>()V

    invoke-direct {v0, v1}, Lyads/w02;-><init>(Lyads/ej2;)V

    sput-object v0, Lyads/q52;->b:Lyads/w02;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/q52;->c:Lyads/xr2;

    sget-object v0, Lyads/ri2;->e:Lyads/ri2;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/q52;->d:Lyads/xr2;

    new-instance v1, Lyads/v02;

    new-instance v2, Lyads/pp1;

    invoke-direct {v2}, Lyads/pp1;-><init>()V

    invoke-direct {v1, v2}, Lyads/v02;-><init>(Lyads/pp1;)V

    sput-object v1, Lyads/q52;->e:Lyads/v02;

    invoke-static {}, Lyads/f11;->values()[Lyads/f11;

    move-result-object v1

    invoke-static {v1}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Llg8;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Llg8;-><init>(I)V

    new-instance v3, Lyads/m36;

    invoke-direct {v3, v2, v1}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v3, Lyads/q52;->f:Lyads/m36;

    invoke-static {}, Lyads/h11;->values()[Lyads/h11;

    move-result-object v1

    invoke-static {v1}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lxy2;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lxy2;-><init>(I)V

    new-instance v3, Lyads/m36;

    invoke-direct {v3, v2, v1}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v3, Lyads/q52;->g:Lyads/m36;

    new-instance v1, Lem4;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lem4;-><init>(I)V

    new-instance v2, Lyads/m36;

    invoke-direct {v2, v1, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v2, Lyads/q52;->h:Lyads/m36;

    new-instance v0, Ldc;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ldc;-><init>(I)V

    sput-object v0, Lyads/q52;->i:Lyads/l66;

    new-instance v0, Ld92;

    invoke-direct {v0, v1}, Ld92;-><init>(I)V

    sput-object v0, Lyads/q52;->j:Lyads/l66;

    new-instance v0, Lkv2;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lkv2;-><init>(I)V

    sput-object v0, Lyads/q52;->k:Lyads/l66;

    new-instance v0, Lki0;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lki0;-><init>(I)V

    sput-object v0, Lyads/q52;->l:Lyads/st3;

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
