.class public final Ld86$e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld86$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lio/grpc/a;

.field public final b:Ljava/net/SocketAddress;


# direct methods
.method public constructor <init>(Lio/grpc/a;Ljava/net/SocketAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld86$e$a;->a:Lio/grpc/a;

    iput-object p2, p0, Ld86$e$a;->b:Ljava/net/SocketAddress;

    return-void
.end method
