.class public final synthetic Lzt0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lzt0;->b:I

    iput-object p1, p0, Lzt0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lzt0;->d:Ljava/lang/Object;

    iput-object p3, p0, Lzt0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lzt0;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lzt0;->c:Ljava/lang/Object;

    check-cast v0, Lod6;

    iget-object v1, p0, Lzt0;->d:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object p0, p0, Lzt0;->e:Ljava/lang/Object;

    check-cast p0, Landroid/view/Window;

    iget-boolean v2, v0, Lod6;->l:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lod6;->c:Lta6;

    iget-object v2, v2, Lnb6;->y:Ljava/lang/String;

    const-string v3, "posthog-flutter"

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lod6;->g:Lfh8;

    invoke-virtual {v2}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lhd6;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, p0, v4}, Lhd6;-><init>(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    sget-object p0, Lj59;->a:Lj59;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    :goto_1
    return-object p0

    :pswitch_0
    iget-object v0, p0, Lzt0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    iget-object v1, p0, Lzt0;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/layout/LayoutCoordinates;

    iget-object p0, p0, Lzt0;->e:Ljava/lang/Object;

    check-cast p0, Lll3;

    invoke-static {v0, v1, p0}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->a(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/layout/LayoutCoordinates;Lll3;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
