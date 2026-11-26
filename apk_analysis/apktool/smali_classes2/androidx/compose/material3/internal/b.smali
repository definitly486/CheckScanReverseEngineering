.class public final synthetic Landroidx/compose/material3/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/internal/Listener;

.field public final synthetic c:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/internal/Listener;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/internal/b;->b:Landroidx/compose/material3/internal/Listener;

    iput-object p2, p0, Landroidx/compose/material3/internal/b;->c:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/internal/b;->b:Landroidx/compose/material3/internal/Listener;

    iget-object p0, p0, Landroidx/compose/material3/internal/b;->c:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0, p0}, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt;->g(Landroidx/compose/material3/internal/Listener;Landroid/view/accessibility/AccessibilityManager;)Lj59;

    move-result-object p0

    return-object p0
.end method
