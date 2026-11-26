.class public final synthetic Law3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# instance fields
.field public final synthetic b:Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/behavior/HideViewOnScrollBehavior;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Law3;->b:Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

    iput-object p2, p0, Law3;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onTouchExplorationStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Law3;->b:Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

    iget-object p0, p0, Law3;->c:Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->a(Lcom/google/android/material/behavior/HideViewOnScrollBehavior;Landroid/view/View;Z)V

    return-void
.end method
