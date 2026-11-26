.class public abstract Lio/grpc/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/l$b;,
        Lio/grpc/l$e;,
        Lio/grpc/l$f;,
        Lio/grpc/l$a;,
        Lio/grpc/l$d;,
        Lio/grpc/l$c;
    }
.end annotation


# static fields
.field public static final a:Lio/grpc/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/grpc/a$b;

    const-string v1, "io.grpc.NameResolver.ATTR_BACKEND_SERVICE"

    invoke-direct {v0, v1}, Lio/grpc/a$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/grpc/l;->a:Lio/grpc/a$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract d(Lio/grpc/l$d;)V
.end method
