.class public abstract Lyads/am1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/am1;Lyads/fs2;Lyads/fs2;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Lyads/zl1;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p0, Lyads/zl1;

    iget-object p0, p0, Lyads/zl1;->a:Lyads/qm1;

    instance-of v1, p1, Lyads/zl1;

    if-eqz v1, :cond_1

    check-cast p1, Lyads/zl1;

    iget-object p1, p1, Lyads/zl1;->a:Lyads/qm1;

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lyads/yl1;

    if-eqz v1, :cond_4

    check-cast p1, Lyads/yl1;

    iget-object p1, p1, Lyads/yl1;->a:Lyads/hm1;

    :goto_0
    instance-of v1, p1, Lyads/qm1;

    if-eqz v1, :cond_2

    move-object v2, p1

    check-cast v2, Lyads/qm1;

    :cond_2
    if-nez v2, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object p1, p0, Lyads/qm1;->a:Lyads/as2;

    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v1, v2, Lyads/qm1;->a:Lyads/as2;

    invoke-virtual {v1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne p1, v1, :cond_9

    iget-object p1, p0, Lyads/qm1;->b:Lyads/as2;

    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, v2, Lyads/qm1;->b:Lyads/as2;

    invoke-virtual {v1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lyads/qm1;->c:Lyads/as2;

    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, v2, Lyads/qm1;->c:Lyads/as2;

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lyads/qm1;->d:Ljava/lang/String;

    iget-object p1, v2, Lyads/qm1;->d:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto/16 :goto_2

    :cond_4
    invoke-static {}, Lme0;->e()V

    return v0

    :cond_5
    instance-of v1, p0, Lyads/yl1;

    if-eqz v1, :cond_b

    check-cast p0, Lyads/yl1;

    iget-object p0, p0, Lyads/yl1;->a:Lyads/hm1;

    instance-of v1, p1, Lyads/zl1;

    if-eqz v1, :cond_6

    check-cast p1, Lyads/zl1;

    iget-object p1, p1, Lyads/zl1;->a:Lyads/qm1;

    goto :goto_1

    :cond_6
    instance-of v1, p1, Lyads/yl1;

    if-eqz v1, :cond_a

    check-cast p1, Lyads/yl1;

    iget-object p1, p1, Lyads/yl1;->a:Lyads/hm1;

    :goto_1
    instance-of v1, p1, Lyads/hm1;

    if-eqz v1, :cond_7

    move-object v2, p1

    check-cast v2, Lyads/hm1;

    :cond_7
    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lyads/hm1;->a:Lyads/as2;

    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v1, v2, Lyads/hm1;->a:Lyads/as2;

    invoke-virtual {v1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne p1, v1, :cond_9

    iget-object p1, p0, Lyads/hm1;->b:Lyads/as2;

    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v1, v2, Lyads/hm1;->b:Lyads/as2;

    invoke-virtual {v1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne p1, v1, :cond_9

    iget-object p1, p0, Lyads/hm1;->c:Lyads/as2;

    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, v2, Lyads/hm1;->c:Lyads/as2;

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lyads/hm1;->d:Ljava/lang/String;

    iget-object p1, v2, Lyads/hm1;->d:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_9
    :goto_3
    return v0

    :cond_a
    invoke-static {}, Lme0;->e()V

    return v0

    :cond_b
    invoke-static {}, Lme0;->e()V

    return v0
.end method
