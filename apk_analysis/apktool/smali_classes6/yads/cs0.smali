.class public abstract Lyads/cs0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/m36;

.field public static final b:Lyads/m36;

.field public static final c:Lyads/l66;

.field public static final d:Lyads/l66;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lyads/m11;->values()[Lyads/m11;

    move-result-object v0

    invoke-static {v0}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lvu2;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lvu2;-><init>(I)V

    new-instance v2, Lyads/m36;

    invoke-direct {v2, v1, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v2, Lyads/cs0;->a:Lyads/m36;

    invoke-static {}, Lyads/o11;->values()[Lyads/o11;

    move-result-object v0

    invoke-static {v0}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lwu2;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lwu2;-><init>(I)V

    new-instance v2, Lyads/m36;

    invoke-direct {v2, v1, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v2, Lyads/cs0;->b:Lyads/m36;

    new-instance v0, Lih;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lih;-><init>(I)V

    sput-object v0, Lyads/cs0;->c:Lyads/l66;

    new-instance v0, Ljh;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljh;-><init>(I)V

    sput-object v0, Lyads/cs0;->d:Lyads/l66;

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
    instance-of p0, p0, Lyads/m11;

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
    instance-of p0, p0, Lyads/o11;

    return p0
.end method
