.class public final Lps2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls19;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls19<",
        "Landroid/graphics/drawable/Drawable;",
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

.field public final c:Z


# direct methods
.method public constructor <init>(Ls19;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls19<",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lps2;->b:Ls19;

    iput-boolean p2, p0, Lps2;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 0

    iget-object p0, p0, Lps2;->b:Ls19;

    invoke-interface {p0, p1}, Lkf4;->a(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Le47;II)Le47;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le47<",
            "Landroid/graphics/drawable/Drawable;",
            ">;II)",
            "Le47<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/bumptech/glide/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/a;

    move-result-object v0

    iget-object v0, v0, Lcom/bumptech/glide/a;->b:Lij0;

    invoke-interface {p2}, Le47;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, p3, p4}, Los2;->a(Lij0;Landroid/graphics/drawable/Drawable;II)Lkj0;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lps2;->c:Z

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    const-string p0, "Unable to convert "

    const-string p1, " to a Bitmap"

    invoke-static {v1, p0, p1}, Lyq;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, p0, Lps2;->b:Ls19;

    invoke-interface {p0, p1, v0, p3, p4}, Ls19;->b(Landroid/content/Context;Le47;II)Le47;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p0}, Le47;->recycle()V

    return-object p2

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance p2, Ldl4;

    invoke-direct {p2, p1, p0}, Ldl4;-><init>(Landroid/content/res/Resources;Le47;)V

    return-object p2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lps2;

    if-eqz v0, :cond_0

    check-cast p1, Lps2;

    iget-object p0, p0, Lps2;->b:Ls19;

    iget-object p1, p1, Lps2;->b:Ls19;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lps2;->b:Ls19;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
