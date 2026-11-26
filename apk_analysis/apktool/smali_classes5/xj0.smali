.class public final Lxj0;
.super Lm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxj0$a;
    }
.end annotation


# instance fields
.field public final a:Lwj0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lwj0;

    invoke-direct {v0}, Lwj0;-><init>()V

    iput-object v0, p0, Lxj0;->a:Lwj0;

    return-void
.end method

.method public static i(Ldq2;I)Z
    .locals 2

    iget-object v0, p0, Ldq2;->a:Ljava/lang/CharSequence;

    iget p0, p0, Ldq2;->g:I

    const/4 v1, 0x4

    if-ge p0, v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-ge p1, p0, :cond_0

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 p1, 0x3e

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final d()Lpj0;
    .locals 0

    iget-object p0, p0, Lxj0;->a:Lwj0;

    return-object p0
.end method

.method public final f(Ldq2;)Lrj0;
    .locals 3

    iget p0, p1, Ldq2;->e:I

    invoke-static {p1, p0}, Lxj0;->i(Ldq2;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Ldq2;->c:I

    iget v1, p1, Ldq2;->g:I

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    iget-object p1, p1, Ldq2;->a:Ljava/lang/CharSequence;

    add-int/lit8 p0, p0, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p0, v2, :cond_1

    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 p1, 0x9

    if-eq p0, p1, :cond_0

    const/16 p1, 0x20

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x2

    :cond_1
    :goto_0
    new-instance p0, Lrj0;

    const/4 p1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lrj0;-><init>(IIZ)V

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
