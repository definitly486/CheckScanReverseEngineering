.class public Lff5$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lff5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lff5$a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lio/grpc/h;

.field public c:Lcx1;

.field public d:Lio/grpc/h$k;

.field public final synthetic e:Lff5;


# direct methods
.method public constructor <init>(Lff5;Ljava/lang/Object;Lf86;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lff5$a;->e:Lff5;

    new-instance p1, Lio/grpc/h$d;

    sget-object v0, Lio/grpc/h$g;->e:Lio/grpc/h$g;

    invoke-direct {p1, v0}, Lio/grpc/h$d;-><init>(Lio/grpc/h$g;)V

    iput-object p1, p0, Lff5$a;->d:Lio/grpc/h$k;

    iput-object p2, p0, Lff5$a;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Lff5$a;->a()Lff5$a$a;

    move-result-object p1

    invoke-virtual {p3, p1}, Lf86;->a(Lio/grpc/h$e;)Lio/grpc/h;

    move-result-object p1

    iput-object p1, p0, Lff5$a;->b:Lio/grpc/h;

    sget-object p1, Lcx1;->CONNECTING:Lcx1;

    iput-object p1, p0, Lff5$a;->c:Lcx1;

    return-void
.end method


# virtual methods
.method public a()Lff5$a$a;
    .locals 1

    new-instance v0, Lff5$a$a;

    invoke-direct {v0, p0}, Lff5$a$a;-><init>(Lff5$a;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Address = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lff5$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lff5$a;->c:Lcx1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", picker type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lff5$a;->d:Lio/grpc/h$k;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lb: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lff5$a;->b:Lio/grpc/h;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
