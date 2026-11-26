.class public final Ln2a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lmh5;


# direct methods
.method public constructor <init>(Lmh5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2a;->a:Lmh5;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    iget-object p0, p0, Ln2a;->a:Lmh5;

    iget-object v0, p0, Lmh5;->b:Ljava/lang/Object;

    check-cast v0, Lcom/my/target/common/MyTargetActivity$b;

    iget-object p0, p0, Lmh5;->c:Ljava/lang/Object;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0, p1, p2}, Lcom/my/target/common/MyTargetActivity$b;->a(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
