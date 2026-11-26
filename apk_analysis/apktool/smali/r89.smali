.class public final Lr89;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le00;

.field public final c:Lf13;

.field public final d:Lpk9;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Leh8;

.field public final g:Lhm1;

.field public final h:Lhm1;

.field public final i:Lvl1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le00;Lf13;Lpk9;Ljava/util/concurrent/Executor;Leh8;Lhm1;Lhm1;Lvl1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr89;->a:Landroid/content/Context;

    iput-object p2, p0, Lr89;->b:Le00;

    iput-object p3, p0, Lr89;->c:Lf13;

    iput-object p4, p0, Lr89;->d:Lpk9;

    iput-object p5, p0, Lr89;->e:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lr89;->f:Leh8;

    iput-object p7, p0, Lr89;->g:Lhm1;

    iput-object p8, p0, Lr89;->h:Lhm1;

    iput-object p9, p0, Lr89;->i:Lvl1;

    return-void
.end method


# virtual methods
.method public final a(Lhz;I)V
    .locals 12

    iget-object v0, p0, Lr89;->b:Le00;

    iget-object v1, p1, Lhz;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Le00;->get(Ljava/lang/String;)Lr29;

    move-result-object v0

    new-instance v1, Lmy;

    sget-object v2, Lf00$a;->OK:Lf00$a;

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lmy;-><init>(Lf00$a;J)V

    move-wide v9, v3

    :goto_0
    new-instance v1, Lm89;

    invoke-direct {v1, p0, p1}, Lm89;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lr89;->f:Leh8;

    invoke-interface {v2, v1}, Leh8;->a(Leh8$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Lb21;

    invoke-direct {v1, p0, p1}, Lb21;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Leh8;->a(Leh8$a;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    const-string v1, "Uploader"

    const-string v3, "Unknown backend for %s, deleting event batch for it..."

    invoke-static {p1, v1, v3}, Lhv4;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lmy;

    sget-object v3, Lf00$a;->FATAL_ERROR:Lf00$a;

    const-wide/16 v4, -0x1

    invoke-direct {v1, v3, v4, v5}, Lmy;-><init>(Lf00$a;J)V

    goto/16 :goto_2

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu46;

    invoke-virtual {v4}, Lu46;->a()Lz03;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lhz;->c()[B

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lr89;->i:Lvl1;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lm71;

    invoke-direct {v4, v3}, Lm71;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Leh8;->a(Leh8$a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzl1;

    new-instance v4, Lsy$a;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lsy$a;->f:Ljava/util/HashMap;

    iget-object v5, p0, Lr89;->g:Lhm1;

    invoke-interface {v5}, Lhm1;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lsy$a;->d:Ljava/lang/Long;

    iget-object v5, p0, Lr89;->h:Lhm1;

    invoke-interface {v5}, Lhm1;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lsy$a;->e:Ljava/lang/Long;

    const-string v5, "GDT_CLIENT_METRICS"

    iput-object v5, v4, Lsy$a;->a:Ljava/lang/String;

    new-instance v5, Lsx2;

    new-instance v6, Liy2;

    const-string v8, "proto"

    invoke-direct {v6, v8}, Liy2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lls6;->a:Lcom/google/firebase/encoders/proto/ProtobufEncoder;

    invoke-virtual {v8, v3}, Lcom/google/firebase/encoders/proto/ProtobufEncoder;->encode(Ljava/lang/Object;)[B

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lsx2;-><init>(Liy2;[B)V

    iput-object v5, v4, Lsy$a;->c:Lsx2;

    invoke-virtual {v4}, Lsy$a;->b()Lsy;

    move-result-object v3

    invoke-interface {v0, v3}, Lr29;->a(Lsy;)Lsy;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v3, p1, Lhz;->b:[B

    new-instance v4, Lly;

    invoke-direct {v4, v1, v3}, Lly;-><init>(Ljava/util/ArrayList;[B)V

    invoke-interface {v0, v4}, Lr29;->b(Lly;)Lmy;

    move-result-object v1

    :goto_2
    iget-object v3, v1, Lmy;->a:Lf00$a;

    sget-object v4, Lf00$a;->TRANSIENT_ERROR:Lf00$a;

    const/4 v11, 0x1

    if-ne v3, v4, :cond_4

    new-instance v5, Lo89;

    move-object v6, p0

    move-object v8, p1

    invoke-direct/range {v5 .. v10}, Lo89;-><init>(Lr89;Ljava/lang/Iterable;Lhz;J)V

    invoke-interface {v2, v5}, Leh8;->a(Leh8$a;)Ljava/lang/Object;

    iget-object p0, v6, Lr89;->d:Lpk9;

    add-int/2addr p2, v11

    invoke-interface {p0, v8, p2, v11}, Lpk9;->b(Ls29;IZ)V

    return-void

    :cond_4
    move-object v6, p0

    move-object v8, p1

    new-instance p0, Lbz4;

    invoke-direct {p0, v7, v6}, Lbz4;-><init>(Ljava/lang/Iterable;Ljava/lang/Object;)V

    invoke-interface {v2, p0}, Leh8;->a(Leh8$a;)Ljava/lang/Object;

    sget-object p0, Lf00$a;->OK:Lf00$a;

    if-ne v3, p0, :cond_6

    iget-wide p0, v1, Lmy;->b:J

    invoke-static {v9, v10, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-virtual {v8}, Lhz;->c()[B

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Lve1;

    invoke-direct {v1, v6}, Lve1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Leh8;->a(Leh8$a;)Ljava/lang/Object;

    :cond_5
    move-wide v9, p0

    goto :goto_4

    :cond_6
    sget-object p0, Lf00$a;->INVALID_PAYLOAD:Lf00$a;

    if-ne v3, p0, :cond_9

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu46;

    invoke-virtual {v1}, Lu46;->a()Lz03;

    move-result-object v1

    invoke-virtual {v1}, Lz03;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    new-instance p1, Lmh5;

    invoke-direct {p1, v6, p0}, Lmh5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, p1}, Leh8;->a(Leh8$a;)Ljava/lang/Object;

    :cond_9
    :goto_4
    move-object p0, v6

    move-object p1, v8

    goto/16 :goto_0

    :cond_a
    move-object v6, p0

    move-object v8, p1

    new-instance p0, Lp89;

    invoke-direct {p0, v6, v8, v9, v10}, Lp89;-><init>(Lr89;Lhz;J)V

    invoke-interface {v2, p0}, Leh8;->a(Leh8$a;)Ljava/lang/Object;

    return-void
.end method
