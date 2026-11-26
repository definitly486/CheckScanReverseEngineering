.class public abstract Lip1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lip1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public final synthetic e:Lip1;


# direct methods
.method public constructor <init>(Lip1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lip1$b;->e:Lip1;

    iget v0, p1, Lip1;->f:I

    iput v0, p0, Lip1$b;->b:I

    invoke-virtual {p1}, Lip1;->isEmpty()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lip1$b;->c:I

    iput v0, p0, Lip1$b;->d:I

    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .locals 0

    iget p0, p0, Lip1$b;->c:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lip1$b;->e:Lip1;

    iget v1, v0, Lip1;->f:I

    iget v2, p0, Lip1$b;->b:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lip1$b;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lip1$b;->c:I

    iput v1, p0, Lip1$b;->d:I

    invoke-virtual {p0, v1}, Lip1$b;->a(I)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lip1$b;->c:I

    add-int/lit8 v2, v2, 0x1

    iget v0, v0, Lip1;->g:I

    if-ge v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    iput v2, p0, Lip1$b;->c:I

    return-object v1

    :cond_1
    invoke-static {}, Lqz0;->e()V

    return-object v3

    :cond_2
    invoke-static {}, Lln;->e()V

    return-object v3
.end method

.method public final remove()V
    .locals 4

    iget-object v0, p0, Lip1$b;->e:Lip1;

    iget v1, v0, Lip1;->f:I

    iget v2, p0, Lip1$b;->b:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lip1$b;->d:I

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcn1;->c(Z)V

    iget v1, p0, Lip1$b;->b:I

    add-int/lit8 v1, v1, 0x20

    iput v1, p0, Lip1$b;->b:I

    iget v1, p0, Lip1$b;->d:I

    sget-object v3, Lip1;->k:Ljava/lang/Object;

    invoke-virtual {v0}, Lip1;->p()[Ljava/lang/Object;

    move-result-object v3

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Lip1;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lip1$b;->c:I

    sub-int/2addr v0, v2

    iput v0, p0, Lip1$b;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lip1$b;->d:I

    return-void

    :cond_1
    invoke-static {}, Lln;->e()V

    return-void
.end method
