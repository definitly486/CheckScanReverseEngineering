.class public final Lcom/warefly/checkscan/shimmer/a$c;
.super Lcom/warefly/checkscan/shimmer/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/shimmer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/shimmer/a$b<",
        "Lcom/warefly/checkscan/shimmer/a$c;",
        ">;"
    }
.end annotation


# virtual methods
.method public final b(Landroid/content/res/TypedArray;)Lcom/warefly/checkscan/shimmer/a$b;
    .locals 4

    invoke-super {p0, p1}, Lcom/warefly/checkscan/shimmer/a$b;->b(Landroid/content/res/TypedArray;)Lcom/warefly/checkscan/shimmer/a$b;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iget-object v2, p0, Lcom/warefly/checkscan/shimmer/a$b;->a:Lcom/warefly/checkscan/shimmer/a;

    if-eqz v1, :cond_0

    iget v1, v2, Lcom/warefly/checkscan/shimmer/a;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iget v1, v2, Lcom/warefly/checkscan/shimmer/a;->e:I

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    const v3, 0xffffff

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    iput v0, v2, Lcom/warefly/checkscan/shimmer/a;->e:I

    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v2, Lcom/warefly/checkscan/shimmer/a;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, v2, Lcom/warefly/checkscan/shimmer/a;->d:I

    :cond_1
    return-object p0
.end method

.method public final c()Lcom/warefly/checkscan/shimmer/a$b;
    .locals 0

    return-object p0
.end method
