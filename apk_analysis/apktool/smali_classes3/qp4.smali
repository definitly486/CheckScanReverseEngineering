.class public final synthetic Lqp4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Landroidx/lifecycle/LifecycleOwner;

.field public final synthetic f:Lnl3;

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lnl3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqp4;->b:Ljava/lang/Object;

    iput-object p2, p0, Lqp4;->c:Ljava/lang/Object;

    iput-object p3, p0, Lqp4;->d:Ljava/lang/Object;

    iput-object p4, p0, Lqp4;->e:Landroidx/lifecycle/LifecycleOwner;

    iput-object p5, p0, Lqp4;->f:Lnl3;

    iput p6, p0, Lqp4;->g:I

    iput p7, p0, Lqp4;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v0, p0, Lqp4;->b:Ljava/lang/Object;

    iget-object v1, p0, Lqp4;->c:Ljava/lang/Object;

    iget-object v2, p0, Lqp4;->d:Ljava/lang/Object;

    iget-object v3, p0, Lqp4;->e:Landroidx/lifecycle/LifecycleOwner;

    iget-object v4, p0, Lqp4;->f:Lnl3;

    iget v5, p0, Lqp4;->g:I

    iget v6, p0, Lqp4;->h:I

    invoke-static/range {v0 .. v8}, Landroidx/lifecycle/compose/LifecycleEffectKt;->k(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lnl3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
