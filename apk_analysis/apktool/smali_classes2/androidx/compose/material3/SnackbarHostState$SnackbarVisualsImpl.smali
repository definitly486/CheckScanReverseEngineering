.class final Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material3/SnackbarVisuals;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/SnackbarHostState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SnackbarVisualsImpl"
.end annotation


# instance fields
.field private final actionLabel:Ljava/lang/String;

.field private final duration:Landroidx/compose/material3/SnackbarDuration;

.field private final message:Ljava/lang/String;

.field private final withDismissAction:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/material3/SnackbarDuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->message:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->actionLabel:Ljava/lang/String;

    iput-boolean p3, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->withDismissAction:Z

    iput-object p4, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->duration:Landroidx/compose/material3/SnackbarDuration;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const-class v2, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;

    invoke-virtual {p0}, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->getActionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->getActionLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->getWithDismissAction()Z

    move-result v2

    invoke-virtual {p1}, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->getWithDismissAction()Z

    move-result v3

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->getDuration()Landroidx/compose/material3/SnackbarDuration;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->getDuration()Landroidx/compose/material3/SnackbarDuration;

    move-result-object p1

    if-eq p0, p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public getActionLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->actionLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getDuration()Landroidx/compose/material3/SnackbarDuration;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->duration:Landroidx/compose/material3/SnackbarDuration;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getWithDismissAction()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->withDismissAction:Z

    return p0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->getActionLabel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->getWithDismissAction()Z

    move-result v2

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->getDuration()Landroidx/compose/material3/SnackbarDuration;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
