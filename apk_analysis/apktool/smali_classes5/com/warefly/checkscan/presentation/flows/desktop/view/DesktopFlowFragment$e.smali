.class public final Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo37;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->showCoinAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo37<",
        "Lup3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$e;->a:Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;

    return-void
.end method


# virtual methods
.method public final onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lwk8;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lwk8<",
            "Lup3;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public final onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lwk8;Ly82;Z)Z
    .locals 0

    check-cast p1, Lup3;

    const/4 p2, 0x1

    iput p2, p1, Lup3;->h:I

    new-instance p2, Lcom/warefly/checkscan/presentation/flows/desktop/view/a;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$e;->a:Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;

    invoke-direct {p2, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/a;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;)V

    invoke-virtual {p1, p2}, Lup3;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    const/4 p0, 0x0

    return p0
.end method
