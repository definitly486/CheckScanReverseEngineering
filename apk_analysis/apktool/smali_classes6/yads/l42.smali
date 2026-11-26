.class public final Lyads/l42;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/as2;

.field public final b:Lyads/s42;

.field public final c:Lyads/as2;

.field public final d:Lyads/as2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lyads/g12;->e:Lyads/g12;

    return-void
.end method

.method public constructor <init>(Lyads/as2;Lyads/s42;Lyads/as2;Lyads/as2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/l42;->a:Lyads/as2;

    iput-object p2, p0, Lyads/l42;->b:Lyads/s42;

    iput-object p3, p0, Lyads/l42;->c:Lyads/as2;

    iput-object p4, p0, Lyads/l42;->d:Lyads/as2;

    return-void
.end method


# virtual methods
.method public final a(Lyads/l42;Lyads/fs2;Lyads/fs2;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lyads/l42;->a:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, p1, Lyads/l42;->a:Lyads/as2;

    invoke-virtual {v2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lyads/l42;->b:Lyads/s42;

    iget-object v2, p1, Lyads/l42;->b:Lyads/s42;

    instance-of v3, v1, Lyads/r42;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    instance-of v1, v2, Lyads/r42;

    if-eqz v1, :cond_1

    check-cast v2, Lyads/r42;

    iget-object v1, v2, Lyads/r42;->a:Lyads/b52;

    goto :goto_0

    :cond_1
    instance-of v1, v2, Lyads/q42;

    if-eqz v1, :cond_3

    check-cast v2, Lyads/q42;

    iget-object v1, v2, Lyads/q42;->a:Lyads/t42;

    :goto_0
    instance-of v2, v1, Lyads/b52;

    if-eqz v2, :cond_2

    move-object v4, v1

    check-cast v4, Lyads/b52;

    :cond_2
    if-eqz v4, :cond_9

    goto :goto_2

    :cond_3
    invoke-static {}, Lme0;->e()V

    return v0

    :cond_4
    instance-of v1, v1, Lyads/q42;

    if-eqz v1, :cond_8

    instance-of v1, v2, Lyads/r42;

    if-eqz v1, :cond_5

    check-cast v2, Lyads/r42;

    iget-object v1, v2, Lyads/r42;->a:Lyads/b52;

    goto :goto_1

    :cond_5
    instance-of v1, v2, Lyads/q42;

    if-eqz v1, :cond_7

    check-cast v2, Lyads/q42;

    iget-object v1, v2, Lyads/q42;->a:Lyads/t42;

    :goto_1
    instance-of v2, v1, Lyads/t42;

    if-eqz v2, :cond_6

    move-object v4, v1

    check-cast v4, Lyads/t42;

    :cond_6
    if-eqz v4, :cond_9

    :goto_2
    iget-object v1, p0, Lyads/l42;->c:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Lyads/l42;->c:Lyads/as2;

    invoke-virtual {v2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_9

    iget-object p0, p0, Lyads/l42;->d:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    iget-object p0, p1, Lyads/l42;->d:Lyads/as2;

    invoke-virtual {p0, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpg-double p0, v1, p0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_7
    invoke-static {}, Lme0;->e()V

    return v0

    :cond_8
    invoke-static {}, Lme0;->e()V

    :cond_9
    return v0
.end method
