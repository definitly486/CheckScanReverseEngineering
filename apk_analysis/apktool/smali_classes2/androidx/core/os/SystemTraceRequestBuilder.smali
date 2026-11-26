.class public final Landroidx/core/os/SystemTraceRequestBuilder;
.super Landroidx/core/os/ProfilingRequestBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/core/os/ProfilingRequestBuilder<",
        "Landroidx/core/os/SystemTraceRequestBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mParams:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/core/os/ProfilingRequestBuilder;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/os/SystemTraceRequestBuilder;->mParams:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getParams()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/core/os/SystemTraceRequestBuilder;->mParams:Landroid/os/Bundle;

    return-object p0
.end method

.method public getProfilingType()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public bridge synthetic getThis()Landroidx/core/os/ProfilingRequestBuilder;
    .locals 0

    invoke-virtual {p0}, Landroidx/core/os/SystemTraceRequestBuilder;->getThis()Landroidx/core/os/SystemTraceRequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method public getThis()Landroidx/core/os/SystemTraceRequestBuilder;
    .locals 0

    .line 5
    return-object p0
.end method

.method public final setBufferFillPolicy(Landroidx/core/os/BufferFillPolicy;)Landroidx/core/os/SystemTraceRequestBuilder;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/core/os/SystemTraceRequestBuilder;->mParams:Landroid/os/Bundle;

    const-string v1, "KEY_BUFFER_FILL_POLICY"

    invoke-virtual {p1}, Landroidx/core/os/BufferFillPolicy;->getValue$core()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public final setBufferSizeKb(I)Landroidx/core/os/SystemTraceRequestBuilder;
    .locals 2

    iget-object v0, p0, Landroidx/core/os/SystemTraceRequestBuilder;->mParams:Landroid/os/Bundle;

    const-string v1, "KEY_SIZE_KB"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public final setDurationMs(I)Landroidx/core/os/SystemTraceRequestBuilder;
    .locals 2

    iget-object v0, p0, Landroidx/core/os/SystemTraceRequestBuilder;->mParams:Landroid/os/Bundle;

    const-string v1, "KEY_DURATION_MS"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method
