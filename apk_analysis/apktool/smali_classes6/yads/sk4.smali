.class public final Lyads/sk4;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final a:Lyads/v65;

.field public final b:Lyads/wz3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/v65;Lyads/wz3;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lyads/sk4;->a:Lyads/v65;

    iput-object p3, p0, Lyads/sk4;->b:Lyads/wz3;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz p3, :cond_0

    instance-of p1, p3, Landroid/view/View;

    if-eqz p1, :cond_0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
