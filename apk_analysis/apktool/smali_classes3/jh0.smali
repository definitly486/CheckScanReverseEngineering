.class public final synthetic Ljh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Ljh0;->b:I

    iput-object p1, p0, Ljh0;->c:Ljava/lang/Object;

    iput-object p2, p0, Ljh0;->d:Ljava/lang/Object;

    iput-object p3, p0, Ljh0;->e:Ljava/lang/Object;

    iput-object p4, p0, Ljh0;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Ljh0;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ljh0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/navigationevent/compose/NavigationEventState;

    iget-object v1, p0, Ljh0;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/navigationevent/NavigationEventInfo;

    iget-object v2, p0, Ljh0;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object p0, p0, Ljh0;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, v1, v2, p0}, Landroidx/navigationevent/compose/RememberNavigationEventStateKt;->a(Landroidx/navigationevent/compose/NavigationEventState;Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;Ljava/util/List;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Ljh0;->c:Ljava/lang/Object;

    check-cast v0, Lll3;

    iget-object v1, p0, Ljh0;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/material3/TooltipState;

    iget-object v2, p0, Ljh0;->e:Ljava/lang/Object;

    check-cast v2, Ly22;

    iget-object p0, p0, Ljh0;->f:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    invoke-static {v0, v1, v2, p0}, Landroidx/compose/material3/internal/BasicTooltipKt;->a(Lll3;Landroidx/compose/material3/TooltipState;Ly22;Landroidx/compose/runtime/MutableState;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
