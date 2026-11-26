.class public final Lcj0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu83$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcj0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu83$a<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lzz5;Lsy6;)Lu83;
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    new-instance p0, Lcj0;

    invoke-direct {p0, p1}, Lcj0;-><init>(Landroid/graphics/Bitmap;)V

    return-object p0
.end method
