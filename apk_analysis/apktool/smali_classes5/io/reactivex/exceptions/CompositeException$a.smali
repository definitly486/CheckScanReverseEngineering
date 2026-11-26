.class public final Lio/reactivex/exceptions/CompositeException$a;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/exceptions/CompositeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 0

    const-string p0, "Chain of Causes for CompositeException In Order Received =>"

    return-object p0
.end method
