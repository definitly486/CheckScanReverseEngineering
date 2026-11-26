.class public abstract Lyads/l12;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/xr2;

.field public static final b:Lyads/m36;

.field public static final c:Lyads/l66;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lyads/g12;->e:Lyads/g12;

    new-instance v1, Lyads/xr2;

    invoke-direct {v1, v0}, Lyads/xr2;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lyads/l12;->a:Lyads/xr2;

    new-instance v1, Lni;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lni;-><init>(I)V

    new-instance v2, Lyads/m36;

    invoke-direct {v2, v1, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v2, Lyads/l12;->b:Lyads/m36;

    new-instance v0, Ld;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ld;-><init>(I)V

    sput-object v0, Lyads/l12;->c:Lyads/l66;

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
