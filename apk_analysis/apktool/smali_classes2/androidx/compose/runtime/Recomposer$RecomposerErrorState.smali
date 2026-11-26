.class final Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/RecomposerErrorInfo;
.implements Landroidx/compose/runtime/RecomposerErrorInformation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/Recomposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecomposerErrorState"
.end annotation


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private final isRecoverable:Z


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;->cause:Ljava/lang/Throwable;

    iput-boolean p2, p0, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;->isRecoverable:Z

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;->cause:Ljava/lang/Throwable;

    return-object p0
.end method

.method public getRecoverable()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;->isRecoverable()Z

    move-result p0

    return p0
.end method

.method public isRecoverable()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;->isRecoverable:Z

    return p0
.end method
