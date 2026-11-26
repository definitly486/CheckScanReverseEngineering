.class public final Lk59;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li47;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk59$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li47<",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;IILxz5;)Le47;
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    new-instance p0, Lk59$a;

    invoke-direct {p0, p1}, Lk59$a;-><init>(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public final b(Ljava/lang/Object;Lxz5;)Z
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    const/4 p0, 0x1

    return p0
.end method
