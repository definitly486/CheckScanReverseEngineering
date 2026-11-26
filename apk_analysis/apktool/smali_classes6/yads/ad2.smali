.class public final Lyads/ad2;
.super Lyads/gc5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lyads/gc5;-><init>(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 0

    :try_start_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
