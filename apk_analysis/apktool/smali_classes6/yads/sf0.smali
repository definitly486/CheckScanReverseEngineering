.class public final Lyads/sf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/yc3;


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lyads/sf0;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/hi6;)V
    .locals 0

    .line 10
    return-void
.end method

.method public final a(Lyads/xc3;Z)V
    .locals 0

    iget-object p1, p1, Lyads/xc3;->a:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lyads/sf0;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
