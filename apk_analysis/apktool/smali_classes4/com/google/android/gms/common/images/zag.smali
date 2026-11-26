.class public abstract Lcom/google/android/gms/common/images/zag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lrka;

.field public b:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lrka;

    invoke-direct {v0, p1}, Lrka;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/zag;->a:Lrka;

    iput p2, p0, Lcom/google/android/gms/common/images/zag;->b:I

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/graphics/drawable/Drawable;ZZZ)V
.end method

.method public final b(Landroid/content/Context;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/images/zag;->b:I

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/google/android/gms/common/images/zag;->a(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method
