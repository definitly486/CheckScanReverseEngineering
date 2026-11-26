.class public abstract Lyads/ih2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/l66;

.field public static final b:Lyads/l66;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrg;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lrg;-><init>(I)V

    sput-object v0, Lyads/ih2;->a:Lyads/l66;

    new-instance v0, Lsg;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lsg;-><init>(I)V

    sput-object v0, Lyads/ih2;->b:Lyads/l66;

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

.method public static final b(J)Z
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
