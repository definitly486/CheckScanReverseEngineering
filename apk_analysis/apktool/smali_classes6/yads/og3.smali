.class public final Lyads/og3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:Lyads/pg3;


# direct methods
.method public constructor <init>(Lyads/pg3;)V
    .locals 0

    iput-object p1, p0, Lyads/og3;->a:Lyads/pg3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lyads/og3;->a:Lyads/pg3;

    invoke-virtual {p0}, Lyads/pg3;->dismiss()V

    return-void
.end method
