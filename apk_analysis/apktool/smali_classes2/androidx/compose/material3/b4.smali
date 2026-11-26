.class public final synthetic Landroidx/compose/material3/b4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroidx/compose/material3/SnackbarData;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;Landroidx/compose/material3/SnackbarData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/material3/b4;->b:Z

    iput-object p2, p0, Landroidx/compose/material3/b4;->c:Ljava/lang/String;

    iput-object p3, p0, Landroidx/compose/material3/b4;->d:Landroidx/compose/material3/SnackbarData;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/compose/material3/b4;->d:Landroidx/compose/material3/SnackbarData;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    iget-boolean v1, p0, Landroidx/compose/material3/b4;->b:Z

    iget-object p0, p0, Landroidx/compose/material3/b4;->c:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/material3/SnackbarHostKt$FadeInFadeOutWithScale$1$1;->a(ZLjava/lang/String;Landroidx/compose/material3/SnackbarData;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0
.end method
