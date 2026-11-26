.class public abstract Lyads/p42;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/r42;

.field public static final b:Lyads/xr2;

.field public static final c:Lyads/xr2;

.field public static final d:Lyads/m36;

.field public static final e:Lyads/l66;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lyads/r42;

    new-instance v1, Lyads/b52;

    invoke-direct {v1}, Lyads/b52;-><init>()V

    invoke-direct {v0, v1}, Lyads/r42;-><init>(Lyads/b52;)V

    sput-object v0, Lyads/p42;->a:Lyads/r42;

    sget-object v0, Lyads/g12;->e:Lyads/g12;

    new-instance v1, Lyads/xr2;

    invoke-direct {v1, v0}, Lyads/xr2;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lyads/p42;->b:Lyads/xr2;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-instance v2, Lyads/xr2;

    invoke-direct {v2, v1}, Lyads/xr2;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lyads/p42;->c:Lyads/xr2;

    new-instance v1, Los;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Los;-><init>(I)V

    new-instance v2, Lyads/m36;

    invoke-direct {v2, v1, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v2, Lyads/p42;->d:Lyads/m36;

    new-instance v0, Li2;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Li2;-><init>(I)V

    sput-object v0, Lyads/p42;->e:Lyads/l66;

    return-void
.end method

.method public static final a(D)Z
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

.method public static final a(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    instance-of p0, p0, Lyads/g12;

    return p0
.end method
