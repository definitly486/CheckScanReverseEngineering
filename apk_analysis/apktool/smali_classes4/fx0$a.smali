.class public final Lfx0$a;
.super Lfx0$b;
.source "SourceFile"


# instance fields
.field public b:I

.field public final c:I

.field public final synthetic d:Lfx0;


# direct methods
.method public constructor <init>(Lfx0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfx0$a;->d:Lfx0;

    const/4 v0, 0x0

    iput v0, p0, Lfx0$a;->b:I

    invoke-virtual {p1}, Lfx0;->size()I

    move-result p1

    iput p1, p0, Lfx0$a;->c:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lfx0$a;->b:I

    iget p0, p0, Lfx0$a;->c:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final nextByte()B
    .locals 2

    iget v0, p0, Lfx0$a;->b:I

    iget v1, p0, Lfx0$a;->c:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lfx0$a;->b:I

    iget-object p0, p0, Lfx0$a;->d:Lfx0;

    invoke-virtual {p0, v0}, Lfx0;->i(I)B

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lqz0;->e()V

    const/4 p0, 0x0

    return p0
.end method
