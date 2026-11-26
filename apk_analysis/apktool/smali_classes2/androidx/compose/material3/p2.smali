.class public final synthetic Landroidx/compose/material3/p2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Lll3;


# direct methods
.method public synthetic constructor <init>(Lll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/p2;->a:Lll3;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/p2;->a:Lll3;

    invoke-static {p0}, Landroidx/compose/material3/ModalWideNavigationRailDialogLayout$Api33Impl;->a(Lll3;)V

    return-void
.end method
