.class public final Lxp3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls19;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls19<",
        "Lup3;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ls19;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls19<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls19;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls19<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lr96;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lxp3;->b:Ls19;

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 0

    iget-object p0, p0, Lxp3;->b:Ls19;

    invoke-interface {p0, p1}, Lkf4;->a(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Le47;II)Le47;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le47<",
            "Lup3;",
            ">;II)",
            "Le47<",
            "Lup3;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Le47;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lup3;

    invoke-static {p1}, Lcom/bumptech/glide/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/a;

    move-result-object v1

    iget-object v1, v1, Lcom/bumptech/glide/a;->b:Lij0;

    iget-object v2, v0, Lup3;->b:Lup3$a;

    iget-object v2, v2, Lup3$a;->a:Lzp3;

    iget-object v2, v2, Lzp3;->l:Landroid/graphics/Bitmap;

    new-instance v3, Lkj0;

    invoke-direct {v3, v1, v2}, Lkj0;-><init>(Lij0;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lxp3;->b:Ls19;

    invoke-interface {p0, p1, v3, p3, p4}, Ls19;->b(Landroid/content/Context;Le47;II)Le47;

    move-result-object p1

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Lkj0;->recycle()V

    :cond_0
    invoke-interface {p1}, Le47;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p3, v0, Lup3;->b:Lup3$a;

    iget-object p3, p3, Lup3$a;->a:Lzp3;

    invoke-virtual {p3, p0, p1}, Lzp3;->c(Ls19;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lxp3;

    if-eqz v0, :cond_0

    check-cast p1, Lxp3;

    iget-object p0, p0, Lxp3;->b:Ls19;

    iget-object p1, p1, Lxp3;->b:Ls19;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lxp3;->b:Ls19;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
