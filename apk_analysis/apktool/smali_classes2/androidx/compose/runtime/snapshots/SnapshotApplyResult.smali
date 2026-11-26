.class public abstract Landroidx/compose/runtime/snapshots/SnapshotApplyResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Failure;,
        Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;
    }
.end annotation


# static fields
.field public static final $stable:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotApplyResult;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract check()V
.end method

.method public abstract getSucceeded()Z
.end method
