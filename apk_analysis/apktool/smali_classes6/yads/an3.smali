.class public final synthetic Lyads/an3;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lnl3;


# direct methods
.method public constructor <init>(Lyads/in3;)V
    .locals 7

    const-string v5, "onAction(Lcom/yandex/mobile/ads/features/debugpanel/ui/model/DebugPanelUiAction;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lyads/in3;

    const-string v4, "onAction"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lyads/ah0;

    iget-object p0, p0, Lqy0;->receiver:Ljava/lang/Object;

    check-cast p0, Lyads/in3;

    invoke-virtual {p0, p1}, Lyads/in3;->a(Lyads/ah0;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
