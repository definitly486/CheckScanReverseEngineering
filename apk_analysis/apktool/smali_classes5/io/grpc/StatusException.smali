.class public Lio/grpc/StatusException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final b:Lh88;


# direct methods
.method public constructor <init>(Lh88;)V
    .locals 2

    invoke-static {p1}, Lh88;->c(Lh88;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lh88;->c:Ljava/lang/Throwable;

    invoke-direct {p0, v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lio/grpc/StatusException;->b:Lh88;

    return-void
.end method
