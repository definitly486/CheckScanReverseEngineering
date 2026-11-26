.class public final Lmz4$b;
.super Lio/grpc/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmz4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Lmz4;


# direct methods
.method public constructor <init>(Lmz4;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/g;-><init>()V

    iput-object p1, p0, Lmz4$b;->b:Lmz4;

    return-void
.end method


# virtual methods
.method public final a()Lio/grpc/g$a;
    .locals 2

    const-string v0, "config"

    iget-object p0, p0, Lmz4$b;->b:Lmz4;

    invoke-static {p0, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lio/grpc/g$a;

    sget-object v1, Lh88;->e:Lh88;

    invoke-direct {v0, v1, p0}, Lio/grpc/g$a;-><init>(Lh88;Ljava/lang/Object;)V

    return-object v0
.end method
