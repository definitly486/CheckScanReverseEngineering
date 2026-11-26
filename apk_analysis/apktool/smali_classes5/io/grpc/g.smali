.class public abstract Lio/grpc/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/g$a;
    }
.end annotation


# static fields
.field public static final a:Lio/grpc/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$b<",
            "Lio/grpc/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/grpc/a$b;

    const-string v1, "internal:io.grpc.config-selector"

    invoke-direct {v0, v1}, Lio/grpc/a$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/grpc/g;->a:Lio/grpc/a$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lio/grpc/g$a;
.end method
