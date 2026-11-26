.class public abstract Lyads/f02;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/f02;Lyads/fs2;Lyads/fs2;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Lyads/e02;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p0, Lyads/e02;

    iget-object p0, p0, Lyads/e02;->a:Lyads/gy1;

    instance-of v1, p1, Lyads/e02;

    if-eqz v1, :cond_1

    check-cast p1, Lyads/e02;

    iget-object p1, p1, Lyads/e02;->a:Lyads/gy1;

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lyads/d02;

    if-eqz v1, :cond_3

    check-cast p1, Lyads/d02;

    iget-object p1, p1, Lyads/d02;->a:Lyads/q61;

    :goto_0
    instance-of v0, p1, Lyads/gy1;

    if-eqz v0, :cond_2

    move-object v2, p1

    check-cast v2, Lyads/gy1;

    :cond_2
    invoke-virtual {p0, v2, p2, p3}, Lyads/gy1;->a(Lyads/gy1;Lyads/fs2;Lyads/fs2;)Z

    move-result p0

    return p0

    :cond_3
    invoke-static {}, Lme0;->e()V

    return v0

    :cond_4
    instance-of v1, p0, Lyads/d02;

    if-eqz v1, :cond_e

    check-cast p0, Lyads/d02;

    iget-object p0, p0, Lyads/d02;->a:Lyads/q61;

    instance-of v1, p1, Lyads/e02;

    if-eqz v1, :cond_5

    check-cast p1, Lyads/e02;

    iget-object p1, p1, Lyads/e02;->a:Lyads/gy1;

    goto :goto_1

    :cond_5
    instance-of v1, p1, Lyads/d02;

    if-eqz v1, :cond_d

    check-cast p1, Lyads/d02;

    iget-object p1, p1, Lyads/d02;->a:Lyads/q61;

    :goto_1
    instance-of v1, p1, Lyads/q61;

    if-eqz v1, :cond_6

    check-cast p1, Lyads/q61;

    goto :goto_2

    :cond_6
    move-object p1, v2

    :goto_2
    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lyads/q61;->a:Lyads/as2;

    if-eqz v1, :cond_8

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_3

    :cond_8
    move-object v1, v2

    :goto_3
    iget-object v3, p1, Lyads/q61;->a:Lyads/as2;

    if-eqz v3, :cond_9

    invoke-virtual {v3, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    :cond_9
    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lyads/q61;->b:Lyads/af1;

    iget-object v2, p1, Lyads/q61;->b:Lyads/af1;

    invoke-virtual {v1, v2, p2, p3}, Lyads/af1;->a(Lyads/af1;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object p0, p0, Lyads/q61;->c:Lyads/l42;

    iget-object p1, p1, Lyads/q61;->c:Lyads/l42;

    const/4 v1, 0x1

    if-eqz p0, :cond_a

    invoke-virtual {p0, p1, p2, p3}, Lyads/l42;->a(Lyads/l42;Lyads/fs2;Lyads/fs2;)Z

    move-result p0

    goto :goto_4

    :cond_a
    if-nez p1, :cond_b

    move p0, v1

    goto :goto_4

    :cond_b
    move p0, v0

    :goto_4
    if-eqz p0, :cond_c

    return v1

    :cond_c
    :goto_5
    return v0

    :cond_d
    invoke-static {}, Lme0;->e()V

    return v0

    :cond_e
    invoke-static {}, Lme0;->e()V

    return v0
.end method
