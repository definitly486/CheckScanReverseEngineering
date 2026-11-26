.class public final Lkj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le47;
.implements Lg54;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le47<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lg54;"
    }
.end annotation


# instance fields
.field public final b:Landroid/graphics/Bitmap;

.field public final c:Lij0;


# direct methods
.method public constructor <init>(Lij0;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bitmap must not be null"

    invoke-static {p2, v0}, Lr96;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lkj0;->b:Landroid/graphics/Bitmap;

    const-string p2, "BitmapPool must not be null"

    invoke-static {p1, p2}, Lr96;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkj0;->c:Lij0;

    return-void
.end method

.method public static b(Lij0;Landroid/graphics/Bitmap;)Lkj0;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lkj0;

    invoke-direct {v0, p0, p1}, Lkj0;-><init>(Lij0;Landroid/graphics/Bitmap;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkj0;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getSize()I
    .locals 0

    iget-object p0, p0, Lkj0;->b:Landroid/graphics/Bitmap;

    invoke-static {p0}, Leb9;->c(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public final initialize()V
    .locals 0

    iget-object p0, p0, Lkj0;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public final recycle()V
    .locals 1

    iget-object v0, p0, Lkj0;->c:Lij0;

    iget-object p0, p0, Lkj0;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, p0}, Lij0;->c(Landroid/graphics/Bitmap;)V

    return-void
.end method
