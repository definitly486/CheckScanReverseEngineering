.class public final Landroidx/compose/foundation/BasicTooltipKt$BasicTooltipBox$lambda$1$0$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/BasicTooltipKt;->BasicTooltipBox(Landroidx/compose/ui/window/PopupPositionProvider;Lbm3;Landroidx/compose/foundation/BasicTooltipState;Landroidx/compose/ui/Modifier;ZZZLbm3;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $state$inlined:Landroidx/compose/foundation/BasicTooltipState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/BasicTooltipState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/BasicTooltipKt$BasicTooltipBox$lambda$1$0$$inlined$onDispose$1;->$state$inlined:Landroidx/compose/foundation/BasicTooltipState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/BasicTooltipKt$BasicTooltipBox$lambda$1$0$$inlined$onDispose$1;->$state$inlined:Landroidx/compose/foundation/BasicTooltipState;

    invoke-interface {p0}, Landroidx/compose/foundation/BasicTooltipState;->onDispose()V

    return-void
.end method
