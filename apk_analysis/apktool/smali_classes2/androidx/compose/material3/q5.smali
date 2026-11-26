.class public final synthetic Landroidx/compose/material3/q5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/q5;->b:Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/q5;->b:Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-static {p0, p1}, Landroidx/compose/material3/WideNavigationRail_androidKt;->b(Landroidx/compose/material3/ModalWideNavigationRailDialogWrapper;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
