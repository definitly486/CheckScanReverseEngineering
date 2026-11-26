.class public final synthetic Lcp4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroidx/lifecycle/LifecycleOwner;

.field public final synthetic d:Lnl3;

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lnl3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcp4;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcp4;->c:Landroidx/lifecycle/LifecycleOwner;

    iput-object p3, p0, Lcp4;->d:Lnl3;

    iput p4, p0, Lcp4;->e:I

    iput p5, p0, Lcp4;->f:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lcp4;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcp4;->c:Landroidx/lifecycle/LifecycleOwner;

    iget-object v2, p0, Lcp4;->d:Lnl3;

    iget v3, p0, Lcp4;->e:I

    iget v4, p0, Lcp4;->f:I

    invoke-static/range {v0 .. v6}, Landroidx/lifecycle/compose/LifecycleEffectKt;->n(Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lnl3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
