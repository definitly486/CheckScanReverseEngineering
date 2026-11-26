.class public Lio/grpc/StatusRuntimeException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final b:Lh88;

.field public final c:Lla5;


# direct methods
.method public constructor <init>(Lh88;Lla5;)V
    .locals 2

    invoke-static {p1}, Lh88;->c(Lh88;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lh88;->c:Ljava/lang/Throwable;

    invoke-direct {p0, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lio/grpc/StatusRuntimeException;->b:Lh88;

    iput-object p2, p0, Lio/grpc/StatusRuntimeException;->c:Lla5;

    return-void
.end method
