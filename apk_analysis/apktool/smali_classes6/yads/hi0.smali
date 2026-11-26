.class public final Lyads/hi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Lnl3;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/hi0;->b:Ljava/lang/String;

    iput-boolean p2, p0, Lyads/hi0;->c:Z

    iput-object p3, p0, Lyads/hi0;->d:Lnl3;

    return-void
.end method

.method public static final a(Lyads/hi0;Landroid/graphics/Bitmap;)Lj59;
    .locals 1

    iget-object p0, p0, Lyads/hi0;->d:Lnl3;

    if-eqz p1, :cond_0

    new-instance v0, Lyads/gd3;

    invoke-direct {v0, p1}, Lyads/gd3;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lyads/hi0;->b:Ljava/lang/String;

    const-string v1, "data:"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0x2c

    const/4 v4, 0x6

    invoke-static {v1, v2, v4, v0}, Lta8;->J(CIILjava/lang/CharSequence;)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :try_start_0
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    :try_start_1
    array-length v5, v0

    invoke-static {v0, v2, v5, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    sget v0, Lyads/cr3;->a:I

    sget-object v0, Lyads/vj5;->b:[Lyads/vj5;

    sget v0, Lyads/rv3;->a:I

    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v4

    :goto_1
    iget-boolean v1, p0, Lyads/hi0;->c:Z

    if-eqz v1, :cond_3

    iget-object p0, p0, Lyads/hi0;->d:Lnl3;

    if-eqz v0, :cond_2

    new-instance v4, Lyads/gd3;

    invoke-direct {v4, v0}, Lyads/gd3;-><init>(Landroid/graphics/Bitmap;)V

    :cond_2
    invoke-interface {p0, v4}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    new-instance v1, Lgt8;

    invoke-direct {v1, v3, p0, v0}, Lgt8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Lyads/d46;->a(Lll3;)V

    :goto_2
    return-void

    :catch_1
    sget p0, Lyads/cr3;->a:I

    sget-object p0, Lyads/vj5;->b:[Lyads/vj5;

    sget p0, Lyads/rv3;->a:I

    return-void
.end method
