.class public final Ldl4;
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
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;",
        "Lg54;"
    }
.end annotation


# instance fields
.field public final b:Landroid/content/res/Resources;

.field public final c:Le47;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le47<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Le47;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Le47<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lr96;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ldl4;->b:Landroid/content/res/Resources;

    invoke-static {p2, v0}, Lr96;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Ldl4;->c:Le47;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    const-class p0, Landroid/graphics/drawable/BitmapDrawable;

    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Ldl4;->c:Le47;

    invoke-interface {v1}, Le47;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object p0, p0, Ldl4;->b:Landroid/content/res/Resources;

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public final getSize()I
    .locals 0

    iget-object p0, p0, Ldl4;->c:Le47;

    invoke-interface {p0}, Le47;->getSize()I

    move-result p0

    return p0
.end method

.method public final initialize()V
    .locals 1

    iget-object p0, p0, Ldl4;->c:Le47;

    instance-of v0, p0, Lg54;

    if-eqz v0, :cond_0

    check-cast p0, Lg54;

    invoke-interface {p0}, Lg54;->initialize()V

    :cond_0
    return-void
.end method

.method public final recycle()V
    .locals 0

    iget-object p0, p0, Ldl4;->c:Le47;

    invoke-interface {p0}, Le47;->recycle()V

    return-void
.end method
