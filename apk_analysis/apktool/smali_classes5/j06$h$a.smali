.class public final Lj06$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/h$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj06$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lio/grpc/h$l;

.field public final synthetic b:Lj06$h;


# direct methods
.method public constructor <init>(Lj06$h;Lio/grpc/h$l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj06$h$a;->b:Lj06$h;

    iput-object p2, p0, Lj06$h$a;->a:Lio/grpc/h$l;

    return-void
.end method


# virtual methods
.method public final a(Ldx1;)V
    .locals 1

    iget-object v0, p0, Lj06$h$a;->b:Lj06$h;

    iput-object p1, v0, Lj06$h;->d:Ldx1;

    iget-boolean v0, v0, Lj06$h;->c:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lj06$h$a;->a:Lio/grpc/h$l;

    invoke-interface {p0, p1}, Lio/grpc/h$l;->a(Ldx1;)V

    :cond_0
    return-void
.end method
