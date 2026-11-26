.class public final Lyads/si2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/r02;


# instance fields
.field public final a:Lyads/nc1;

.field public final b:Lyads/as2;

.field public final c:Lyads/as2;

.field public final d:Lyads/as2;

.field public final e:Lorg/json/JSONObject;

.field public final f:Lyads/as2;

.field public final g:Ljava/lang/String;

.field public final h:Lyads/ry0;

.field public final i:Lyads/as2;

.field public final j:Lyads/as2;

.field public final k:Lyads/as2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    const-wide/16 v0, 0x320

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lyads/ry0;Lyads/nc1;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lyads/si2;->a:Lyads/nc1;

    iput-object p5, p0, Lyads/si2;->b:Lyads/as2;

    iput-object p6, p0, Lyads/si2;->c:Lyads/as2;

    iput-object p7, p0, Lyads/si2;->d:Lyads/as2;

    iput-object p2, p0, Lyads/si2;->e:Lorg/json/JSONObject;

    iput-object p8, p0, Lyads/si2;->f:Lyads/as2;

    iput-object p1, p0, Lyads/si2;->g:Ljava/lang/String;

    iput-object p3, p0, Lyads/si2;->h:Lyads/ry0;

    iput-object p9, p0, Lyads/si2;->i:Lyads/as2;

    iput-object p10, p0, Lyads/si2;->j:Lyads/as2;

    iput-object p11, p0, Lyads/si2;->k:Lyads/as2;

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 0

    .line 250
    iget-object p0, p0, Lyads/si2;->e:Lorg/json/JSONObject;

    return-object p0
.end method

.method public final a(Lyads/si2;Lyads/fs2;Lyads/fs2;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lyads/si2;->a:Lyads/nc1;

    iget-object v2, p1, Lyads/si2;->a:Lyads/nc1;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2, p2, p3}, Lyads/nc1;->a(Lyads/nc1;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    if-eqz v1, :cond_9

    iget-object v1, p0, Lyads/si2;->b:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p1, Lyads/si2;->b:Lyads/as2;

    invoke-virtual {v2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lyads/si2;->c:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Lyads/si2;->c:Lyads/as2;

    invoke-virtual {v2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lyads/si2;->d:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object v4, p1, Lyads/si2;->d:Lyads/as2;

    invoke-virtual {v4, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-nez v1, :cond_9

    iget-object v1, p0, Lyads/si2;->e:Lorg/json/JSONObject;

    iget-object v2, p1, Lyads/si2;->e:Lorg/json/JSONObject;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lyads/si2;->f:Lyads/as2;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    iget-object v4, p1, Lyads/si2;->f:Lyads/as2;

    if-eqz v4, :cond_4

    invoke-virtual {v4, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    goto :goto_2

    :cond_4
    move-object v4, v2

    :goto_2
    invoke-static {v1, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lyads/si2;->g:Ljava/lang/String;

    iget-object v4, p1, Lyads/si2;->g:Ljava/lang/String;

    invoke-static {v1, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lyads/si2;->h:Lyads/ry0;

    iget-object v4, p1, Lyads/si2;->h:Lyads/ry0;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v4, p2, p3}, Lyads/ry0;->a(Lyads/ry0;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    goto :goto_3

    :cond_5
    if-nez v4, :cond_6

    move v1, v3

    goto :goto_3

    :cond_6
    move v1, v0

    :goto_3
    if-eqz v1, :cond_9

    iget-object v1, p0, Lyads/si2;->i:Lyads/as2;

    if-eqz v1, :cond_7

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    goto :goto_4

    :cond_7
    move-object v1, v2

    :goto_4
    iget-object v4, p1, Lyads/si2;->i:Lyads/as2;

    if-eqz v4, :cond_8

    invoke-virtual {v4, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    :cond_8
    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lyads/si2;->j:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object v4, p1, Lyads/si2;->j:Lyads/as2;

    invoke-virtual {v4, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-nez v1, :cond_9

    iget-object p0, p0, Lyads/si2;->k:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object p0, p1, Lyads/si2;->k:Lyads/as2;

    invoke-virtual {p0, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    cmp-long p0, v1, p0

    if-nez p0, :cond_9

    return v3

    :cond_9
    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/si2;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lyads/ry0;
    .locals 0

    iget-object p0, p0, Lyads/si2;->h:Lyads/ry0;

    return-object p0
.end method

.method public final d()Lyads/as2;
    .locals 0

    iget-object p0, p0, Lyads/si2;->b:Lyads/as2;

    return-object p0
.end method

.method public final e()Lyads/nc1;
    .locals 0

    iget-object p0, p0, Lyads/si2;->a:Lyads/nc1;

    return-object p0
.end method

.method public final f()Lyads/as2;
    .locals 0

    iget-object p0, p0, Lyads/si2;->d:Lyads/as2;

    return-object p0
.end method

.method public final g()Lyads/as2;
    .locals 0

    iget-object p0, p0, Lyads/si2;->c:Lyads/as2;

    return-object p0
.end method

.method public final getUrl()Lyads/as2;
    .locals 0

    iget-object p0, p0, Lyads/si2;->i:Lyads/as2;

    return-object p0
.end method
