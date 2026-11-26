.class public final synthetic Lim;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lim;->b:I

    iput-object p2, p0, Lim;->c:Ljava/lang/Object;

    iput-object p3, p0, Lim;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lim;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lim;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/material3/SearchBarState;

    iget-object p0, p0, Lim;->d:Ljava/lang/Object;

    check-cast p0, Ly22;

    invoke-static {p0, v0}, Landroidx/compose/material3/SearchBarDefaults;->a(Ly22;Landroidx/compose/material3/SearchBarState;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lim;->c:Ljava/lang/Object;

    check-cast v0, Lx81;

    iget-object p0, p0, Lim;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v0, p0}, Landroidx/compose/material3/internal/AnimatedShapeKt;->a(Lx81;Landroidx/compose/foundation/shape/RoundedCornerShape;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
