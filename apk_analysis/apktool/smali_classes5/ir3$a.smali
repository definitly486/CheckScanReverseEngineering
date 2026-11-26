.class public final Lir3$a;
.super Lio/grpc/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lir3;


# direct methods
.method public constructor <init>(Lir3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lir3$a;->f:Lir3;

    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/h$i;)Lh88;
    .locals 0

    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "real LB is called instead"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public final b(Lh88;)V
    .locals 2

    iget-object p0, p0, Lir3$a;->f:Lir3;

    iget-object p0, p0, Lir3;->g:Lio/grpc/h$e;

    sget-object v0, Lcx1;->TRANSIENT_FAILURE:Lcx1;

    new-instance v1, Lio/grpc/h$d;

    invoke-static {p1}, Lio/grpc/h$g;->a(Lh88;)Lio/grpc/h$g;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/grpc/h$d;-><init>(Lio/grpc/h$g;)V

    invoke-virtual {p0, v0, v1}, Lio/grpc/h$e;->f(Lcx1;Lio/grpc/h$k;)V

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method
