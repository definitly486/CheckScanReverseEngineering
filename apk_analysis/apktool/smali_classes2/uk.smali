.class public final synthetic Luk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcm3;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SnackbarData;Landroidx/compose/ui/Modifier;Ldm3;II)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Luk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk;->f:Ljava/lang/Object;

    iput-object p2, p0, Luk;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Luk;->g:Lcm3;

    iput p4, p0, Luk;->d:I

    iput p5, p0, Luk;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lnl3;Lbm3;II)V
    .locals 1

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Luk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Luk;->f:Ljava/lang/Object;

    iput-object p3, p0, Luk;->g:Lcm3;

    iput p4, p0, Luk;->d:I

    iput p5, p0, Luk;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Luk;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Luk;->f:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/compose/material3/SnackbarData;

    iget-object v0, p0, Luk;->g:Lcm3;

    move-object v3, v0

    check-cast v3, Ldm3;

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v2, p0, Luk;->c:Landroidx/compose/ui/Modifier;

    iget v4, p0, Luk;->d:I

    iget v5, p0, Luk;->e:I

    invoke-static/range {v1 .. v7}, Landroidx/compose/material3/SnackbarHostKt;->a(Landroidx/compose/material3/SnackbarData;Landroidx/compose/ui/Modifier;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Luk;->f:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lnl3;

    iget-object v0, p0, Luk;->g:Lcm3;

    move-object v3, v0

    check-cast v3, Lbm3;

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v1, p0, Luk;->c:Landroidx/compose/ui/Modifier;

    iget v4, p0, Luk;->d:I

    iget v5, p0, Luk;->e:I

    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider_androidKt;->b(Landroidx/compose/ui/Modifier;Lnl3;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
