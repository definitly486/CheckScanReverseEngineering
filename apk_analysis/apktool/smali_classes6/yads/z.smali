.class public abstract Lyads/z;
.super Lyads/c0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public transient e:Ljava/util/Map;

.field public transient f:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Lyads/c0;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lyads/z;->e:Ljava/util/Map;

    return-void

    :cond_0
    invoke-static {}, Lmi2;->b()V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final b()Lyads/n;
    .locals 2

    iget-object v0, p0, Lyads/z;->e:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    new-instance v0, Lyads/r;

    iget-object v1, p0, Lyads/z;->e:Ljava/util/Map;

    check-cast v1, Ljava/util/NavigableMap;

    invoke-direct {v0, p0, v1}, Lyads/r;-><init>(Lyads/z;Ljava/util/NavigableMap;)V

    return-object v0

    :cond_0
    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_1

    new-instance v0, Lyads/u;

    iget-object v1, p0, Lyads/z;->e:Ljava/util/Map;

    check-cast v1, Ljava/util/SortedMap;

    invoke-direct {v0, p0, v1}, Lyads/u;-><init>(Lyads/z;Ljava/util/SortedMap;)V

    return-object v0

    :cond_1
    new-instance v0, Lyads/n;

    iget-object v1, p0, Lyads/z;->e:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lyads/n;-><init>(Lyads/z;Ljava/util/Map;)V

    return-object v0
.end method

.method public final c()Lyads/q;
    .locals 2

    iget-object v0, p0, Lyads/z;->e:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    new-instance v0, Lyads/s;

    iget-object v1, p0, Lyads/z;->e:Ljava/util/Map;

    check-cast v1, Ljava/util/NavigableMap;

    invoke-direct {v0, p0, v1}, Lyads/s;-><init>(Lyads/z;Ljava/util/NavigableMap;)V

    return-object v0

    :cond_0
    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_1

    new-instance v0, Lyads/v;

    iget-object v1, p0, Lyads/z;->e:Ljava/util/Map;

    check-cast v1, Ljava/util/SortedMap;

    invoke-direct {v0, p0, v1}, Lyads/v;-><init>(Lyads/z;Ljava/util/SortedMap;)V

    return-object v0

    :cond_1
    new-instance v0, Lyads/q;

    iget-object v1, p0, Lyads/z;->e:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lyads/q;-><init>(Lyads/z;Ljava/util/Map;)V

    return-object v0
.end method
