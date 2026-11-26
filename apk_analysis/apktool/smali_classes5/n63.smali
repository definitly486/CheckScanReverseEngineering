.class public final Ln63;
.super Lm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln63$a;
    }
.end annotation


# instance fields
.field public final a:Lm63;

.field public b:Ljava/lang/String;

.field public final c:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(IIC)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm63;

    invoke-direct {v0}, Lm63;-><init>()V

    iput-object v0, p0, Ln63;->a:Lm63;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Ln63;->c:Ljava/lang/StringBuilder;

    iput-char p3, v0, Lm63;->f:C

    iput p1, v0, Lm63;->g:I

    iput p2, v0, Lm63;->h:I

    return-void
.end method


# virtual methods
.method public final d()Lpj0;
    .locals 0

    iget-object p0, p0, Ln63;->a:Lm63;

    return-object p0
.end method

.method public final e(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Ln63;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ln63;->b:Ljava/lang/String;

    return-void

    :cond_0
    iget-object p0, p0, Ln63;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final f(Ldq2;)Lrj0;
    .locals 5

    iget v0, p1, Ldq2;->e:I

    iget v1, p1, Ldq2;->b:I

    iget-object v2, p1, Ldq2;->a:Ljava/lang/CharSequence;

    iget p1, p1, Ldq2;->g:I

    const/4 v3, 0x4

    iget-object p0, p0, Ln63;->a:Lm63;

    if-ge p1, v3, :cond_1

    iget-char p1, p0, Lm63;->f:C

    iget v3, p0, Lm63;->g:I

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {p1, v0, v4, v2}, Ltz;->b(CIILjava/lang/CharSequence;)I

    move-result p1

    sub-int/2addr p1, v0

    if-ge p1, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v0, p1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {v2, v0, p1}, Ltz;->c(Ljava/lang/CharSequence;II)I

    move-result p1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p1, v0, :cond_1

    new-instance p0, Lrj0;

    const/4 p1, -0x1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p1, v0}, Lrj0;-><init>(IIZ)V

    return-object p0

    :cond_1
    :goto_0
    iget p0, p0, Lm63;->h:I

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_1
    if-lez p0, :cond_2

    if-ge v1, p1, :cond_2

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lrj0;->a(I)Lrj0;

    move-result-object p0

    return-object p0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Ln63;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw03;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ln63;->a:Lm63;

    iput-object v0, v1, Lm63;->i:Ljava/lang/String;

    iget-object p0, p0, Ln63;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lm63;->j:Ljava/lang/String;

    return-void
.end method
