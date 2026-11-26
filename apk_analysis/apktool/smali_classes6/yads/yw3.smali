.class public abstract Lyads/yw3;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field public transient b:Lyads/l;

.field public transient c:Lyads/xw3;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lyads/yw3;->b:Lyads/l;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lyads/n;

    new-instance v1, Lyads/l;

    invoke-direct {v1, v0}, Lyads/l;-><init>(Lyads/n;)V

    iput-object v1, p0, Lyads/yw3;->b:Lyads/l;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lyads/yw3;->c:Lyads/xw3;

    if-nez v0, :cond_0

    new-instance v0, Lyads/xw3;

    invoke-direct {v0, p0}, Lyads/xw3;-><init>(Lyads/yw3;)V

    iput-object v0, p0, Lyads/yw3;->c:Lyads/xw3;

    :cond_0
    return-object v0
.end method
