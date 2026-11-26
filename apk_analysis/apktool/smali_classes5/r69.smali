.class public final synthetic Lr69;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr69;->a:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;

    iput-boolean p2, p0, Lr69;->b:Z

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    sget-object p1, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->r:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$a;

    iget-object p1, p0, Lr69;->a:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->p()Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->srlContent:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-boolean p0, p0, Lr69;->b:Z

    if-eqz p0, :cond_0

    if-nez p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    return-void
.end method
