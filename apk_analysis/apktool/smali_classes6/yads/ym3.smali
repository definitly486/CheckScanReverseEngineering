.class public final Lyads/ym3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# instance fields
.field public final synthetic a:Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;)V
    .locals 0

    iput-object p1, p0, Lyads/ym3;->a:Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lyads/ih0;

    iget-object p0, p0, Lyads/ym3;->a:Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;

    invoke-static {p0}, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;->b(Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;)Lyads/jh0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p2, p1, Lyads/ih0;->c:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lyads/jh0;->a:Lyads/ge0;

    sget-object v0, Lkx2;->b:Lkx2;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    iget-object p2, p0, Lyads/jh0;->c:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lyads/ih0;->d:Ljava/util/List;

    iget-object v0, p0, Lyads/jh0;->a:Lyads/ge0;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    iget-object p2, p0, Lyads/jh0;->c:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lyads/jh0;->b:Landroid/widget/TextView;

    iget-object p1, p1, Lyads/ih0;->b:Lyads/mf0;

    iget-object p1, p1, Lyads/mf0;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
