.class public final Lyads/f51;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/as2;

.field public final b:Lyads/p91;

.field public final c:Lyads/as2;

.field public final d:Lyads/xz1;

.field public final e:Lyads/l42;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lyads/as2;Lyads/p91;Lyads/as2;Lyads/xz1;Lyads/l42;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/f51;->a:Lyads/as2;

    iput-object p2, p0, Lyads/f51;->b:Lyads/p91;

    iput-object p3, p0, Lyads/f51;->c:Lyads/as2;

    iput-object p4, p0, Lyads/f51;->d:Lyads/xz1;

    iput-object p5, p0, Lyads/f51;->e:Lyads/l42;

    return-void
.end method


# virtual methods
.method public final a(Lyads/f51;Lyads/fs2;Lyads/fs2;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lyads/f51;->a:Lyads/as2;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iget-object v3, p1, Lyads/f51;->a:Lyads/as2;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    :cond_2
    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lyads/f51;->b:Lyads/p91;

    iget-object v2, p1, Lyads/f51;->b:Lyads/p91;

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2, p2, p3}, Lyads/p91;->a(Lyads/p91;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    if-eqz v1, :cond_9

    iget-object v1, p0, Lyads/f51;->c:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p1, Lyads/f51;->c:Lyads/as2;

    invoke-virtual {v2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lyads/f51;->d:Lyads/xz1;

    iget-object v2, p1, Lyads/f51;->d:Lyads/xz1;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v2, p2, p3}, Lyads/xz1;->a(Lyads/xz1;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    goto :goto_2

    :cond_5
    if-nez v2, :cond_6

    move v1, v3

    goto :goto_2

    :cond_6
    move v1, v0

    :goto_2
    if-eqz v1, :cond_9

    iget-object p0, p0, Lyads/f51;->e:Lyads/l42;

    iget-object p1, p1, Lyads/f51;->e:Lyads/l42;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2, p3}, Lyads/l42;->a(Lyads/l42;Lyads/fs2;Lyads/fs2;)Z

    move-result p0

    goto :goto_3

    :cond_7
    if-nez p1, :cond_8

    move p0, v3

    goto :goto_3

    :cond_8
    move p0, v0

    :goto_3
    if-eqz p0, :cond_9

    return v3

    :cond_9
    return v0
.end method
