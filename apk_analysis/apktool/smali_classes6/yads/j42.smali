.class public abstract Lyads/j42;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/af1;

.field public static final b:Lyads/xr2;

.field public static final c:Lyads/l66;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lyads/af1;

    const-wide/16 v1, 0x5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lyads/xr2;

    invoke-direct {v2, v1}, Lyads/xr2;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v2}, Lyads/af1;-><init>(Lyads/xr2;)V

    sput-object v0, Lyads/j42;->a:Lyads/af1;

    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lyads/xr2;

    invoke-direct {v1, v0}, Lyads/xr2;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lyads/j42;->b:Lyads/xr2;

    new-instance v0, Ldc;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ldc;-><init>(I)V

    sput-object v0, Lyads/j42;->c:Lyads/l66;

    return-void
.end method

.method public static final a(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
