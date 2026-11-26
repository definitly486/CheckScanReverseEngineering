.class public final Lp98;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lmp7;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lmp7;

    sget-object v1, Lo49;->b:Li54;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lt49;->b:Li54;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lj49;->b:Li54;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lz49;->b:Li54;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lyr;->k0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lp98;->a:Ljava/util/Set;

    return-void
.end method

.method public static final a(Lmp7;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lmp7;->isInline()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lp98;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
