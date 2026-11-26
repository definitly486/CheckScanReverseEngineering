.class public abstract Lcom/my/tracker/obfuscated/k2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/util/SparseArray;

.field final b:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/my/tracker/obfuscated/k2;->a:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/my/tracker/obfuscated/k2;->b:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/my/tracker/obfuscated/h2;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/my/tracker/obfuscated/k2;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/tracker/obfuscated/h2;

    if-eqz v0, :cond_0

    return-object v0

    .line 30
    :cond_0
    new-instance v0, Lcom/my/tracker/obfuscated/j2;

    invoke-direct {v0, p1}, Lcom/my/tracker/obfuscated/j2;-><init>(I)V

    .line 31
    iget-object p0, p0, Lcom/my/tracker/obfuscated/k2;->b:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public final a(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 35
    const-string p0, "[FOREGROUND] "

    return-object p0

    :cond_0
    const-string p0, "[BACKGROUND] "

    return-object p0
.end method

.method public final a()Ljava/util/ArrayList;
    .locals 4

    iget-object v0, p0, Lcom/my/tracker/obfuscated/k2;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/my/tracker/obfuscated/k2;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/my/tracker/obfuscated/i2;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final a(J)V
    .locals 2

    const/4 v0, 0x0

    .line 32
    :goto_0
    iget-object v1, p0, Lcom/my/tracker/obfuscated/k2;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/my/tracker/obfuscated/k2;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/my/tracker/obfuscated/y1;

    .line 34
    invoke-interface {v1, p1, p2}, Lcom/my/tracker/obfuscated/y1;->b(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()I
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/my/tracker/obfuscated/k2;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public final b(I)Z
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/obfuscated/k2;->a:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
