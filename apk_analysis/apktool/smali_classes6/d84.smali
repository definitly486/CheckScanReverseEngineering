.class public final synthetic Ld84;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ld84;->b:I

    iput-object p1, p0, Ld84;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ld84;->b:I

    iget-object p0, p0, Ld84;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/wq0;

    invoke-static {p0}, Lyads/wq0;->c(Lyads/wq0;)Lyads/ho2;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lyads/ts3;->a(Landroid/content/Context;)Lyads/e85;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->z(Lyads/nq0;)Lyads/my1;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/material3/TextFieldColors;

    invoke-static {p0}, Landroidx/compose/material3/TextFieldColors;->a(Landroidx/compose/material3/TextFieldColors;)Landroidx/compose/foundation/text/selection/TextSelectionColors;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lef4;

    invoke-interface {p0}, Lef4;->d()Lne4;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;

    invoke-static {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->b(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;

    invoke-static {p0}, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;->j(Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;)Lyads/gf0;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
