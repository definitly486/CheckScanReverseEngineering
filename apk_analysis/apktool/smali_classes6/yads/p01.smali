.class public final Lyads/p01;
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

    instance-of p0, p2, Lyads/qy0;

    if-eqz p0, :cond_0

    check-cast p2, Lyads/qy0;

    iget-object p0, p2, Lyads/qy0;->a:Lyads/y01;

    iget-object p1, p0, Lyads/y01;->b:Lyads/as2;

    invoke-virtual {p1, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object p2, Lyads/x01;->c:Lyads/w01;

    iget-object p0, p0, Lyads/y01;->a:Lyads/as2;

    invoke-virtual {p0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/x01;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyads/x01;->b:Ljava/lang/String;

    iget-object p2, p3, Lyads/vq0;->n:Lyads/nq0;

    iget-object p2, p2, Lyads/nq0;->U:Lcl4;

    invoke-interface {p2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/og2;

    invoke-virtual {p2, p3, p1, p0, p4}, Lyads/og2;->a(Lyads/vq0;Ljava/lang/String;Ljava/lang/String;Lyads/fs2;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
