.class public final Lvi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li47;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li47<",
        "TDataType;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Li47;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li47<",
            "TDataType;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Li47;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Li47<",
            "TDataType;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvi0;->b:Landroid/content/res/Resources;

    iput-object p2, p0, Lvi0;->a:Li47;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILxz5;)Le47;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;II",
            "Lxz5;",
            ")",
            "Le47<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lvi0;->a:Li47;

    invoke-interface {v0, p1, p2, p3, p4}, Li47;->a(Ljava/lang/Object;IILxz5;)Le47;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p2, Ldl4;

    iget-object p0, p0, Lvi0;->b:Landroid/content/res/Resources;

    invoke-direct {p2, p0, p1}, Ldl4;-><init>(Landroid/content/res/Resources;Le47;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;Lxz5;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;",
            "Lxz5;",
            ")Z"
        }
    .end annotation

    iget-object p0, p0, Lvi0;->a:Li47;

    invoke-interface {p0, p1, p2}, Li47;->b(Ljava/lang/Object;Lxz5;)Z

    move-result p0

    return p0
.end method
