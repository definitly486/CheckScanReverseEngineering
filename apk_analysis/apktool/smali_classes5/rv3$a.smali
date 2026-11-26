.class public final Lrv3$a;
.super Lio/grpc/h$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrv3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lio/grpc/h$k;


# direct methods
.method public constructor <init>(Lio/grpc/h$k;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/h$k;-><init>()V

    iput-object p1, p0, Lrv3$a;->a:Lio/grpc/h$k;

    return-void
.end method


# virtual methods
.method public final a(Ll86;)Lio/grpc/h$g;
    .locals 3

    iget-object p0, p0, Lrv3$a;->a:Lio/grpc/h$k;

    invoke-virtual {p0, p1}, Lio/grpc/h$k;->a(Ll86;)Lio/grpc/h$g;

    move-result-object p0

    iget-object p1, p0, Lio/grpc/h$g;->a:Lio/grpc/h$j;

    instance-of v0, p1, Lrv3$b;

    if-eqz v0, :cond_0

    check-cast p1, Lrv3$b;

    iget-object p1, p1, Lrv3$b;->a:Lio/grpc/h$j;

    new-instance v0, Lio/grpc/h$g;

    const-string v1, "subchannel"

    invoke-static {p1, v1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lio/grpc/h$g;->b:Lio/grpc/c$a;

    iget-object v2, p0, Lio/grpc/h$g;->c:Lh88;

    iget-boolean p0, p0, Lio/grpc/h$g;->d:Z

    invoke-direct {v0, p1, v1, v2, p0}, Lio/grpc/h$g;-><init>(Lio/grpc/h$j;Lio/grpc/c$a;Lh88;Z)V

    return-object v0

    :cond_0
    return-object p0
.end method
