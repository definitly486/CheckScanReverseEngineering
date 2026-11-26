.class public final Lqq7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lyz5;

.field public static final e:Lgx0;


# instance fields
.field public final a:Lwu0;

.field public final b:Lry6;

.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    sget-object v0, Lgx0;->e:Lgx0;

    const-string v0, "\r\n"

    invoke-static {v0}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v1

    const-string v2, "\r"

    invoke-static {v2}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v2

    const-string v3, "\n"

    invoke-static {v3}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v3

    const-string v4, "data: "

    invoke-static {v4}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v4

    const-string v5, "data:"

    invoke-static {v5}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v5

    const-string v6, "data\r\n"

    invoke-static {v6}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v6

    const-string v7, "data\r"

    invoke-static {v7}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v7

    const-string v8, "data\n"

    invoke-static {v8}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v8

    const-string v9, "id: "

    invoke-static {v9}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v9

    const-string v10, "id:"

    invoke-static {v10}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v10

    const-string v11, "id\r\n"

    invoke-static {v11}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v11

    const-string v12, "id\r"

    invoke-static {v12}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v12

    const-string v13, "id\n"

    invoke-static {v13}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v13

    const-string v14, "event: "

    invoke-static {v14}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v14

    const-string v15, "event:"

    invoke-static {v15}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v15

    const-string v16, "event\r\n"

    invoke-static/range {v16 .. v16}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v16

    const-string v17, "event\r"

    invoke-static/range {v17 .. v17}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v17

    const-string v18, "event\n"

    invoke-static/range {v18 .. v18}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v18

    const-string v19, "retry: "

    invoke-static/range {v19 .. v19}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v19

    const-string v20, "retry:"

    invoke-static/range {v20 .. v20}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v20

    filled-new-array/range {v1 .. v20}, [Lgx0;

    move-result-object v1

    invoke-static {v1}, Lyz5$a;->b([Lgx0;)Lyz5;

    move-result-object v1

    sput-object v1, Lqq7;->d:Lyz5;

    invoke-static {v0}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v0

    sput-object v0, Lqq7;->e:Lgx0;

    return-void
.end method

.method public constructor <init>(Lwu0;Lry6;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqq7;->a:Lwu0;

    iput-object p2, p0, Lqq7;->b:Lry6;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 10

    iget-object v0, p0, Lqq7;->c:Ljava/lang/String;

    new-instance v1, Lbu0;

    invoke-direct {v1}, Lbu0;-><init>()V

    :catch_0
    :goto_0
    iget-object v2, p0, Lqq7;->a:Lwu0;

    sget-object v3, Lqq7;->d:Lyz5;

    invoke-interface {v2, v3}, Lwu0;->f0(Lyz5;)I

    move-result v4

    const/4 v5, 0x3

    if-ltz v4, :cond_1

    if-ge v4, v5, :cond_1

    iget-wide v2, v1, Lbu0;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iput-object v0, p0, Lqq7;->c:Ljava/lang/String;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lbu0;->skip(J)V

    invoke-virtual {v1}, Lbu0;->q0()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lqq7;->b:Lry6;

    iget-object v1, p0, Lry6;->a:Ly14;

    invoke-virtual {v1, p0, v0}, Ly14;->G(Lry6;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    sget-object v6, Lqq7;->e:Lgx0;

    const/4 v7, 0x5

    const/16 v8, 0xa

    if-gt v5, v4, :cond_2

    if-ge v4, v7, :cond_2

    invoke-virtual {v1, v8}, Lbu0;->A0(I)V

    invoke-interface {v2, v6}, Lwu0;->W(Lgx0;)J

    move-result-wide v4

    invoke-interface {v2, v1, v4, v5}, Lwu0;->c(Lbu0;J)V

    invoke-interface {v2, v3}, Lwu0;->f0(Lyz5;)I

    goto :goto_0

    :cond_2
    const/16 v5, 0x8

    if-gt v7, v4, :cond_3

    if-ge v4, v5, :cond_3

    invoke-virtual {v1, v8}, Lbu0;->A0(I)V

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    if-gt v5, v4, :cond_4

    if-ge v4, v8, :cond_4

    invoke-interface {v2}, Lwu0;->Y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    goto :goto_0

    :cond_4
    const/16 v5, 0xd

    if-gt v8, v4, :cond_6

    if-ge v4, v5, :cond_6

    :cond_5
    move-object v0, v7

    goto :goto_0

    :cond_6
    const/16 v7, 0xf

    if-gt v5, v4, :cond_7

    if-ge v4, v7, :cond_7

    invoke-interface {v2}, Lwu0;->Y()Ljava/lang/String;

    goto :goto_0

    :cond_7
    const/16 v5, 0x12

    if-gt v7, v4, :cond_8

    if-ge v4, v5, :cond_8

    goto :goto_0

    :cond_8
    if-gt v5, v4, :cond_9

    const/16 v5, 0x14

    if-ge v4, v5, :cond_9

    invoke-interface {v2}, Lwu0;->Y()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lgb9;->a:[B

    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_9
    const/4 v5, -0x1

    const/4 v7, 0x0

    if-ne v4, v5, :cond_b

    invoke-interface {v2, v6}, Lwu0;->W(Lgx0;)J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v6, v4, v8

    if-eqz v6, :cond_a

    invoke-interface {v2, v4, v5}, Lwu0;->skip(J)V

    invoke-interface {v2, v3}, Lwu0;->f0(Lyz5;)I

    goto/16 :goto_0

    :cond_a
    return v7

    :cond_b
    invoke-static {}, Lxp;->g()V

    return v7
.end method
