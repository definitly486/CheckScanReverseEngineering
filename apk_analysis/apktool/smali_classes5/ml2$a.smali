.class public final Lml2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lre4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lml2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ly74;",
        ">;",
        "Lre4;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Ly74;

.field public final synthetic f:Lml2;


# direct methods
.method public constructor <init>(Lml2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lml2$a;->f:Lml2;

    const/4 v0, -0x1

    iput v0, p0, Lml2$a;->b:I

    iget-object p1, p1, Lml2;->a:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, v0, p1}, Lkx6;->f(III)I

    move-result p1

    iput p1, p0, Lml2$a;->c:I

    iput p1, p0, Lml2$a;->d:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Lml2$a;->f:Lml2;

    iget-object v1, v0, Lml2;->a:Ljava/lang/CharSequence;

    iget v2, p0, Lml2$a;->d:I

    const/4 v3, 0x0

    if-gez v2, :cond_0

    iput v3, p0, Lml2$a;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lml2$a;->e:Ly74;

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-le v2, v4, :cond_1

    new-instance v0, Ly74;

    iget v2, p0, Lml2$a;->c:I

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-direct {v0, v2, v1, v6}, Lw74;-><init>(III)V

    iput-object v0, p0, Lml2$a;->e:Ly74;

    iput v5, p0, Lml2$a;->d:I

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lml2;->b:Lbm3;

    iget v2, p0, Lml2$a;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb36;

    if-nez v0, :cond_2

    new-instance v0, Ly74;

    iget v2, p0, Lml2$a;->c:I

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-direct {v0, v2, v1, v6}, Lw74;-><init>(III)V

    iput-object v0, p0, Lml2$a;->e:Ly74;

    iput v5, p0, Lml2$a;->d:I

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lb36;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v0, v0, Lb36;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v2, p0, Lml2$a;->c:I

    invoke-static {v2, v1}, Lkx6;->n(II)Ly74;

    move-result-object v2

    iput-object v2, p0, Lml2$a;->e:Ly74;

    add-int/2addr v1, v0

    iput v1, p0, Lml2$a;->c:I

    if-nez v0, :cond_3

    move v3, v6

    :cond_3
    add-int/2addr v1, v3

    iput v1, p0, Lml2$a;->d:I

    :goto_0
    iput v6, p0, Lml2$a;->b:I

    return-void
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lml2$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lml2$a;->a()V

    :cond_0
    iget p0, p0, Lml2$a;->b:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lml2$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lml2$a;->a()V

    :cond_0
    iget v0, p0, Lml2$a;->b:I

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lml2$a;->e:Ly74;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, Lml2$a;->e:Ly74;

    iput v1, p0, Lml2$a;->b:I

    return-object v0

    :cond_1
    invoke-static {}, Lqz0;->e()V

    return-object v2
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
