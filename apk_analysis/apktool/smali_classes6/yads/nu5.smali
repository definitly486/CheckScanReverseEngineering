.class public final Lyads/nu5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:I

.field public c:I

.field public final d:[I

.field public final e:Lyads/mu5;


# direct methods
.method public constructor <init>(ILyads/mu5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lyads/nu5;->b:I

    iput v0, p0, Lyads/nu5;->c:I

    iput p1, p0, Lyads/nu5;->a:I

    iput-object p2, p0, Lyads/nu5;->e:Lyads/mu5;

    new-array p1, p1, [I

    iput-object p1, p0, Lyads/nu5;->d:[I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    iget v0, p0, Lyads/nu5;->c:I

    if-gez v0, :cond_2

    iget v0, p0, Lyads/nu5;->b:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lyads/nu5;->e:Lyads/mu5;

    const/4 v1, 0x0

    check-cast v0, Lyr9;

    invoke-virtual {v0, v1}, Lyr9;->a(I)I

    move-result v0

    iput v0, p0, Lyads/nu5;->b:I

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lyads/nu5;->a:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lyads/nu5;->e:Lyads/mu5;

    check-cast v2, Lyr9;

    invoke-virtual {v2, v1}, Lyr9;->a(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v0, p0, Lyads/nu5;->c:I

    :cond_2
    return v0
.end method

.method public final a(I)I
    .locals 2

    .line 42
    iget v0, p0, Lyads/nu5;->a:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-gez p1, :cond_1

    .line 43
    invoke-virtual {p0, v1}, Lyads/nu5;->a(I)I

    move-result p0

    return p0

    :cond_1
    if-lt p1, v0, :cond_2

    .line 44
    invoke-virtual {p0, v0}, Lyads/nu5;->a(I)I

    move-result p0

    return p0

    .line 45
    :cond_2
    iget-object v0, p0, Lyads/nu5;->d:[I

    aget v1, v0, p1

    if-gtz v1, :cond_3

    .line 46
    iget-object v1, p0, Lyads/nu5;->e:Lyads/mu5;

    check-cast v1, Lyr9;

    invoke-virtual {v1, p1}, Lyr9;->a(I)I

    move-result v1

    aput v1, v0, p1

    .line 47
    :cond_3
    iget-object p0, p0, Lyads/nu5;->d:[I

    aget p0, p0, p1

    return p0
.end method
