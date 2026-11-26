.class public abstract Lio/grpc/c;
.super Ly14;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/c$b;,
        Lio/grpc/c$a;
    }
.end annotation


# static fields
.field public static final o:Lio/grpc/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/b$b<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/grpc/b$b;

    const-string v1, "io.grpc.ClientStreamTracer.NAME_RESOLUTION_DELAYED"

    invoke-direct {v0, v1}, Lio/grpc/b$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/grpc/c;->o:Lio/grpc/b$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public U()V
    .locals 0

    return-void
.end method

.method public V()V
    .locals 0

    return-void
.end method

.method public W(Lla5;)V
    .locals 0

    invoke-virtual {p0}, Lio/grpc/c;->V()V

    return-void
.end method

.method public X(Lla5;)V
    .locals 0

    return-void
.end method

.method public Y()V
    .locals 0

    return-void
.end method

.method public Z(Lio/grpc/a;Lla5;)V
    .locals 0

    return-void
.end method
