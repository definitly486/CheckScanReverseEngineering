.class public final Lyads/jz0;
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

    instance-of p0, p2, Lyads/my0;

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    check-cast p2, Lyads/my0;

    iget-object p0, p2, Lyads/my0;->a:Lyads/pw0;

    iget-object p2, p0, Lyads/pw0;->a:Lyads/as2;

    invoke-virtual {p2, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p0, p0, Lyads/pw0;->b:Lyads/as2;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p3}, Lyads/vq0;->v()Lyads/xb2;

    move-result-object p1

    iget-object p3, p3, Lyads/vq0;->B:Lyads/tt;

    invoke-virtual {p1, p2, p3, p0}, Lyads/xb2;->a(Ljava/lang/String;Lyads/tt;Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lyads/vq0;->v()Lyads/xb2;

    move-result-object p0

    iget-object p3, p3, Lyads/vq0;->B:Lyads/tt;

    invoke-virtual {p0, p2, p3, p1}, Lyads/xb2;->a(Ljava/lang/String;Lyads/tt;Z)V

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return p1
.end method
