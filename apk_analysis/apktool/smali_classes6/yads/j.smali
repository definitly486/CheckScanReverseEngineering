.class public abstract Lyads/j;
.super Lyads/z;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/z;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final a()Lyads/n;
    .locals 1

    iget-object v0, p0, Lyads/c0;->d:Lyads/n;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lyads/gd4;

    invoke-virtual {v0}, Lyads/z;->b()Lyads/n;

    move-result-object v0

    iput-object v0, p0, Lyads/c0;->d:Lyads/n;

    :cond_0
    return-object v0
.end method
