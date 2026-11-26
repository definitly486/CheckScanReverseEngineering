.class public final Landroidx/compose/material3/WideNavigationRail_androidKt$ModalWideNavigationRailDialog$lambda$7$lambda$6$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/WideNavigationRail_androidKt;->ModalWideNavigationRailDialog(Lll3;Landroidx/compose/material3/ModalWideNavigationRailProperties;Lnl3;Lll3;Landroidx/compose/material3/RailPredictiveBackState;Lbm3;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $dialog$inlined:Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/WideNavigationRail_androidKt$ModalWideNavigationRailDialog$lambda$7$lambda$6$$inlined$onDispose$1;->$dialog$inlined:Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/WideNavigationRail_androidKt$ModalWideNavigationRailDialog$lambda$7$lambda$6$$inlined$onDispose$1;->$dialog$inlined:Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object p0, p0, Landroidx/compose/material3/WideNavigationRail_androidKt$ModalWideNavigationRailDialog$lambda$7$lambda$6$$inlined$onDispose$1;->$dialog$inlined:Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;

    invoke-virtual {p0}, Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;->disposeComposition()V

    return-void
.end method
