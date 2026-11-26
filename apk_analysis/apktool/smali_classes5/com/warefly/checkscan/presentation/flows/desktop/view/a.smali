.class public final Lcom/warefly/checkscan/presentation/flows/desktop/view/a;
.super Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/a;->a:Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;

    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    sget-object v0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->s:[Lze4;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/a;->a:Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->bottomNavigation:Lcom/warefly/checkscan/ui/bottomnavigationscan/BottomNavigationScan;

    invoke-virtual {v1}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f0a00b5

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const-string v2, "\u0411\u0430\u043b\u0430\u043d\u0441"

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const v2, 0x7f0801bb

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->menuCostyl:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-super {p0, p1}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
