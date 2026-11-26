.class public final Lyads/i01;
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

    instance-of p0, p2, Lyads/oy0;

    if-eqz p0, :cond_1

    check-cast p2, Lyads/oy0;

    iget-object p0, p2, Lyads/oy0;->a:Lyads/qx0;

    iget-object p1, p0, Lyads/qx0;->b:Lyads/as2;

    invoke-virtual {p1, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object p2, Lyads/px0;->c:Lyads/ox0;

    iget-object p0, p0, Lyads/qx0;->a:Lyads/as2;

    invoke-virtual {p0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/px0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyads/px0;->b:Ljava/lang/String;

    iget-object p2, p3, Lyads/vq0;->C:Lyads/hb2;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1, p0}, Lyads/hb2;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
