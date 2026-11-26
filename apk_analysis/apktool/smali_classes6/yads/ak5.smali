.class public final Lyads/ak5;
.super Lyads/lu0;
.source "SourceFile"


# instance fields
.field public final a:Lyads/qz;

.field public b:Lyads/kn1;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lyads/qz;

    invoke-direct {v0}, Lyads/qz;-><init>()V

    invoke-direct {p0}, Lyads/lu0;-><init>()V

    iput-object v0, p0, Lyads/ak5;->a:Lyads/qz;

    return-void
.end method


# virtual methods
.method public final a(Lyads/kn1;)V
    .locals 2

    .line 23
    iget-object v0, p0, Lyads/ak5;->b:Lyads/kn1;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 24
    iget-object v0, v0, Lyads/kn1;->c:Lyads/vn1;

    .line 25
    iput-object v1, v0, Lyads/vn1;->b:Lyads/qz;

    :cond_0
    if-eqz p1, :cond_1

    .line 26
    iget-object v0, p0, Lyads/ak5;->a:Lyads/qz;

    .line 27
    iget-object v1, p1, Lyads/kn1;->c:Lyads/vn1;

    .line 28
    iput-object v0, v1, Lyads/vn1;->b:Lyads/qz;

    .line 29
    :cond_1
    iput-object p1, p0, Lyads/ak5;->b:Lyads/kn1;

    return-void
.end method

.method public final a(Lyads/r02;Lyads/vq0;Lyads/fs2;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lyads/lu0;->a(Lyads/r02;Lyads/vq0;Lyads/fs2;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lyads/ak5;->b:Lyads/kn1;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lyads/kn1;->a(Lyads/r02;Lyads/vq0;Lyads/fs2;)Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return v0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final a(Lyads/xr0;Lyads/vh2;Lyads/fs2;)Z
    .locals 1

    .line 30
    invoke-super {p0, p1, p2, p3}, Lyads/lu0;->a(Lyads/xr0;Lyads/vh2;Lyads/fs2;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 31
    iget-object p0, p0, Lyads/ak5;->b:Lyads/kn1;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lyads/kn1;->a(Lyads/xr0;Lyads/vh2;Lyads/fs2;)Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return v0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method
