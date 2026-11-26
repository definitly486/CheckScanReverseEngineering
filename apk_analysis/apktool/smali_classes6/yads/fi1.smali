.class public abstract Lyads/fi1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/xr2;

.field public static final b:Lyads/xr2;

.field public static final c:Lyads/xr2;

.field public static final d:Lyads/xr2;

.field public static final e:Lyads/xr2;

.field public static final f:Lyads/m36;

.field public static final g:Lyads/m36;

.field public static final h:Lyads/m36;

.field public static final i:Lyads/l66;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/fi1;->a:Lyads/xr2;

    sget-object v0, Lyads/f11;->f:Lyads/f11;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/fi1;->b:Lyads/xr2;

    sget-object v1, Lyads/h11;->f:Lyads/h11;

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    sput-object v2, Lyads/fi1;->c:Lyads/xr2;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    sput-object v2, Lyads/fi1;->d:Lyads/xr2;

    sget-object v2, Lyads/vi1;->e:Lyads/vi1;

    invoke-static {v2}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v3

    sput-object v3, Lyads/fi1;->e:Lyads/xr2;

    new-instance v3, Lws0;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lws0;-><init>(I)V

    new-instance v5, Lyads/m36;

    invoke-direct {v5, v3, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v5, Lyads/fi1;->f:Lyads/m36;

    new-instance v0, Lyc2;

    invoke-direct {v0, v4}, Lyc2;-><init>(I)V

    new-instance v3, Lyads/m36;

    invoke-direct {v3, v0, v1}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v3, Lyads/fi1;->g:Lyads/m36;

    new-instance v0, Lzc2;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lzc2;-><init>(I)V

    new-instance v1, Lyads/m36;

    invoke-direct {v1, v0, v2}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v1, Lyads/fi1;->h:Lyads/m36;

    new-instance v0, Lad2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/fi1;->i:Lyads/l66;

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
    instance-of p0, p0, Lyads/f11;

    return p0
.end method

.method public static final b(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lyads/h11;

    return p0
.end method

.method public static final c(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lyads/vi1;

    return p0
.end method
