.class public abstract Lyads/xq0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lyads/vq0;)Lyads/ak5;
    .locals 2

    iget-object v0, p0, Lyads/vq0;->R:Lyads/lu0;

    instance-of v1, v0, Lyads/ak5;

    if-eqz v1, :cond_0

    check-cast v0, Lyads/ak5;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lyads/ak5;

    invoke-direct {v0}, Lyads/ak5;-><init>()V

    invoke-virtual {p0, v0}, Lyads/vq0;->setActionHandler(Lyads/lu0;)V

    :cond_1
    return-object v0
.end method
