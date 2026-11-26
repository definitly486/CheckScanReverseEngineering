.class public final Lcom/tapjoy/internal/i0;
.super Ljava/lang/ref/ReferenceQueue;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/h0;
    .locals 0

    invoke-super {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/h0;

    return-object p0
.end method

.method public final poll()Ljava/lang/ref/Reference;
    .locals 0

    invoke-super {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/h0;

    return-object p0
.end method
