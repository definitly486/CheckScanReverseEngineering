.class public final synthetic Lse0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Z

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Lcm3;

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;ZZLdm3;II)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lse0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lse0;->h:Lcm3;

    iput-object p2, p0, Lse0;->d:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lse0;->i:Ljava/lang/Object;

    iput-boolean p4, p0, Lse0;->c:Z

    iput-boolean p5, p0, Lse0;->e:Z

    iput-object p6, p0, Lse0;->j:Ljava/lang/Object;

    iput p7, p0, Lse0;->f:I

    iput p8, p0, Lse0;->g:I

    return-void
.end method

.method public synthetic constructor <init>(ZLnl3;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/CheckboxColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V
    .locals 1

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lse0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lse0;->c:Z

    iput-object p2, p0, Lse0;->h:Lcm3;

    iput-object p3, p0, Lse0;->d:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Lse0;->e:Z

    iput-object p5, p0, Lse0;->i:Ljava/lang/Object;

    iput-object p6, p0, Lse0;->j:Ljava/lang/Object;

    iput p7, p0, Lse0;->f:I

    iput p8, p0, Lse0;->g:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lse0;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lse0;->h:Lcm3;

    move-object v2, v0

    check-cast v2, Lnl3;

    iget-object v0, p0, Lse0;->i:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroidx/compose/material3/CheckboxColors;

    iget-object v0, p0, Lse0;->j:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-boolean v1, p0, Lse0;->c:Z

    iget-object v3, p0, Lse0;->d:Landroidx/compose/ui/Modifier;

    iget-boolean v4, p0, Lse0;->e:Z

    iget v7, p0, Lse0;->f:I

    iget v8, p0, Lse0;->g:I

    invoke-static/range {v1 .. v10}, Landroidx/compose/material3/CheckboxKt;->f(ZLnl3;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/CheckboxColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lse0;->h:Lcm3;

    move-object v1, v0

    check-cast v1, Lll3;

    iget-object v0, p0, Lse0;->i:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/window/DialogProperties;

    iget-object v0, p0, Lse0;->j:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ldm3;

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v2, p0, Lse0;->d:Landroidx/compose/ui/Modifier;

    iget-boolean v4, p0, Lse0;->c:Z

    iget-boolean v5, p0, Lse0;->e:Z

    iget v7, p0, Lse0;->f:I

    iget v8, p0, Lse0;->g:I

    invoke-static/range {v1 .. v10}, Landroidx/compose/material3/internal/BasicEdgeToEdgeDialog_androidKt;->c(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;ZZLdm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
