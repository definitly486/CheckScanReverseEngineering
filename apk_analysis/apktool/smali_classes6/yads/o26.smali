.class public final Lyads/o26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/oh5;


# instance fields
.field public final a:Lyads/ns4;

.field public final synthetic b:Lyads/q26;


# direct methods
.method public constructor <init>(Lyads/q26;)V
    .locals 1

    iput-object p1, p0, Lyads/o26;->b:Lyads/q26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lyads/ns4;

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lyads/ns4;-><init>([B)V

    iput-object p1, p0, Lyads/o26;->a:Lyads/ns4;

    return-void
.end method


# virtual methods
.method public final a(Lyads/os4;)V
    .locals 9

    invoke-virtual {p1}, Lyads/os4;->k()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lyads/os4;->k()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget v0, p1, Lyads/os4;->b:I

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p1, v0}, Lyads/os4;->e(I)V

    iget v0, p1, Lyads/os4;->c:I

    iget v1, p1, Lyads/os4;->b:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    div-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    iget-object v4, p0, Lyads/o26;->a:Lyads/ns4;

    iget-object v5, v4, Lyads/ns4;->a:[B

    invoke-virtual {p1, v5, v2, v1}, Lyads/os4;->a([BII)V

    invoke-virtual {v4, v2}, Lyads/ns4;->b(I)V

    iget-object v4, p0, Lyads/o26;->a:Lyads/ns4;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lyads/ns4;->a(I)I

    move-result v4

    iget-object v5, p0, Lyads/o26;->a:Lyads/ns4;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lyads/ns4;->c(I)V

    iget-object v5, p0, Lyads/o26;->a:Lyads/ns4;

    const/16 v6, 0xd

    if-nez v4, :cond_2

    invoke-virtual {v5, v6}, Lyads/ns4;->c(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v6}, Lyads/ns4;->a(I)I

    move-result v4

    iget-object v5, p0, Lyads/o26;->b:Lyads/q26;

    iget-object v5, v5, Lyads/q26;->g:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lyads/o26;->b:Lyads/q26;

    iget-object v6, v5, Lyads/q26;->g:Landroid/util/SparseArray;

    new-instance v7, Lyads/ph5;

    new-instance v8, Lyads/p26;

    invoke-direct {v8, v5, v4}, Lyads/p26;-><init>(Lyads/q26;I)V

    invoke-direct {v7, v8}, Lyads/ph5;-><init>(Lyads/oh5;)V

    invoke-virtual {v6, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, p0, Lyads/o26;->b:Lyads/q26;

    iget v5, v4, Lyads/q26;->m:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lyads/q26;->m:I

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lyads/o26;->b:Lyads/q26;

    iget p1, p0, Lyads/q26;->a:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    iget-object p0, p0, Lyads/q26;->g:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final a(Lyads/vx5;Lyads/zs2;Lyads/t26;)V
    .locals 0

    .line 124
    return-void
.end method
