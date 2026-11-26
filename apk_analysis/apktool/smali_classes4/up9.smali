.class public final Lup9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpfa;


# instance fields
.field public final a:I

.field public final b:Le6a;


# direct methods
.method public constructor <init>(ILe6a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lup9;->a:I

    iput-object p2, p0, Lup9;->b:Le6a;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lup9;

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lup9;

    iget v1, p1, Lup9;->a:I

    iget v2, p0, Lup9;->a:I

    if-ne v2, v1, :cond_1

    iget-object p0, p0, Lup9;->b:Le6a;

    iget-object p1, p1, Lup9;->b:Le6a;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lup9;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lup9;->b:Le6a;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
