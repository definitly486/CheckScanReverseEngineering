.class public final Lj06$g$a;
.super Lio/grpc/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj06$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lj06$c;

.field public final b:Lio/grpc/c$a;


# direct methods
.method public constructor <init>(Lj06$c;Lio/grpc/c$a;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/c$a;-><init>()V

    iput-object p1, p0, Lj06$g$a;->a:Lj06$c;

    iput-object p2, p0, Lj06$g$a;->b:Lio/grpc/c$a;

    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/c$b;Lla5;)Lio/grpc/c;
    .locals 1

    iget-object v0, p0, Lj06$g$a;->b:Lio/grpc/c$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lio/grpc/c$a;->a(Lio/grpc/c$b;Lla5;)Lio/grpc/c;

    move-result-object p1

    new-instance p2, Lj06$g$a$a;

    invoke-direct {p2, p0, p1}, Lj06$g$a$a;-><init>(Lj06$g$a;Lio/grpc/c;)V

    return-object p2

    :cond_0
    new-instance p1, Lj06$g$a$b;

    invoke-direct {p1, p0}, Lj06$g$a$b;-><init>(Lj06$g$a;)V

    return-object p1
.end method
