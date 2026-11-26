.class public final Lh44;
.super Lm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh44$a;
    }
.end annotation


# instance fields
.field public final a:Lg44;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg44;

    invoke-direct {v0}, Lg44;-><init>()V

    iput-object v0, p0, Lh44;->a:Lg44;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh44;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final d()Lpj0;
    .locals 0

    iget-object p0, p0, Lh44;->a:Lg44;

    return-object p0
.end method

.method public final e(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lh44;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f(Ldq2;)Lrj0;
    .locals 2

    iget p0, p1, Ldq2;->g:I

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    iget p0, p1, Ldq2;->c:I

    add-int/2addr p0, v0

    new-instance p1, Lrj0;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v1}, Lrj0;-><init>(IIZ)V

    return-object p1

    :cond_0
    iget-boolean p0, p1, Ldq2;->h:Z

    if-eqz p0, :cond_1

    iget p0, p1, Ldq2;->e:I

    invoke-static {p0}, Lrj0;->a(I)Lrj0;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final h()V
    .locals 9

    iget-object v0, p0, Lh44;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move v5, v2

    :goto_1
    const/4 v6, -0x1

    if-ge v5, v4, :cond_1

    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-eq v7, v8, :cond_0

    packed-switch v7, :pswitch_data_0

    goto :goto_2

    :cond_0
    :pswitch_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_2
    if-ne v5, v6, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    add-int/lit8 v4, v1, 0x1

    if-ge v2, v4, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lh44;->a:Lg44;

    iput-object v0, p0, Lg44;->f:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
