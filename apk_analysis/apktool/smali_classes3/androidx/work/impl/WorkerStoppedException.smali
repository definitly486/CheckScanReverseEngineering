.class public final Landroidx/work/impl/WorkerStoppedException;
.super Ljava/util/concurrent/CancellationException;
.source "SourceFile"


# instance fields
.field private final reason:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/CancellationException;-><init>()V

    iput p1, p0, Landroidx/work/impl/WorkerStoppedException;->reason:I

    return-void
.end method


# virtual methods
.method public final getReason()I
    .locals 0

    iget p0, p0, Landroidx/work/impl/WorkerStoppedException;->reason:I

    return p0
.end method
