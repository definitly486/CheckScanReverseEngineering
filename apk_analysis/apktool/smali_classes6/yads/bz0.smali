.class public final Lyads/bz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/yy0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lyads/ry0;Lyads/vq0;Lyads/fs2;)Z
    .locals 0

    instance-of p0, p2, Lyads/gy0;

    if-eqz p0, :cond_0

    check-cast p2, Lyads/gy0;

    iget-object p0, p2, Lyads/gy0;->a:Lyads/mu0;

    iget-object p0, p0, Lyads/mu0;->a:Lyads/as2;

    invoke-virtual {p0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p3}, Lyads/vq0;->v()Lyads/xb2;

    move-result-object p1

    invoke-virtual {p1, p0}, Lyads/xb2;->a(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
