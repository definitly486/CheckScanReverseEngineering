.class public final Lb87$a$a;
.super Lff5$a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb87$a;->a()Lff5$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb87$a;


# direct methods
.method public constructor <init>(Lb87$a;)V
    .locals 0

    iput-object p1, p0, Lb87$a$a;->b:Lb87$a;

    invoke-direct {p0, p1}, Lff5$a$a;-><init>(Lff5$a;)V

    return-void
.end method


# virtual methods
.method public final f(Lcx1;Lio/grpc/h$k;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lff5$a$a;->f(Lcx1;Lio/grpc/h$k;)V

    iget-object p0, p0, Lb87$a$a;->b:Lb87$a;

    iget-object p2, p0, Lb87$a;->f:Lb87;

    iget-boolean p2, p2, Lff5;->h:Z

    if-nez p2, :cond_0

    sget-object p2, Lcx1;->IDLE:Lcx1;

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lff5$a;->b:Lio/grpc/h;

    invoke-virtual {p0}, Lio/grpc/h;->c()V

    :cond_0
    return-void
.end method
