.class public final Lrv3$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/h$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrv3$b;->h(Lio/grpc/h$l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/grpc/h$l;

.field public final synthetic b:Lrv3$b;


# direct methods
.method public constructor <init>(Lrv3$b;Lio/grpc/h$l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrv3$b$a;->b:Lrv3$b;

    iput-object p2, p0, Lrv3$b$a;->a:Lio/grpc/h$l;

    return-void
.end method


# virtual methods
.method public final a(Ldx1;)V
    .locals 1

    iget-object v0, p0, Lrv3$b$a;->a:Lio/grpc/h$l;

    invoke-interface {v0, p1}, Lio/grpc/h$l;->a(Ldx1;)V

    iget-object p0, p0, Lrv3$b$a;->b:Lrv3$b;

    iget-object p0, p0, Lrv3$b;->b:Lio/grpc/h$l;

    invoke-interface {p0, p1}, Lio/grpc/h$l;->a(Ldx1;)V

    return-void
.end method
