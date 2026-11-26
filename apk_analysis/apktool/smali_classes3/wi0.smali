.class public final Lwi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll47;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll47<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lij0;

.field public final c:Lyi0;


# direct methods
.method public constructor <init>(Lij0;Lyi0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwi0;->b:Lij0;

    iput-object p2, p0, Lwi0;->c:Lyi0;

    return-void
.end method


# virtual methods
.method public final c(Lxz5;)Lrx2;
    .locals 0

    sget-object p0, Lrx2;->TRANSFORMED:Lrx2;

    return-object p0
.end method

.method public final d(Ljava/lang/Object;Ljava/io/File;Lxz5;)Z
    .locals 2

    check-cast p1, Le47;

    new-instance v0, Lkj0;

    invoke-interface {p1}, Le47;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v1, p0, Lwi0;->b:Lij0;

    invoke-direct {v0, v1, p1}, Lkj0;-><init>(Lij0;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lwi0;->c:Lyi0;

    invoke-virtual {p0, v0, p2, p3}, Lyi0;->d(Ljava/lang/Object;Ljava/io/File;Lxz5;)Z

    move-result p0

    return p0
.end method
