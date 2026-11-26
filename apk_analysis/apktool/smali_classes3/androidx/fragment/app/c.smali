.class public final synthetic Landroidx/fragment/app/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/fragment/app/FragmentTransitionImpl;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/c;->b:Landroidx/fragment/app/FragmentTransitionImpl;

    iput-object p2, p0, Landroidx/fragment/app/c;->c:Landroid/view/View;

    iput-object p3, p0, Landroidx/fragment/app/c;->d:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/c;->c:Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/c;->d:Landroid/graphics/Rect;

    iget-object p0, p0, Landroidx/fragment/app/c;->b:Landroidx/fragment/app/FragmentTransitionImpl;

    invoke-static {p0, v0, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionEffect;->b(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
