.class public final Landroidx/compose/material3/internal/BasicTooltipKt$BasicTooltipBox$lambda$4$lambda$3$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/internal/BasicTooltipKt;->BasicTooltipBox(Landroidx/compose/ui/window/PopupPositionProvider;Lbm3;Landroidx/compose/material3/TooltipState;Landroidx/compose/ui/Modifier;Lll3;ZZZLbm3;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $state$inlined:Landroidx/compose/material3/TooltipState;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/TooltipState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/internal/BasicTooltipKt$BasicTooltipBox$lambda$4$lambda$3$$inlined$onDispose$1;->$state$inlined:Landroidx/compose/material3/TooltipState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/internal/BasicTooltipKt$BasicTooltipBox$lambda$4$lambda$3$$inlined$onDispose$1;->$state$inlined:Landroidx/compose/material3/TooltipState;

    invoke-interface {p0}, Landroidx/compose/material3/TooltipState;->onDispose()V

    return-void
.end method
