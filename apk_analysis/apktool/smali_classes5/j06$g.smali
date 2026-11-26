.class public final Lj06$g;
.super Lio/grpc/h$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj06;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj06$g$a;
    }
.end annotation


# instance fields
.field public final a:Lio/grpc/h$k;


# direct methods
.method public constructor <init>(Lio/grpc/h$k;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/h$k;-><init>()V

    iput-object p1, p0, Lj06$g;->a:Lio/grpc/h$k;

    return-void
.end method


# virtual methods
.method public final a(Ll86;)Lio/grpc/h$g;
    .locals 4

    iget-object p0, p0, Lj06$g;->a:Lio/grpc/h$k;

    invoke-virtual {p0, p1}, Lio/grpc/h$k;->a(Ll86;)Lio/grpc/h$g;

    move-result-object p0

    iget-object p1, p0, Lio/grpc/h$g;->a:Lio/grpc/h$j;

    iget-object v0, p0, Lio/grpc/h$g;->b:Lio/grpc/c$a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lio/grpc/h$j;->c()Lio/grpc/a;

    move-result-object v1

    sget-object v2, Lj06;->o:Lio/grpc/a$b;

    iget-object v1, v1, Lio/grpc/a;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj06$c;

    instance-of v2, p1, Lj06$h;

    if-eqz v2, :cond_0

    check-cast p1, Lj06$h;

    iget-object p1, p1, Lj06$h;->a:Lio/grpc/h$j;

    :cond_0
    new-instance v2, Lio/grpc/h$g;

    const-string v3, "subchannel"

    invoke-static {p1, v3}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Lio/grpc/h$g;->c:Lh88;

    iget-boolean p0, p0, Lio/grpc/h$g;->d:Z

    invoke-direct {v2, p1, v0, v3, p0}, Lio/grpc/h$g;-><init>(Lio/grpc/h$j;Lio/grpc/c$a;Lh88;Z)V

    new-instance p0, Lj06$g$a;

    invoke-direct {p0, v1, v0}, Lj06$g$a;-><init>(Lj06$c;Lio/grpc/c$a;)V

    new-instance v0, Lio/grpc/h$g;

    iget-object v1, v2, Lio/grpc/h$g;->c:Lh88;

    iget-boolean v2, v2, Lio/grpc/h$g;->d:Z

    invoke-direct {v0, p1, p0, v1, v2}, Lio/grpc/h$g;-><init>(Lio/grpc/h$j;Lio/grpc/c$a;Lh88;Z)V

    return-object v0

    :cond_1
    return-object p0
.end method
