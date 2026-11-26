.class public final Lvk7;
.super Lio/grpc/i;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/h$e;)Lio/grpc/h;
    .locals 0

    new-instance p0, Lb87;

    invoke-direct {p0, p1}, Lb87;-><init>(Lio/grpc/h$e;)V

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const-string p0, "round_robin"

    return-object p0
.end method

.method public final c(Ljava/util/Map;)Lio/grpc/l$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/l$b;"
        }
    .end annotation

    new-instance p0, Lio/grpc/l$b;

    const-string p1, "no service config"

    invoke-direct {p0, p1}, Lio/grpc/l$b;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
