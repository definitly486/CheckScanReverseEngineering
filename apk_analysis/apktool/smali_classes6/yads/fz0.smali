.class public final Lyads/fz0;
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
    .locals 3

    instance-of p0, p2, Lyads/hy0;

    if-eqz p0, :cond_1

    check-cast p2, Lyads/hy0;

    iget-object p0, p2, Lyads/hy0;->a:Lyads/av0;

    iget-object p1, p0, Lyads/av0;->b:Lyads/as2;

    invoke-virtual {p1, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lyads/av0;->d:Lyads/as2;

    invoke-virtual {p2, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-int p2, v0

    iget-object v0, p0, Lyads/av0;->c:Lyads/as2;

    invoke-virtual {v0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    sget-object v1, Lyads/zu0;->c:Lyads/yu0;

    iget-object v2, p0, Lyads/av0;->e:Lyads/as2;

    invoke-virtual {v2, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/zu0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v2, Lyads/zu0;->b:Ljava/lang/String;

    iget-object p0, p0, Lyads/av0;->a:Lyads/as2;

    invoke-virtual {p0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object v2, Lyads/jp0;->b:Lyads/jp0;

    invoke-static {p1, p3, p4, v2}, Lyads/ki2;->a(Ljava/lang/String;Lyads/vh2;Lyads/fs2;Lyads/jp0;)Lyads/li2;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1, v1, v0, p0}, Lyads/li2;->a(Ljava/lang/String;IZ)V

    invoke-virtual {p1, v1, p2, p0}, Lyads/li2;->b(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    :cond_1
    instance-of p0, p2, Lyads/iy0;

    const/4 p1, 0x0

    if-eqz p0, :cond_7

    check-cast p2, Lyads/iy0;

    iget-object p0, p2, Lyads/iy0;->a:Lyads/tv0;

    iget-object p2, p0, Lyads/tv0;->c:Lyads/as2;

    invoke-virtual {p2, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lyads/tv0;->a:Lyads/as2;

    invoke-virtual {v0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lyads/jp0;->b:Lyads/jp0;

    invoke-static {p2, p3, p4, v1}, Lyads/ki2;->a(Ljava/lang/String;Lyads/vh2;Lyads/fs2;Lyads/jp0;)Lyads/li2;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lyads/tv0;->b:Lyads/kv0;

    instance-of p3, p0, Lyads/iv0;

    if-eqz p3, :cond_3

    check-cast p0, Lyads/iv0;

    iget-object p0, p0, Lyads/iv0;->a:Lyads/hp4;

    iget-object p0, p0, Lyads/hp4;->a:Lyads/as2;

    invoke-virtual {p0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    long-to-int p0, p0

    iget-object p1, p2, Lyads/li2;->a:Lyads/ji2;

    sget-object p2, Lyads/g12;->e:Lyads/g12;

    invoke-virtual {p1, p0, p2, v0}, Lyads/ji2;->a(ILyads/g12;Z)V

    goto :goto_0

    :cond_3
    instance-of p3, p0, Lyads/hv0;

    if-eqz p3, :cond_4

    check-cast p0, Lyads/hv0;

    iget-object p0, p0, Lyads/hv0;->a:Lyads/hf3;

    iget-object p0, p0, Lyads/hf3;->a:Lyads/as2;

    invoke-virtual {p0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    long-to-int p0, p0

    invoke-virtual {p2, p0, v0}, Lyads/li2;->a(IZ)V

    goto :goto_0

    :cond_4
    instance-of p3, p0, Lyads/gv0;

    if-eqz p3, :cond_5

    iget-object p0, p2, Lyads/li2;->a:Lyads/ji2;

    invoke-virtual {p0, v0}, Lyads/ji2;->a(Z)V

    goto :goto_0

    :cond_5
    instance-of p0, p0, Lyads/jv0;

    if-eqz p0, :cond_6

    invoke-virtual {p2, p1, v0}, Lyads/li2;->a(IZ)V

    :cond_6
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_7
    return p1
.end method
