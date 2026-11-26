.class public Lff5$a$a;
.super Lkj3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lff5$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lff5$a;


# direct methods
.method public constructor <init>(Lff5$a;)V
    .locals 0

    iput-object p1, p0, Lff5$a$a;->a:Lff5$a;

    invoke-direct {p0}, Lio/grpc/h$e;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lcx1;Lio/grpc/h$k;)V
    .locals 2

    iget-object p0, p0, Lff5$a$a;->a:Lff5$a;

    iget-object v0, p0, Lff5$a;->c:Lcx1;

    sget-object v1, Lcx1;->SHUTDOWN:Lcx1;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lff5$a;->c:Lcx1;

    iput-object p2, p0, Lff5$a;->d:Lio/grpc/h$k;

    iget-object p0, p0, Lff5$a;->e:Lff5;

    iget-boolean p1, p0, Lff5;->h:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lff5;->h()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final g()Lio/grpc/h$e;
    .locals 0

    iget-object p0, p0, Lff5$a$a;->a:Lff5$a;

    iget-object p0, p0, Lff5$a;->e:Lff5;

    iget-object p0, p0, Lff5;->g:Lio/grpc/h$e;

    return-object p0
.end method
