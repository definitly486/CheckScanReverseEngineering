.class public abstract Lyads/m21;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/st3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leq;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/m21;->a:Lyads/st3;

    return-void
.end method

.method public static final a(Ljava/util/List;)Z
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
