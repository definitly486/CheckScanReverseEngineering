.class public final enum Lkx8$l1;
.super Lkx8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkx8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "DoctypeInternalSubset"

    const/16 v1, 0x43

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Ljx8;Lea1;)V
    .locals 10

    iget-object v0, p1, Ljx8;->l:Lgx8$d;

    iget-object v0, v0, Lgx8$d;->h:Lm54;

    const/4 v1, 0x0

    :goto_0
    move v2, v1

    :cond_0
    :goto_1
    invoke-virtual {p2}, Lea1;->p()C

    move-result v3

    if-eqz v3, :cond_f

    const/16 v4, 0x22

    if-eq v3, v4, :cond_d

    const/16 v4, 0x27

    if-eq v3, v4, :cond_b

    const/16 v4, 0x2d

    const/4 v5, 0x3

    if-eq v3, v4, :cond_a

    const/16 v4, 0x3c

    const/4 v6, 0x4

    const/16 v7, 0x3f

    if-eq v3, v4, :cond_8

    const/16 v4, 0x3e

    if-eq v3, v7, :cond_7

    const/16 v5, 0x5d

    if-eq v3, v5, :cond_2

    const v4, 0xffff

    if-eq v3, v4, :cond_1

    invoke-virtual {v0, v3}, Lm54;->a(C)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p0}, Ljx8;->l(Lkx8;)V

    invoke-virtual {p1}, Ljx8;->j()V

    sget-object p0, Lkx8;->Data:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_2
    if-nez v2, :cond_6

    invoke-virtual {p2}, Lea1;->n()V

    iget v5, p2, Lea1;->e:I

    iget v6, p2, Lea1;->f:I

    iget-object v7, p2, Lea1;->d:[C

    move v8, v5

    :goto_2
    if-ge v8, v6, :cond_3

    aget-char v9, v7, v8

    invoke-static {v9}, Lja8;->h(I)Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    iput v8, p2, Lea1;->e:I

    if-le v8, v5, :cond_4

    iget-object v6, p2, Lea1;->d:[C

    iget-object v7, p2, Lea1;->b:[Ljava/lang/String;

    sub-int/2addr v8, v5

    invoke-static {v6, v7, v5, v8}, Lea1;->o([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_4
    const-string v5, ""

    :goto_3
    invoke-virtual {p2, v4}, Lea1;->q0(C)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p2}, Lea1;->m()V

    invoke-virtual {p1}, Ljx8;->j()V

    sget-object p0, Lkx8;->Data:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_5
    invoke-virtual {v0, v3}, Lm54;->a(C)V

    invoke-virtual {v0, v5}, Lm54;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v3}, Lm54;->a(C)V

    goto :goto_1

    :cond_7
    invoke-virtual {v0, v3}, Lm54;->a(C)V

    if-ne v2, v6, :cond_0

    invoke-virtual {p2, v4}, Lea1;->q0(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lea1;->m()V

    invoke-virtual {v0, v4}, Lm54;->a(C)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0, v3}, Lm54;->a(C)V

    if-nez v2, :cond_0

    const-string v3, "!--"

    invoke-virtual {p2, v3}, Lea1;->k0(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0, v3}, Lm54;->b(Ljava/lang/String;)V

    move v2, v5

    goto/16 :goto_1

    :cond_9
    const-string v3, "?"

    invoke-virtual {p2, v3}, Lea1;->k0(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v7}, Lm54;->a(C)V

    move v2, v6

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v0, v3}, Lm54;->a(C)V

    if-ne v2, v5, :cond_0

    const-string v3, "->"

    invoke-virtual {p2, v3}, Lea1;->k0(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Lm54;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0, v3}, Lm54;->a(C)V

    const/4 v3, 0x1

    if-nez v2, :cond_c

    :goto_4
    move v2, v3

    goto/16 :goto_1

    :cond_c
    if-ne v2, v3, :cond_0

    :goto_5
    goto/16 :goto_0

    :cond_d
    invoke-virtual {v0, v3}, Lm54;->a(C)V

    const/4 v3, 0x2

    if-nez v2, :cond_e

    goto :goto_4

    :cond_e
    if-ne v2, v3, :cond_0

    goto :goto_5

    :cond_f
    invoke-virtual {p1, p0}, Ljx8;->m(Lkx8;)V

    const v3, 0xfffd

    invoke-virtual {v0, v3}, Lm54;->a(C)V

    goto/16 :goto_1
.end method
