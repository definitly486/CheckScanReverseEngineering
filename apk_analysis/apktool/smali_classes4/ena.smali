.class public final Lena;
.super Lcom/google/android/gms/internal/auth-api/zbbm;
.source "SourceFile"


# instance fields
.field public final b:I

.field public c:I

.field public final d:Lcom/google/android/gms/internal/auth-api/zbbj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth-api/zbbj;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth-api/zbbm;-><init>()V

    const-string v1, "index"

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/auth-api/zbbd;->zbb(IILjava/lang/String;)I

    iput v0, p0, Lena;->b:I

    iput p2, p0, Lena;->c:I

    iput-object p1, p0, Lena;->d:Lcom/google/android/gms/internal/auth-api/zbbj;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lena;->d:Lcom/google/android/gms/internal/auth-api/zbbj;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lena;->c:I

    iget p0, p0, Lena;->b:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasPrevious()Z
    .locals 0

    iget p0, p0, Lena;->c:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lena;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lena;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lena;->c:I

    invoke-virtual {p0, v0}, Lena;->a(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lqz0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final nextIndex()I
    .locals 0

    iget p0, p0, Lena;->c:I

    return p0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lena;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lena;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lena;->c:I

    invoke-virtual {p0, v0}, Lena;->a(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lqz0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final previousIndex()I
    .locals 0

    iget p0, p0, Lena;->c:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method
