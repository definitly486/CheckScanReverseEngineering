.class public final Lfs2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfs2$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/drawable/Drawable;

.field public final b:Lzz5;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lzz5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfs2;->a:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lfs2;->b:Lzz5;

    return-void
.end method


# virtual methods
.method public final a(Lpz2;)Ljava/lang/Object;
    .locals 10

    sget-object p1, Lsb9;->a:[Landroid/graphics/Bitmap$Config;

    iget-object v0, p0, Lfs2;->a:Landroid/graphics/drawable/Drawable;

    instance-of p1, v0, Landroid/graphics/drawable/VectorDrawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    instance-of p1, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    new-instance v6, Lk14;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lfs2;->b:Lzz5;

    move v3, v1

    invoke-static {p0}, Lf24;->a(Lzz5;)Landroid/graphics/Bitmap$Config;

    move-result-object v1

    move v4, v2

    iget-object v2, p0, Lzz5;->b:Lt18;

    move v5, v3

    iget-object v3, p0, Lzz5;->c:Lmd7;

    sget-object v7, Ld24;->b:Lb53$b;

    invoke-static {p0, v7}, Lc53;->b(Lzz5;Lb53$b;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lt18;

    iget-object v8, p0, Lzz5;->d:Lre6;

    sget-object v9, Lre6;->INEXACT:Lre6;

    if-ne v8, v9, :cond_2

    :goto_2
    move-object v4, v7

    goto :goto_3

    :cond_2
    move v5, v4

    goto :goto_2

    :goto_3
    invoke-static/range {v0 .. v5}, Lss2;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lt18;Lmd7;Lt18;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object p0, p0, Lzz5;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    :cond_3
    invoke-static {v0}, Ln24;->b(Landroid/graphics/drawable/Drawable;)Lx04;

    move-result-object p0

    sget-object v0, Lz82;->MEMORY:Lz82;

    invoke-direct {v6, p0, p1, v0}, Lk14;-><init>(Lx04;ZLz82;)V

    return-object v6
.end method
