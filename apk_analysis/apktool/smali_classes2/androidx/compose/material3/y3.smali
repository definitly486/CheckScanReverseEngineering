.class public final synthetic Landroidx/compose/material3/y3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SnackbarData;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SnackbarData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/y3;->b:Landroidx/compose/material3/SnackbarData;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/y3;->b:Landroidx/compose/material3/SnackbarData;

    invoke-static {p0}, Landroidx/compose/material3/SnackbarHostKt$FadeInFadeOutWithScale$1$1;->b(Landroidx/compose/material3/SnackbarData;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
