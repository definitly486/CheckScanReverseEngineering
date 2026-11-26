.class public final Landroidx/core/os/ProfilingRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cancellationSignal:Landroid/os/CancellationSignal;

.field private final params:Landroid/os/Bundle;

.field private final profilingType:I

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/os/Bundle;Ljava/lang/String;Landroid/os/CancellationSignal;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/core/os/ProfilingRequest;->profilingType:I

    iput-object p2, p0, Landroidx/core/os/ProfilingRequest;->params:Landroid/os/Bundle;

    iput-object p3, p0, Landroidx/core/os/ProfilingRequest;->tag:Ljava/lang/String;

    iput-object p4, p0, Landroidx/core/os/ProfilingRequest;->cancellationSignal:Landroid/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method public final getCancellationSignal()Landroid/os/CancellationSignal;
    .locals 0

    iget-object p0, p0, Landroidx/core/os/ProfilingRequest;->cancellationSignal:Landroid/os/CancellationSignal;

    return-object p0
.end method

.method public final getParams()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/core/os/ProfilingRequest;->params:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getProfilingType()I
    .locals 0

    iget p0, p0, Landroidx/core/os/ProfilingRequest;->profilingType:I

    return p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/core/os/ProfilingRequest;->tag:Ljava/lang/String;

    return-object p0
.end method
