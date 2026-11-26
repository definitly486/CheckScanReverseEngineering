.class public final synthetic Lrr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lrr0;->b:I

    iput-object p1, p0, Lrr0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lrr0;->b:I

    iget-object p0, p0, Lrr0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/tracker/obfuscated/e;

    invoke-static {p0}, Lcom/my/tracker/obfuscated/e;->a(Lcom/my/tracker/obfuscated/e;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/window/area/WindowAreaSessionCallback;

    invoke-static {p0}, Landroidx/window/area/WindowAreaControllerImpl;->b(Landroidx/window/area/WindowAreaSessionCallback;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-static {p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->b(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/camera/video/internal/encoder/EncoderImpl;

    invoke-static {p0}, Landroidx/camera/video/internal/encoder/EncoderImpl;->h(Landroidx/camera/video/internal/encoder/EncoderImpl;)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;

    sget-object v0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->l:[Lze4;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBonusesSearchNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentBonusesSearchNewBinding;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-static {v0, p0}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object p0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->show(I)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
