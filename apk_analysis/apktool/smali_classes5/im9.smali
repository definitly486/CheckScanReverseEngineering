.class public final synthetic Lim9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Liy6;

.field public final synthetic c:Lr07;

.field public final synthetic d:Lr07;

.field public final synthetic e:Lr07;


# direct methods
.method public synthetic constructor <init>(Liy6;Lr07;Lr07;Lr07;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lim9;->b:Liy6;

    iput-object p2, p0, Lim9;->c:Lr07;

    iput-object p3, p0, Lim9;->d:Lr07;

    iput-object p4, p0, Lim9;->e:Lr07;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 p2, 0x5455

    if-ne p1, p2, :cond_a

    const-wide/16 p1, 0x1

    cmp-long v2, v0, p1

    const/4 v3, 0x0

    const-string v4, "bad zip: extended timestamp extra too short"

    if-ltz v2, :cond_9

    iget-object v2, p0, Lim9;->b:Liy6;

    invoke-virtual {v2}, Liy6;->readByte()B

    move-result v5

    and-int/lit8 v6, v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_0

    move v6, v8

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    and-int/lit8 v9, v5, 0x2

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    move v9, v8

    goto :goto_1

    :cond_1
    move v9, v7

    :goto_1
    const/4 v10, 0x4

    and-int/2addr v5, v10

    if-ne v5, v10, :cond_2

    move v7, v8

    :cond_2
    if-eqz v6, :cond_3

    const-wide/16 p1, 0x5

    :cond_3
    const-wide/16 v10, 0x4

    if-eqz v9, :cond_4

    add-long/2addr p1, v10

    :cond_4
    if-eqz v7, :cond_5

    add-long/2addr p1, v10

    :cond_5
    cmp-long p1, v0, p1

    if-ltz p1, :cond_8

    if-eqz v6, :cond_6

    invoke-virtual {v2}, Liy6;->p()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, Lim9;->c:Lr07;

    iput-object p1, p2, Lr07;->b:Ljava/lang/Object;

    :cond_6
    if-eqz v9, :cond_7

    invoke-virtual {v2}, Liy6;->p()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, Lim9;->d:Lr07;

    iput-object p1, p2, Lr07;->b:Ljava/lang/Object;

    :cond_7
    if-eqz v7, :cond_a

    invoke-virtual {v2}, Liy6;->p()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lim9;->e:Lr07;

    iput-object p1, p0, Lr07;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_8
    invoke-static {v4}, Lki0;->d(Ljava/lang/String;)V

    return-object v3

    :cond_9
    invoke-static {v4}, Lki0;->d(Ljava/lang/String;)V

    return-object v3

    :cond_a
    :goto_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
