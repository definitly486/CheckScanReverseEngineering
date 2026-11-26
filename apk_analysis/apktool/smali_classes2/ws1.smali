.class public final synthetic Lws1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lws1;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput-object p2, p0, Lws1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lws1;->d:Ljava/lang/Object;

    iput p4, p0, Lws1;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lws1;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget-object v1, p0, Lws1;->c:Ljava/lang/Object;

    iget-object v2, p0, Lws1;->d:Ljava/lang/Object;

    iget v3, p0, Lws1;->e:I

    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->l(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;Ljava/lang/Object;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
