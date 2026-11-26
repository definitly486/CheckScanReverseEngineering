.class public final Lyads/sx5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/gb2;

.field public final b:Lyads/bt0;

.field public final c:Lyads/ao2;

.field public final d:Lyads/fs2;

.field public e:Lyads/vq0;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/List;

.field public i:Z

.field public final j:Lyads/uw5;


# direct methods
.method public constructor <init>(Lyads/gb2;Lyads/bt0;Lyads/ao2;Lyads/fs2;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/sx5;->a:Lyads/gb2;

    iput-object p2, p0, Lyads/sx5;->b:Lyads/bt0;

    iput-object p3, p0, Lyads/sx5;->c:Lyads/ao2;

    iput-object p4, p0, Lyads/sx5;->d:Lyads/fs2;

    iget-object v1, p1, Lyads/gb2;->c:Ljava/lang/String;

    iget-object p2, p1, Lyads/gb2;->f:Ljava/lang/String;

    iput-object p2, p0, Lyads/sx5;->f:Ljava/lang/String;

    iget-object p2, p1, Lyads/gb2;->b:Ljava/util/List;

    iput-object p2, p0, Lyads/sx5;->g:Ljava/util/List;

    iget-object p2, p1, Lyads/gb2;->d:Ljava/util/List;

    iput-object p2, p0, Lyads/sx5;->h:Ljava/util/List;

    new-instance v0, Lyads/uw5;

    new-instance v2, Lyads/ox5;

    invoke-direct {v2, p0}, Lyads/ox5;-><init>(Lyads/sx5;)V

    new-instance v3, Lyads/px5;

    invoke-direct {v3, p0}, Lyads/px5;-><init>(Lyads/sx5;)V

    new-instance v4, Lyads/qx5;

    invoke-direct {v4, p0}, Lyads/qx5;-><init>(Lyads/sx5;)V

    new-instance v5, Lyads/rx5;

    invoke-direct {v5, p0}, Lyads/rx5;-><init>(Lyads/sx5;)V

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lyads/uw5;-><init>(Ljava/lang/String;Lyads/ox5;Lyads/px5;Lyads/qx5;Lyads/rx5;Lyads/ao2;)V

    iput-object v0, p0, Lyads/sx5;->j:Lyads/uw5;

    iget-object p2, p1, Lyads/gb2;->a:Lyads/as2;

    new-instance p3, Lon4;

    const/4 v0, 0x1

    invoke-direct {p3, p0, v0}, Lon4;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p4, p3}, Lyads/as2;->b(Lyads/fs2;Lnl3;)Lyads/tp0;

    iget-object p1, p1, Lyads/gb2;->e:Lyads/as2;

    if-eqz p1, :cond_0

    new-instance p2, Lgf6;

    const/4 p3, 0x4

    invoke-direct {p2, p0, p3}, Lgf6;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p4, p2}, Lyads/as2;->b(Lyads/fs2;Lnl3;)Lyads/tp0;

    :cond_0
    return-void
.end method

.method public static final a(Lyads/sx5;J)Lj59;
    .locals 0

    .line 119
    invoke-virtual {p0}, Lyads/sx5;->a()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final b(Lyads/sx5;J)Lj59;
    .locals 0

    invoke-virtual {p0}, Lyads/sx5;->a()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 114
    iget-object v0, p0, Lyads/sx5;->j:Lyads/uw5;

    .line 115
    iget-object v1, p0, Lyads/sx5;->a:Lyads/gb2;

    iget-object v1, v1, Lyads/gb2;->a:Lyads/as2;

    iget-object v2, p0, Lyads/sx5;->d:Lyads/fs2;

    invoke-virtual {v1, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 116
    iget-object v3, p0, Lyads/sx5;->a:Lyads/gb2;

    iget-object v3, v3, Lyads/gb2;->e:Lyads/as2;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object p0, p0, Lyads/sx5;->d:Lyads/fs2;

    invoke-virtual {v3, p0}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    goto :goto_0

    :cond_0
    move-object p0, v4

    .line 117
    :goto_0
    iput-object p0, v0, Lyads/uw5;->h:Ljava/lang/Long;

    const-wide/16 v5, 0x0

    cmp-long p0, v1, v5

    if-nez p0, :cond_1

    goto :goto_1

    .line 118
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_1
    iput-object v4, v0, Lyads/uw5;->g:Ljava/lang/Long;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyads/sx5;->j:Lyads/uw5;

    invoke-virtual {p0}, Lyads/uw5;->h()V

    return-void

    :sswitch_1
    const-string v0, "reset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lyads/sx5;->j:Lyads/uw5;

    invoke-virtual {p0}, Lyads/uw5;->e()V

    return-void

    :sswitch_2
    const-string v0, "pause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lyads/sx5;->j:Lyads/uw5;

    invoke-virtual {p0}, Lyads/uw5;->d()V

    return-void

    :sswitch_3
    const-string v0, "stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lyads/sx5;->j:Lyads/uw5;

    invoke-virtual {p0}, Lyads/uw5;->i()V

    return-void

    :sswitch_4
    const-string v0, "resume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lyads/sx5;->j:Lyads/uw5;

    invoke-virtual {p0}, Lyads/uw5;->f()V

    return-void

    :sswitch_5
    const-string v0, "cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_0
    iget-object p0, p0, Lyads/sx5;->c:Lyads/ao2;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " is unsupported timer command!"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lyads/ao2;->a(Ljava/lang/RuntimeException;)V

    return-void

    :cond_5
    iget-object p0, p0, Lyads/sx5;->j:Lyads/uw5;

    invoke-virtual {p0}, Lyads/uw5;->a()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5185d186 -> :sswitch_5
        -0x37b237d3 -> :sswitch_4
        0x360802 -> :sswitch_3
        0x65825f6 -> :sswitch_2
        0x6761d4f -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch
.end method
